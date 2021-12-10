import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_tutorial_github/model/repository/repository.dart';
import 'package:flutter_tutorial_github/model/repository_detail/repository_detail.dart';
import 'package:flutter_tutorial_github/ui/detail/repository_detail_view_model.dart';
import 'package:flutter_tutorial_github/ui/webview/webview.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RepositoryDetailPage extends HookConsumerWidget {
  const RepositoryDetailPage({Key? key, required this.repository})
      : super(key: key);
  final Repository repository;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.read(repositoryDetailViewModelProvider.notifier);
    final repositoryDetailState = ref.watch(repositoryDetailViewModelProvider);

    useFuture(
      useMemoized(() => viewModel.loadRepositoryData(repository.fullName)),
    );

    return Scaffold(
      appBar: AppBar(title: Text(repository.fullName)),
      body: repositoryDetailState.repositoryDetail == null
          ? const Center(child: CircularProgressIndicator())
          : RepositoryDetailContainer(
              repositoryDetail: repositoryDetailState.repositoryDetail!,
            ),
    );
  }
}

class RepositoryDetailContainer extends StatelessWidget {
  const RepositoryDetailContainer({Key? key, required this.repositoryDetail})
      : super(key: key);

  final RepositoryDetail repositoryDetail;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          NameCardWidget(
            repositoryDetail: repositoryDetail,
          ),
          LabelDescriptionWidget(
            label: 'Description',
            content: repositoryDetail.description,
          ),
          LabelDescriptionWidget(
            label: 'Language',
            content: repositoryDetail.lang,
          ),
          LabelDescriptionWidget(
            label: 'Stars',
            content: repositoryDetail.stars.toString(),
          ),
          LabelDescriptionWidget(
            label: 'Watchers',
            content: repositoryDetail.watchers.toString(),
          ),
          LabelDescriptionWidget(
            label: 'Forks',
            content: repositoryDetail.forks.toString(),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
              child: ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute<WebViewPage>(
                    builder: (_) => WebViewPage(
                      url: repositoryDetail.htmlUrl,
                    ),
                  ),
                ),
                child: const Text('Visit Github.com'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NameCardWidget extends StatelessWidget {
  const NameCardWidget({Key? key, required this.repositoryDetail})
      : super(key: key);

  final RepositoryDetail repositoryDetail;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      elevation: 4,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
            child: SizedBox(
              width: 64,
              height: 64,
              child: CircleAvatar(
                radius: 80,
                child: null,
                backgroundImage:
                    Image.network(repositoryDetail.owner.avatarUrl).image,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.fromLTRB(16, 16, 0, 0),
                child: Text(
                  'Repository Owner',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                child: Text(repositoryDetail.owner.name),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(16, 4, 0, 0),
                child: Text(
                  'Repository Name',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 0, 16),
                child: Text(repositoryDetail.name),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class LabelDescriptionWidget extends StatelessWidget {
  const LabelDescriptionWidget({Key? key, required this.label, this.content})
      : super(key: key);

  final String label;
  final String? content;

  @override
  Widget build(BuildContext context) {
    return content != null
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
                child: Text(
                  label,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 4, 16, 0),
                child: Text(content!),
              )
            ],
          )
        : Container();
  }
}
