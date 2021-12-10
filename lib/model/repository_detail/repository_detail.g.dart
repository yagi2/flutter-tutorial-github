// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RepositoryDetail _$$_RepositoryDetailFromJson(Map<String, dynamic> json) =>
    _$_RepositoryDetail(
      name: json['name'] as String? ?? '',
      owner: json['owner'] == null
          ? const Owner()
          : Owner.fromJson(json['owner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RepositoryDetailToJson(_$_RepositoryDetail instance) =>
    <String, dynamic>{
      'name': instance.name,
      'owner': instance.owner,
    };
