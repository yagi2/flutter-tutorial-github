import 'package:freezed_annotation/freezed_annotation.dart';

part 'github_repository.freezed.dart';
part 'github_repository.g.dart';

@freezed
class GitHubRepository with _$GitHubRepository {
  const factory GitHubRepository({
    @JsonKey(name: 'full_name') @Default("") String fullName,
    @JsonKey(name: 'name') @Default("") String name,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'language') String? language,
    @JsonKey(name: 'html_url') @Default("") String htmlUrl,
    @JsonKey(name: 'stargazers_count') @Default(0) int stargazersCount,
    @JsonKey(name: 'watchers_count') @Default(0) int watchersCount,
    @JsonKey(name: 'forks_count') @Default(0) int forksCount,
  }) = _GitHubRepository;

  factory GitHubRepository.fromJson(Map<String, dynamic> json) =>
      _$GitHubRepositoryFromJson(json);
}
