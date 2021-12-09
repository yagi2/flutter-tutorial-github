import 'package:freezed_annotation/freezed_annotation.dart';

part 'repository_detail_state.freezed.dart';

@freezed
class RepositoryDetailState with _$RepositoryDetailState {
  const factory RepositoryDetailState({
    @Default("") String text,
  }) = _RepositoryDetailState;
}
