// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GitHubRepository _$$_GitHubRepositoryFromJson(Map<String, dynamic> json) =>
    _$_GitHubRepository(
      fullName: json['full_name'] as String? ?? "",
      name: json['name'] as String? ?? "",
      description: json['description'] as String?,
      language: json['language'] as String?,
      htmlUrl: json['html_url'] as String? ?? "",
      stargazersCount: json['stargazers_count'] as int? ?? 0,
      watchersCount: json['watchers_count'] as int? ?? 0,
      forksCount: json['forks_count'] as int? ?? 0,
    );

Map<String, dynamic> _$$_GitHubRepositoryToJson(_$_GitHubRepository instance) =>
    <String, dynamic>{
      'full_name': instance.fullName,
      'name': instance.name,
      'description': instance.description,
      'language': instance.language,
      'html_url': instance.htmlUrl,
      'stargazers_count': instance.stargazersCount,
      'watchers_count': instance.watchersCount,
      'forks_count': instance.forksCount,
    };
