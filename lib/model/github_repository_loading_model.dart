import 'package:flutter/material.dart';
import 'package:flutter_tutorial_github/model/github_repository.dart';

class GitHubRepositoryLoadingModel extends ChangeNotifier {
  List<GitHubRepository> _repositories = [];
  List<GitHubRepository> get repositories => _repositories;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  void startLoading() {
    _isLoading = true;
    notifyListeners();
  }

  void stopLoading() {
    _isLoading = false;
    notifyListeners();
  }

  void add(GitHubRepository repository) {
    _repositories.add(repository);
    notifyListeners();
  }

  void addAll(List<GitHubRepository> repositories) {
    _repositories.addAll(repositories);
    notifyListeners();
  }

  void clear() {
    _repositories.clear();
    notifyListeners();
  }
}
