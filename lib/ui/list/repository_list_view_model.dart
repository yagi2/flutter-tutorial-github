import 'package:dio/dio.dart';
import 'package:flutter_tutorial_github/model/repository/github_repository.dart';
import 'package:flutter_tutorial_github/ui/list/repository_list_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final repositoryListViewModelProvider = StateNotifierProvider.autoDispose<
    RepositoryListViewModel,
    RepositoryListState>((_) => RepositoryListViewModel());

class RepositoryListViewModel extends StateNotifier<RepositoryListState> {
  RepositoryListViewModel() : super(const RepositoryListState());

  void _startLoading() {
    state = state.copyWith(isLoading: true);
  }

  void _stopLoading() {
    state = state.copyWith(isLoading: false);
  }

  void _addAll(List<GitHubRepository> repositories) {
    state = state.copyWith(repositories: repositories);
  }

  void _clear() {
    state = state.copyWith(repositories: []);
  }

  void searchRepositories(String searchQuery) async {
    _clear();
    _startLoading();

    final response = await Dio(BaseOptions(
      baseUrl: 'https://api.github.com',
    )).get(
      '/search/repositories',
      queryParameters: {'q': searchQuery, 'sort': "stars", 'order': "desc"},
    );

    _stopLoading();

    if (response.statusCode == 200) {
      List<GitHubRepository> list = [];
      for (var item in response.data['items']) {
        list.add(GitHubRepository.fromJson(item));
      }
      _addAll(list);
    } else {
      throw Exception('fail to search repositories.');
    }
  }
}
