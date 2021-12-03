import 'dart:convert' show json;

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorial_github/model/github_repository.dart';
import 'package:http/http.dart' as http;

class GitHubRepositoryLoadingModel {
  GitHubRepositoryLoadingModel(this.repositories, this.isLoading);

  List<GitHubRepository> repositories = [];
  bool isLoading = false;
}

final gitHubRepositoryLoadingModelNotifierProvider = StateNotifierProvider<
    GitHubRepositoryLoadingModelStateNotifier, GitHubRepositoryLoadingModel>(
  (_) => GitHubRepositoryLoadingModelStateNotifier(),
);

class GitHubRepositoryLoadingModelStateNotifier
    extends StateNotifier<GitHubRepositoryLoadingModel> {
  GitHubRepositoryLoadingModelStateNotifier()
      : super(GitHubRepositoryLoadingModel([], false));

  void _startLoading() {
    state = GitHubRepositoryLoadingModel(state.repositories, true);
  }

  void _stopLoading() {
    state = GitHubRepositoryLoadingModel(state.repositories, false);
  }

  void _addAll(List<GitHubRepository> repositories) {
    state = GitHubRepositoryLoadingModel(repositories, state.isLoading);
  }

  void _clear() {
    state = GitHubRepositoryLoadingModel([], state.isLoading);
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
