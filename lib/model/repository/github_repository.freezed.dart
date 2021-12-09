// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'github_repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GitHubRepository _$GitHubRepositoryFromJson(Map<String, dynamic> json) {
  return _GitHubRepository.fromJson(json);
}

/// @nodoc
class _$GitHubRepositoryTearOff {
  const _$GitHubRepositoryTearOff();

  _GitHubRepository call(
      {@JsonKey(name: 'full_name') String fullName = "",
      @JsonKey(name: 'name') String name = "",
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'language') String? language,
      @JsonKey(name: 'html_url') String htmlUrl = "",
      @JsonKey(name: 'stargazers_count') int stargazersCount = 0,
      @JsonKey(name: 'watchers_count') int watchersCount = 0,
      @JsonKey(name: 'forks_count') int forksCount = 0}) {
    return _GitHubRepository(
      fullName: fullName,
      name: name,
      description: description,
      language: language,
      htmlUrl: htmlUrl,
      stargazersCount: stargazersCount,
      watchersCount: watchersCount,
      forksCount: forksCount,
    );
  }

  GitHubRepository fromJson(Map<String, Object?> json) {
    return GitHubRepository.fromJson(json);
  }
}

/// @nodoc
const $GitHubRepository = _$GitHubRepositoryTearOff();

/// @nodoc
mixin _$GitHubRepository {
  @JsonKey(name: 'full_name')
  String get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'language')
  String? get language => throw _privateConstructorUsedError;
  @JsonKey(name: 'html_url')
  String get htmlUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'stargazers_count')
  int get stargazersCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'watchers_count')
  int get watchersCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'forks_count')
  int get forksCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GitHubRepositoryCopyWith<GitHubRepository> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GitHubRepositoryCopyWith<$Res> {
  factory $GitHubRepositoryCopyWith(
          GitHubRepository value, $Res Function(GitHubRepository) then) =
      _$GitHubRepositoryCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'full_name') String fullName,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'language') String? language,
      @JsonKey(name: 'html_url') String htmlUrl,
      @JsonKey(name: 'stargazers_count') int stargazersCount,
      @JsonKey(name: 'watchers_count') int watchersCount,
      @JsonKey(name: 'forks_count') int forksCount});
}

/// @nodoc
class _$GitHubRepositoryCopyWithImpl<$Res>
    implements $GitHubRepositoryCopyWith<$Res> {
  _$GitHubRepositoryCopyWithImpl(this._value, this._then);

  final GitHubRepository _value;
  // ignore: unused_field
  final $Res Function(GitHubRepository) _then;

  @override
  $Res call({
    Object? fullName = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? language = freezed,
    Object? htmlUrl = freezed,
    Object? stargazersCount = freezed,
    Object? watchersCount = freezed,
    Object? forksCount = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      htmlUrl: htmlUrl == freezed
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String,
      stargazersCount: stargazersCount == freezed
          ? _value.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as int,
      watchersCount: watchersCount == freezed
          ? _value.watchersCount
          : watchersCount // ignore: cast_nullable_to_non_nullable
              as int,
      forksCount: forksCount == freezed
          ? _value.forksCount
          : forksCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$GitHubRepositoryCopyWith<$Res>
    implements $GitHubRepositoryCopyWith<$Res> {
  factory _$GitHubRepositoryCopyWith(
          _GitHubRepository value, $Res Function(_GitHubRepository) then) =
      __$GitHubRepositoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'full_name') String fullName,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'language') String? language,
      @JsonKey(name: 'html_url') String htmlUrl,
      @JsonKey(name: 'stargazers_count') int stargazersCount,
      @JsonKey(name: 'watchers_count') int watchersCount,
      @JsonKey(name: 'forks_count') int forksCount});
}

