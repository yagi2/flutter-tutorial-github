import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_tutorial_github/ui/webview/webview_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends ConsumerWidget {
  WebViewPage({Key? key, required this.url}) : super(key: key);

  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  final String url;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(webViewViewModelProvider);
    final viewModel = ref.read(webViewViewModelProvider.notifier);

    if (Platform.isAndroid) {
      WebView.platform = SurfaceAndroidWebView();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(state.title),
      ),
      body: Column(
        children: <Widget>[
          if (state.isLoading) const LinearProgressIndicator(),
          Expanded(
            child: WebView(
              initialUrl: url,
              javascriptMode: JavascriptMode.unrestricted,
              onWebViewCreated: _controller.complete,
              onPageStarted: (_) => viewModel.startLoading(),
              onPageFinished: (_) async {
                viewModel.stopLoading();

                final controller = await _controller.future;
                final title = await controller.getTitle();

                if (title != null) {
                  viewModel.setTitle(title);
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
