import 'package:flutter_tutorial_github/model/repository_detail/repository_detail.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'repository_detail_state.freezed.dart';

@freezed
class RepositoryDetailState with _$RepositoryDetailState {
  const factory RepositoryDetailState({
    RepositoryDetail? repositoryDetail,
  }) = _RepositoryDetailState;
}
