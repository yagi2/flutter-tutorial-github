import 'package:flutter_tutorial_github/model/repository/github_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'repository_list_state.freezed.dart';

@freezed
class RepositoryListState with _$RepositoryListState {
  const factory RepositoryListState({
    @Default([]) List<GitHubRepository> repositories,
    @Default(false) bool isLoading,
  }) = _RepositoryListState;
}
