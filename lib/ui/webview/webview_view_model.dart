import 'package:flutter_tutorial_github/ui/webview/webview_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final webViewViewModelProvider =
    StateNotifierProvider.autoDispose<WebViewViewModel, WebViewState>(
        (_) => WebViewViewModel());

class WebViewViewModel extends StateNotifier<WebViewState> {
  WebViewViewModel() : super(const WebViewState());

  void startLoading() {
    state = state.copyWith(isLoading: true);
  }

  void stopLoading() {
    state = state.copyWith(isLoading: false);
  }

  void setTitle(String title) {
    state = state.copyWith(title: title);
  }
}
