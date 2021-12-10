// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RepositoryDetail _$$_RepositoryDetailFromJson(Map<String, dynamic> json) =>
    _$_RepositoryDetail(
      name: json['name'] as String? ?? '',
      description: json['description'] as String?,
      lang: json['language'] as String?,
      stars: json['stargazers_count'] as int? ?? 0,
      watchers: json['watchers_count'] as int? ?? 0,
      forks: json['forks_count'] as int? ?? 0,
      htmlUrl: json['html_url'] as String? ?? '',
      owner: json['owner'] == null
          ? const Owner()
          : Owner.fromJson(json['owner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RepositoryDetailToJson(_$_RepositoryDetail instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'language': instance.lang,
      'stargazers_count': instance.stars,
      'watchers_count': instance.watchers,
      'forks_count': instance.forks,
      'html_url': instance.htmlUrl,
      'owner': instance.owner,
    };
