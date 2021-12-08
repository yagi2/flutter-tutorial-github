import 'dart:convert' show json;

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial_github/model/github_repository.dart';
import 'package:flutter_tutorial_github/ui/list/repository_list_state.dart';
import 'package:http/http.dart' as http;

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

    final response = await http.get(Uri.parse(
        'https://api.github.com/search/repositories?q=' +
            searchQuery +
            "&sort=stars&order=desc"));

    _stopLoading();

    if (response.statusCode == 200) {
      List<GitHubRepository> list = [];
      Map<String, dynamic> decoded = json.decode(response.body);
      for (var item in decoded['items']) {
        list.add(GitHubRepository.fromJson(item));
      }
      _addAll(list);
    } else {
      throw Exception('fail to search repositories.');
    }
  }
}
