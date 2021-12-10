// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'repository_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RepositoryDetail _$RepositoryDetailFromJson(Map<String, dynamic> json) {
  return _RepositoryDetail.fromJson(json);
}

/// @nodoc
class _$RepositoryDetailTearOff {
  const _$RepositoryDetailTearOff();

  _RepositoryDetail call(
      {@JsonKey(name: 'name') String name = '',
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'language') String? lang,
      @JsonKey(name: 'stargazers_count') int stars = 0,
      @JsonKey(name: 'watchers_count') int watchers = 0,
      @JsonKey(name: 'forks_count') int forks = 0,
      @JsonKey(name: 'html_url') String htmlUrl = '',
      @JsonKey(name: 'owner') Owner owner = const Owner()}) {
    return _RepositoryDetail(
      name: name,
      description: description,
      lang: lang,
      stars: stars,
      watchers: watchers,
      forks: forks,
      htmlUrl: htmlUrl,
      owner: owner,
    );
  }

  RepositoryDetail fromJson(Map<String, Object?> json) {
    return RepositoryDetail.fromJson(json);
  }
}

/// @nodoc
const $RepositoryDetail = _$RepositoryDetailTearOff();

/// @nodoc
mixin _$RepositoryDetail {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'language')
  String? get lang => throw _privateConstructorUsedError;
  @JsonKey(name: 'stargazers_count')
  int get stars => throw _privateConstructorUsedError;
  @JsonKey(name: 'watchers_count')
  int get watchers => throw _privateConstructorUsedError;
  @JsonKey(name: 'forks_count')
  int get forks => throw _privateConstructorUsedError;
  @JsonKey(name: 'html_url')
  String get htmlUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'owner')
  Owner get owner => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepositoryDetailCopyWith<RepositoryDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositoryDetailCopyWith<$Res> {
  factory $RepositoryDetailCopyWith(
          RepositoryDetail value, $Res Function(RepositoryDetail) then) =
      _$RepositoryDetailCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'language') String? lang,
      @JsonKey(name: 'stargazers_count') int stars,
      @JsonKey(name: 'watchers_count') int watchers,
      @JsonKey(name: 'forks_count') int forks,
      @JsonKey(name: 'html_url') String htmlUrl,
      @JsonKey(name: 'owner') Owner owner});

  $OwnerCopyWith<$Res> get owner;
}

/// @nodoc
class _$RepositoryDetailCopyWithImpl<$Res>
    implements $RepositoryDetailCopyWith<$Res> {
  _$RepositoryDetailCopyWithImpl(this._value, this._then);

  final RepositoryDetail _value;
  // ignore: unused_field
  final $Res Function(RepositoryDetail) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? lang = freezed,
    Object? stars = freezed,
    Object? watchers = freezed,
    Object? forks = freezed,
    Object? htmlUrl = freezed,
    Object? owner = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      lang: lang == freezed
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String?,
      stars: stars == freezed
          ? _value.stars
          : stars // ignore: cast_nullable_to_non_nullable
              as int,
      watchers: watchers == freezed
          ? _value.watchers
          : watchers // ignore: cast_nullable_to_non_nullable
              as int,
      forks: forks == freezed
          ? _value.forks
          : forks // ignore: cast_nullable_to_non_nullable
              as int,
      htmlUrl: htmlUrl == freezed
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner,
    ));
  }

  @override
  $OwnerCopyWith<$Res> get owner {
    return $OwnerCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value));
    });
  }
}

/// @nodoc
abstract class _$RepositoryDetailCopyWith<$Res>
    implements $RepositoryDetailCopyWith<$Res> {
  factory _$RepositoryDetailCopyWith(
          _RepositoryDetail value, $Res Function(_RepositoryDetail) then) =
      __$RepositoryDetailCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'language') String? lang,
      @JsonKey(name: 'stargazers_count') int stars,
      @JsonKey(name: 'watchers_count') int watchers,
      @JsonKey(name: 'forks_count') int forks,
      @JsonKey(name: 'html_url') String htmlUrl,
      @JsonKey(name: 'owner') Owner owner});

  @override
  $OwnerCopyWith<$Res> get owner;
}

