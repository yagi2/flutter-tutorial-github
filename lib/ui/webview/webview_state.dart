import 'package:freezed_annotation/freezed_annotation.dart';

part 'webview_state.freezed.dart';

@freezed
class WebViewState with _$WebViewState {
  const factory WebViewState({
    @Default(false) bool isLoading,
    @Default('') String title,
  }) = _WebViewState;
}
