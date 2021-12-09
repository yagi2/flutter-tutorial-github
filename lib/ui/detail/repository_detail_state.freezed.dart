// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'repository_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RepositoryDetailStateTearOff {
  const _$RepositoryDetailStateTearOff();

  _RepositoryDetailState call({Owner? owner}) {
    return _RepositoryDetailState(
      owner: owner,
    );
  }
}

/// @nodoc
const $RepositoryDetailState = _$RepositoryDetailStateTearOff();

/// @nodoc
mixin _$RepositoryDetailState {
  Owner? get owner => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RepositoryDetailStateCopyWith<RepositoryDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositoryDetailStateCopyWith<$Res> {
  factory $RepositoryDetailStateCopyWith(RepositoryDetailState value,
          $Res Function(RepositoryDetailState) then) =
      _$RepositoryDetailStateCopyWithImpl<$Res>;
  $Res call({Owner? owner});

  $OwnerCopyWith<$Res>? get owner;
}

/// @nodoc
class _$RepositoryDetailStateCopyWithImpl<$Res>
    implements $RepositoryDetailStateCopyWith<$Res> {
  _$RepositoryDetailStateCopyWithImpl(this._value, this._then);

  final RepositoryDetailState _value;
  // ignore: unused_field
  final $Res Function(RepositoryDetailState) _then;

  @override
  $Res call({
    Object? owner = freezed,
  }) {
    return _then(_value.copyWith(
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner?,
    ));
  }

  @override
  $OwnerCopyWith<$Res>? get owner {
    if (_value.owner == null) {
      return null;
    }

    return $OwnerCopyWith<$Res>(_value.owner!, (value) {
      return _then(_value.copyWith(owner: value));
    });
  }
}

/// @nodoc
abstract class _$RepositoryDetailStateCopyWith<$Res>
    implements $RepositoryDetailStateCopyWith<$Res> {
  factory _$RepositoryDetailStateCopyWith(_RepositoryDetailState value,
          $Res Function(_RepositoryDetailState) then) =
      __$RepositoryDetailStateCopyWithImpl<$Res>;
  @override
  $Res call({Owner? owner});

  @override
  $OwnerCopyWith<$Res>? get owner;
}

/// @nodoc
class __$RepositoryDetailStateCopyWithImpl<$Res>
    extends _$RepositoryDetailStateCopyWithImpl<$Res>
    implements _$RepositoryDetailStateCopyWith<$Res> {
  __$RepositoryDetailStateCopyWithImpl(_RepositoryDetailState _value,
      $Res Function(_RepositoryDetailState) _then)
      : super(_value, (v) => _then(v as _RepositoryDetailState));

  @override
  _RepositoryDetailState get _value => super._value as _RepositoryDetailState;

  @override
  $Res call({
    Object? owner = freezed,
  }) {
    return _then(_RepositoryDetailState(
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner?,
    ));
  }
}

/// @nodoc

class _$_RepositoryDetailState implements _RepositoryDetailState {
  const _$_RepositoryDetailState({this.owner});

  @override
  final Owner? owner;

  @override
  String toString() {
    return 'RepositoryDetailState(owner: $owner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RepositoryDetailState &&
            const DeepCollectionEquality().equals(other.owner, owner));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(owner));

  @JsonKey(ignore: true)
  @override
  _$RepositoryDetailStateCopyWith<_RepositoryDetailState> get copyWith =>
      __$RepositoryDetailStateCopyWithImpl<_RepositoryDetailState>(
          this, _$identity);
}

abstract class _RepositoryDetailState implements RepositoryDetailState {
  const factory _RepositoryDetailState({Owner? owner}) =
      _$_RepositoryDetailState;

  @override
  Owner? get owner;
  @override
  @JsonKey(ignore: true)
  _$RepositoryDetailStateCopyWith<_RepositoryDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}
