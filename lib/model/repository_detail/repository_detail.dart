import 'package:flutter_tutorial_github/model/owner/owner.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'repository_detail.freezed.dart';

part 'repository_detail.g.dart';

@freezed
class RepositoryDetail with _$RepositoryDetail {
  const factory RepositoryDetail({
    @JsonKey(name: 'name') @Default('') String name,
    @JsonKey(name: 'owner') @Default(Owner()) Owner owner,
  }) = _RepositoryDetail;

  factory RepositoryDetail.fromJson(Map<String, dynamic> json) =>
      _$RepositoryDetailFromJson(json);
}
