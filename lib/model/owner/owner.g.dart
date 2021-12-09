// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'owner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Owner _$$_OwnerFromJson(Map<String, dynamic> json) => _$_Owner(
      ownerName: json['login'] as String? ?? "",
      avatarUrl: json['avatar_url'] as String? ?? "",
    );

Map<String, dynamic> _$$_OwnerToJson(_$_Owner instance) => <String, dynamic>{
      'login': instance.ownerName,
      'avatar_url': instance.avatarUrl,
    };
