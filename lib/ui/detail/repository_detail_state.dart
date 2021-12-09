import 'package:flutter_tutorial_github/model/owner/owner.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'repository_detail_state.freezed.dart';

@freezed
class RepositoryDetailState with _$RepositoryDetailState {
  const factory RepositoryDetailState({
    Owner? owner,
  }) = _RepositoryDetailState;
}
