// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'repository_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RepositoryListStateTearOff {
  const _$RepositoryListStateTearOff();

  _RepositoryListState call(
      {List<GitHubRepository> repositories = const [],
      bool isLoading = false}) {
    return _RepositoryListState(
      repositories: repositories,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
const $RepositoryListState = _$RepositoryListStateTearOff();

/// @nodoc
mixin _$RepositoryListState {
  List<GitHubRepository> get repositories => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RepositoryListStateCopyWith<RepositoryListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositoryListStateCopyWith<$Res> {
  factory $RepositoryListStateCopyWith(
          RepositoryListState value, $Res Function(RepositoryListState) then) =
      _$RepositoryListStateCopyWithImpl<$Res>;
  $Res call({List<GitHubRepository> repositories, bool isLoading});
}

/// @nodoc
class _$RepositoryListStateCopyWithImpl<$Res>
    implements $RepositoryListStateCopyWith<$Res> {
  _$RepositoryListStateCopyWithImpl(this._value, this._then);

  final RepositoryListState _value;
  // ignore: unused_field
  final $Res Function(RepositoryListState) _then;

  @override
  $Res call({
    Object? repositories = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      repositories: repositories == freezed
          ? _value.repositories
          : repositories // ignore: cast_nullable_to_non_nullable
              as List<GitHubRepository>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$RepositoryListStateCopyWith<$Res>
    implements $RepositoryListStateCopyWith<$Res> {
  factory _$RepositoryListStateCopyWith(_RepositoryListState value,
          $Res Function(_RepositoryListState) then) =
      __$RepositoryListStateCopyWithImpl<$Res>;
  @override
  $Res call({List<GitHubRepository> repositories, bool isLoading});
}

/// @nodoc
class __$RepositoryListStateCopyWithImpl<$Res>
    extends _$RepositoryListStateCopyWithImpl<$Res>
    implements _$RepositoryListStateCopyWith<$Res> {
  __$RepositoryListStateCopyWithImpl(
      _RepositoryListState _value, $Res Function(_RepositoryListState) _then)
      : super(_value, (v) => _then(v as _RepositoryListState));

  @override
  _RepositoryListState get _value => super._value as _RepositoryListState;

  @override
  $Res call({
    Object? repositories = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_RepositoryListState(
      repositories: repositories == freezed
          ? _value.repositories
          : repositories // ignore: cast_nullable_to_non_nullable
              as List<GitHubRepository>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_RepositoryListState implements _RepositoryListState {
  const _$_RepositoryListState(
      {this.repositories = const [], this.isLoading = false});

  @JsonKey(defaultValue: const [])
  @override
  final List<GitHubRepository> repositories;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'RepositoryListState(repositories: $repositories, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RepositoryListState &&
            const DeepCollectionEquality()
                .equals(other.repositories, repositories) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(repositories),
      const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  _$RepositoryListStateCopyWith<_RepositoryListState> get copyWith =>
      __$RepositoryListStateCopyWithImpl<_RepositoryListState>(
          this, _$identity);
}

abstract class _RepositoryListState implements RepositoryListState {
  const factory _RepositoryListState(
      {List<GitHubRepository> repositories,
      bool isLoading}) = _$_RepositoryListState;

  @override
  List<GitHubRepository> get repositories;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$RepositoryListStateCopyWith<_RepositoryListState> get copyWith =>
      throw _privateConstructorUsedError;
}
