import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_tutorial_github/model/repository/repository.dart';
import 'package:flutter_tutorial_github/ui/detail/repository_detail_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RepositoryDetail extends HookConsumerWidget {
  const RepositoryDetail({Key? key, required this.repository})
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
      body: Center(
        child: repositoryDetailState.owner == null
            ? const CircularProgressIndicator()
            : CircleAvatar(
                radius: 80,
                child: null,
                backgroundImage:
                    Image.network(repositoryDetailState.owner!.avatarUrl).image,
              ),
      ),
    );
  }
}
