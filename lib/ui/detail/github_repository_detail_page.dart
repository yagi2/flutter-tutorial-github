import 'package:flutter/material.dart';
import 'package:flutter_tutorial_github/model/github_repository.dart';

class GitHubRepositoryDetailPage extends StatelessWidget {
  const GitHubRepositoryDetailPage({Key? key, required this.repository})
      : super(key: key);
  final GitHubRepository repository;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(repository.name)),
        body: const Center(child: CircularProgressIndicator()));
  }
}