/// @nodoc
class __$GitHubRepositoryCopyWithImpl<$Res>
    extends _$GitHubRepositoryCopyWithImpl<$Res>
    implements _$GitHubRepositoryCopyWith<$Res> {
  __$GitHubRepositoryCopyWithImpl(
      _GitHubRepository _value, $Res Function(_GitHubRepository) _then)
      : super(_value, (v) => _then(v as _GitHubRepository));

  @override
  _GitHubRepository get _value => super._value as _GitHubRepository;

  @override
  $Res call({
    Object? fullName = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? language = freezed,
    Object? htmlUrl = freezed,
    Object? stargazersCount = freezed,
    Object? watchersCount = freezed,
    Object? forksCount = freezed,
  }) {
    return _then(_GitHubRepository(
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      htmlUrl: htmlUrl == freezed
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String,
      stargazersCount: stargazersCount == freezed
          ? _value.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as int,
      watchersCount: watchersCount == freezed
          ? _value.watchersCount
          : watchersCount // ignore: cast_nullable_to_non_nullable
              as int,
      forksCount: forksCount == freezed
          ? _value.forksCount
          : forksCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GitHubRepository implements _GitHubRepository {
  const _$_GitHubRepository(
      {@JsonKey(name: 'full_name') this.fullName = "",
      @JsonKey(name: 'name') this.name = "",
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'language') this.language,
      @JsonKey(name: 'html_url') this.htmlUrl = "",
      @JsonKey(name: 'stargazers_count') this.stargazersCount = 0,
      @JsonKey(name: 'watchers_count') this.watchersCount = 0,
      @JsonKey(name: 'forks_count') this.forksCount = 0});

  factory _$_GitHubRepository.fromJson(Map<String, dynamic> json) =>
      _$$_GitHubRepositoryFromJson(json);

  @override
  @JsonKey(name: 'full_name')
  final String fullName;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'language')
  final String? language;
  @override
  @JsonKey(name: 'html_url')
  final String htmlUrl;
  @override
  @JsonKey(name: 'stargazers_count')
  final int stargazersCount;
  @override
  @JsonKey(name: 'watchers_count')
  final int watchersCount;
  @override
  @JsonKey(name: 'forks_count')
  final int forksCount;

  @override
  String toString() {
    return 'GitHubRepository(fullName: $fullName, name: $name, description: $description, language: $language, htmlUrl: $htmlUrl, stargazersCount: $stargazersCount, watchersCount: $watchersCount, forksCount: $forksCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GitHubRepository &&
            const DeepCollectionEquality().equals(other.fullName, fullName) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.language, language) &&
            const DeepCollectionEquality().equals(other.htmlUrl, htmlUrl) &&
            const DeepCollectionEquality()
                .equals(other.stargazersCount, stargazersCount) &&
            const DeepCollectionEquality()
                .equals(other.watchersCount, watchersCount) &&
            const DeepCollectionEquality()
                .equals(other.forksCount, forksCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(fullName),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(language),
      const DeepCollectionEquality().hash(htmlUrl),
      const DeepCollectionEquality().hash(stargazersCount),
      const DeepCollectionEquality().hash(watchersCount),
      const DeepCollectionEquality().hash(forksCount));

  @JsonKey(ignore: true)
  @override
  _$GitHubRepositoryCopyWith<_GitHubRepository> get copyWith =>
      __$GitHubRepositoryCopyWithImpl<_GitHubRepository>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GitHubRepositoryToJson(this);
  }
}

abstract class _GitHubRepository implements GitHubRepository {
  const factory _GitHubRepository(
      {@JsonKey(name: 'full_name') String fullName,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'language') String? language,
      @JsonKey(name: 'html_url') String htmlUrl,
      @JsonKey(name: 'stargazers_count') int stargazersCount,
      @JsonKey(name: 'watchers_count') int watchersCount,
      @JsonKey(name: 'forks_count') int forksCount}) = _$_GitHubRepository;

  factory _GitHubRepository.fromJson(Map<String, dynamic> json) =
      _$_GitHubRepository.fromJson;

  @override
  @JsonKey(name: 'full_name')
  String get fullName;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'language')
  String? get language;
  @override
  @JsonKey(name: 'html_url')
  String get htmlUrl;
  @override
  @JsonKey(name: 'stargazers_count')
  int get stargazersCount;
  @override
  @JsonKey(name: 'watchers_count')
  int get watchersCount;
  @override
  @JsonKey(name: 'forks_count')
  int get forksCount;
  @override
  @JsonKey(ignore: true)
  _$GitHubRepositoryCopyWith<_GitHubRepository> get copyWith =>
      throw _privateConstructorUsedError;
}
