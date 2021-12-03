import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'github_repository_detail_page.dart';
import 'model/github_repository.dart';
import 'model/github_repository_loading_model.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: _HomePage(title: "GitHub Repository search"),
    );
  }
}

class _HomePage extends StatelessWidget {
  const _HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(title)),
        body: Column(
          children: const <Widget>[
            _GitHubRepositorySearchInputWidget(),
            Expanded(child: _GitHubRepositoryListWithProgressWidget()),
          ],
        ));
  }
}

class _GitHubRepositorySearchInputWidget extends ConsumerWidget {
  const _GitHubRepositorySearchInputWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gitHubRepositoryLoadingModelNotifier =
        ref.watch(gitHubRepositoryLoadingModelNotifierProvider.notifier);

    return Container(
      margin: const EdgeInsets.all(16.0),
      child: TextField(
        decoration: const InputDecoration(
          prefixIcon: Icon(Icons.search),
          hintText: "Please enter a search keyword.",
          labelText: "Search",
        ),
        onSubmitted: (input) {
          gitHubRepositoryLoadingModelNotifier.searchRepositories(input);
        },
      ),
    );
  }
}

class _GitHubRepositoryListWithProgressWidget extends ConsumerWidget {
  const _GitHubRepositoryListWithProgressWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gitHubRepositoryLoadingModel =
        ref.watch(gitHubRepositoryLoadingModelNotifierProvider);

    return Stack(
      children: [
        ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return _GitHubRepositoryCardWidget(
                repository: gitHubRepositoryLoadingModel.repositories[index]);
          },
          itemCount: gitHubRepositoryLoadingModel.repositories.length,
        ),
        gitHubRepositoryLoadingModel.isLoading
            ? const Center(child: CircularProgressIndicator())
            : Container()
      ],
    );
  }
}

class _GitHubRepositoryCardWidget extends StatelessWidget {
  const _GitHubRepositoryCardWidget({Key? key, required this.repository})
      : super(key: key);

  final GitHubRepository repository;

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return GitHubRepositoryDetailPage(repository: repository);
            }));
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  repository.fullName,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16.0),
                ),
              ),
              repository.language != null
                  ? Padding(
                      padding: const EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 12.0),
                      child: Text(
                        repository.language!,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12.0),
                      ),
                    )
                  : Container(),
              repository.description != null
                  ? Padding(
                      padding: const EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 12.0),
                      child: Text(repository.description!,
                          style: const TextStyle(
                              fontWeight: FontWeight.w200, color: Colors.grey)),
                    )
                  : Container(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  const Icon(Icons.star),
                  const SizedBox(width: 4.0),
                  SizedBox(
                    width: 64.0,
                    child: Text(repository.stargazersCount.toString()),
                  ),
                  const Icon(Icons.remove_red_eye),
                  const SizedBox(width: 4.0),
                  SizedBox(
                    width: 64.0,
                    child: Text(repository.watchersCount.toString()),
                  ),
                  const Text("Fork: "),
                  SizedBox(
                    width: 64.0,
                    child: Text(repository.forksCount.toString()),
                  ),
                ],
              ),
              const SizedBox(
                height: 16.0,
              )
            ],
          ),
        ));
  }
}