/// @nodoc
class __$RepositoryDetailCopyWithImpl<$Res>
    extends _$RepositoryDetailCopyWithImpl<$Res>
    implements _$RepositoryDetailCopyWith<$Res> {
  __$RepositoryDetailCopyWithImpl(
      _RepositoryDetail _value, $Res Function(_RepositoryDetail) _then)
      : super(_value, (v) => _then(v as _RepositoryDetail));

  @override
  _RepositoryDetail get _value => super._value as _RepositoryDetail;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? lang = freezed,
    Object? stars = freezed,
    Object? watchers = freezed,
    Object? forks = freezed,
    Object? htmlUrl = freezed,
    Object? owner = freezed,
  }) {
    return _then(_RepositoryDetail(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      lang: lang == freezed
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String?,
      stars: stars == freezed
          ? _value.stars
          : stars // ignore: cast_nullable_to_non_nullable
              as int,
      watchers: watchers == freezed
          ? _value.watchers
          : watchers // ignore: cast_nullable_to_non_nullable
              as int,
      forks: forks == freezed
          ? _value.forks
          : forks // ignore: cast_nullable_to_non_nullable
              as int,
      htmlUrl: htmlUrl == freezed
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RepositoryDetail implements _RepositoryDetail {
  const _$_RepositoryDetail(
      {@JsonKey(name: 'name') this.name = '',
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'language') this.lang,
      @JsonKey(name: 'stargazers_count') this.stars = 0,
      @JsonKey(name: 'watchers_count') this.watchers = 0,
      @JsonKey(name: 'forks_count') this.forks = 0,
      @JsonKey(name: 'html_url') this.htmlUrl = '',
      @JsonKey(name: 'owner') this.owner = const Owner()});

  factory _$_RepositoryDetail.fromJson(Map<String, dynamic> json) =>
      _$$_RepositoryDetailFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'language')
  final String? lang;
  @override
  @JsonKey(name: 'stargazers_count')
  final int stars;
  @override
  @JsonKey(name: 'watchers_count')
  final int watchers;
  @override
  @JsonKey(name: 'forks_count')
  final int forks;
  @override
  @JsonKey(name: 'html_url')
  final String htmlUrl;
  @override
  @JsonKey(name: 'owner')
  final Owner owner;

  @override
  String toString() {
    return 'RepositoryDetail(name: $name, description: $description, lang: $lang, stars: $stars, watchers: $watchers, forks: $forks, htmlUrl: $htmlUrl, owner: $owner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RepositoryDetail &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.lang, lang) &&
            const DeepCollectionEquality().equals(other.stars, stars) &&
            const DeepCollectionEquality().equals(other.watchers, watchers) &&
            const DeepCollectionEquality().equals(other.forks, forks) &&
            const DeepCollectionEquality().equals(other.htmlUrl, htmlUrl) &&
            const DeepCollectionEquality().equals(other.owner, owner));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(lang),
      const DeepCollectionEquality().hash(stars),
      const DeepCollectionEquality().hash(watchers),
      const DeepCollectionEquality().hash(forks),
      const DeepCollectionEquality().hash(htmlUrl),
      const DeepCollectionEquality().hash(owner));

  @JsonKey(ignore: true)
  @override
  _$RepositoryDetailCopyWith<_RepositoryDetail> get copyWith =>
      __$RepositoryDetailCopyWithImpl<_RepositoryDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RepositoryDetailToJson(this);
  }
}

abstract class _RepositoryDetail implements RepositoryDetail {
  const factory _RepositoryDetail(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'language') String? lang,
      @JsonKey(name: 'stargazers_count') int stars,
      @JsonKey(name: 'watchers_count') int watchers,
      @JsonKey(name: 'forks_count') int forks,
      @JsonKey(name: 'html_url') String htmlUrl,
      @JsonKey(name: 'owner') Owner owner}) = _$_RepositoryDetail;

  factory _RepositoryDetail.fromJson(Map<String, dynamic> json) =
      _$_RepositoryDetail.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'language')
  String? get lang;
  @override
  @JsonKey(name: 'stargazers_count')
  int get stars;
  @override
  @JsonKey(name: 'watchers_count')
  int get watchers;
  @override
  @JsonKey(name: 'forks_count')
  int get forks;
  @override
  @JsonKey(name: 'html_url')
  String get htmlUrl;
  @override
  @JsonKey(name: 'owner')
  Owner get owner;
  @override
  @JsonKey(ignore: true)
  _$RepositoryDetailCopyWith<_RepositoryDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
