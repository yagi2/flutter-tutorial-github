import 'package:flutter_tutorial_github/model/repository_detail/owner/owner.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'repository_detail.freezed.dart';

part 'repository_detail.g.dart';

@freezed
class RepositoryDetail with _$RepositoryDetail {
  const factory RepositoryDetail({
    @JsonKey(name: 'name') @Default('') String name,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'language') String? lang,
    @JsonKey(name: 'stargazers_count') @Default(0) int stars,
    @JsonKey(name: 'watchers_count') @Default(0) int watchers,
    @JsonKey(name: 'forks_count') @Default(0) int forks,
    @JsonKey(name: 'html_url') @Default('') String htmlUrl,
    @JsonKey(name: 'owner') @Default(Owner()) Owner owner,
  }) = _RepositoryDetail;

  factory RepositoryDetail.fromJson(Map<String, dynamic> json) =>
      _$RepositoryDetailFromJson(json);
}
