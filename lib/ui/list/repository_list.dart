import 'package:flutter/material.dart';
import 'package:flutter_tutorial_github/model/repository/repository.dart';
import 'package:flutter_tutorial_github/ui/detail/repository_detail.dart';
import 'package:flutter_tutorial_github/ui/list/repository_list_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RepositoryList extends StatelessWidget {
  const RepositoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        _RepositorySearchInputWidget(),
        Expanded(child: _RepositoryListWithProgressWidget()),
      ],
    );
  }
}

class _RepositorySearchInputWidget extends ConsumerWidget {
  const _RepositorySearchInputWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      child: TextField(
        decoration: const InputDecoration(
          prefixIcon: Icon(Icons.search),
          hintText: "Please enter a search keyword.",
          labelText: "Search",
        ),
        onSubmitted: (input) {
          ref
              .read(repositoryListViewModelProvider.notifier)
              .searchRepositories(input);
        },
      ),
    );
  }
}

class _RepositoryListWithProgressWidget extends ConsumerWidget {
  const _RepositoryListWithProgressWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(repositoryListViewModelProvider);

    return Stack(
      children: [
        ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return _RepositoryCardWidget(
                repository: viewModel.repositories[index]);
          },
          itemCount: viewModel.repositories.length,
        ),
        viewModel.isLoading
            ? const Center(child: CircularProgressIndicator())
            : Container()
      ],
    );
  }
}

class _RepositoryCardWidget extends StatelessWidget {
  const _RepositoryCardWidget({Key? key, required this.repository})
      : super(key: key);

  final Repository repository;

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return RepositoryDetailPage(repository: repository);
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
