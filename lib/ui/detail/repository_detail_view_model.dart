import 'package:dio/dio.dart';
import 'package:flutter_tutorial_github/model/repository_detail/repository_detail.dart';
import 'package:flutter_tutorial_github/ui/detail/repository_detail_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final repositoryDetailViewModelProvider = StateNotifierProvider.autoDispose<
    RepositoryDetailViewModel,
    RepositoryDetailState>((_) => RepositoryDetailViewModel());

class RepositoryDetailViewModel extends StateNotifier<RepositoryDetailState> {
  RepositoryDetailViewModel() : super(const RepositoryDetailState());

  Future<void> loadRepositoryData(String repositoryFullName) async {
    final response = await Dio(
      BaseOptions(baseUrl: 'https://api.github.com'),
    ).get('/repos/$repositoryFullName');

    state = state.copyWith(
        repositoryDetail: RepositoryDetail.fromJson(response.data));
  }
}
