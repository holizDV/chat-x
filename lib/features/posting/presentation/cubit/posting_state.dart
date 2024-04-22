part of 'posting_cubit.dart';

@freezed
class PostingState with _$PostingState {
  const factory PostingState.initial() = _Initial;
  const factory PostingState.loading() = _Loading;
  const factory PostingState.error(ErrorObject error) = _Error;
  const factory PostingState.loaded(
      List<DataEntity> postings, bool isLoadMore) = _Loaded;
}
