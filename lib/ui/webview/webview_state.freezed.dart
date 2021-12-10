// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'webview_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WebViewStateTearOff {
  const _$WebViewStateTearOff();

  _WebViewState call({bool isLoading = false, String title = ''}) {
    return _WebViewState(
      isLoading: isLoading,
      title: title,
    );
  }
}

/// @nodoc
const $WebViewState = _$WebViewStateTearOff();

/// @nodoc
mixin _$WebViewState {
  bool get isLoading => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WebViewStateCopyWith<WebViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebViewStateCopyWith<$Res> {
  factory $WebViewStateCopyWith(
          WebViewState value, $Res Function(WebViewState) then) =
      _$WebViewStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, String title});
}

/// @nodoc
class _$WebViewStateCopyWithImpl<$Res> implements $WebViewStateCopyWith<$Res> {
  _$WebViewStateCopyWithImpl(this._value, this._then);

  final WebViewState _value;
  // ignore: unused_field
  final $Res Function(WebViewState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$WebViewStateCopyWith<$Res>
    implements $WebViewStateCopyWith<$Res> {
  factory _$WebViewStateCopyWith(
          _WebViewState value, $Res Function(_WebViewState) then) =
      __$WebViewStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, String title});
}

/// @nodoc
class __$WebViewStateCopyWithImpl<$Res> extends _$WebViewStateCopyWithImpl<$Res>
    implements _$WebViewStateCopyWith<$Res> {
  __$WebViewStateCopyWithImpl(
      _WebViewState _value, $Res Function(_WebViewState) _then)
      : super(_value, (v) => _then(v as _WebViewState));

  @override
  _WebViewState get _value => super._value as _WebViewState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? title = freezed,
  }) {
    return _then(_WebViewState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WebViewState implements _WebViewState {
  const _$_WebViewState({this.isLoading = false, this.title = ''});

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: '')
  @override
  final String title;

  @override
  String toString() {
    return 'WebViewState(isLoading: $isLoading, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WebViewState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  _$WebViewStateCopyWith<_WebViewState> get copyWith =>
      __$WebViewStateCopyWithImpl<_WebViewState>(this, _$identity);
}

abstract class _WebViewState implements WebViewState {
  const factory _WebViewState({bool isLoading, String title}) = _$_WebViewState;

  @override
  bool get isLoading;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$WebViewStateCopyWith<_WebViewState> get copyWith =>
      throw _privateConstructorUsedError;
}
