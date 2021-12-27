import 'package:dio/dio.dart';
import 'package:flutter_tutorial_github/model/repository/repository.dart';
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

  void _addAll(List<Repository> repositories) {
    state = state.copyWith(repositories: state.repositories + repositories);
  }

  void _clear() {
    state = state.copyWith(repositories: []);
  }

  void _initialState(String searchQuery) {
    state = state.copyWith(
        searchQuery: searchQuery, page: 1, isCompleteLoading: false);
  }

  Future<void> initialLoadRepositories(String searchQuery) async {
    _clear();
    _startLoading();
    _initialState(searchQuery);

    final response = await Dio(BaseOptions(
      baseUrl: 'https://api.github.com',
    )).get(
      '/search/repositories',
      queryParameters: {
        'q': searchQuery,
        'sort': "stars",
        'order': "desc",
        "page": state.page.toString(),
      },
    );

    _stopLoading();

    if (response.statusCode == 200) {
      List<Repository> list = [];
      for (var item in response.data['items']) {
        list.add(Repository.fromJson(item));
      }
      _addAll(list);
    } else {
      throw Exception('fail to search repositories.');
    }
  }

  Future<void> pagingLoadRepositories() async {
    if (state.isLoading || state.isCompleteLoading) return;
    _startLoading();

    state = state.copyWith(page: state.page + 1);

    final response = await Dio(BaseOptions(
      baseUrl: 'https://api.github.com',
    )).get(
      '/search/repositories',
      queryParameters: {
        'q': state.searchQuery,
        'sort': "stars",
        'order': "desc",
        "page": state.page.toString(),
      },
    );

    _stopLoading();

    if (response.statusCode == 200) {
      List<Repository> list = [];
      for (var item in response.data['items']) {
        list.add(Repository.fromJson(item));
      }
      if (list.isEmpty) {
        state = state.copyWith(isCompleteLoading: true);
      } else {
        _addAll(list);
      }
    } else {
      throw Exception('fail to search repositories.');
    }
  }
}
