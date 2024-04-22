import 'dart:collection';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../config/error/error_object.dart';
import '../../../../utils/injection/injection.dart';
import '../../domain/entity/posting_entity.dart';
import '../../domain/usecase/all_posting_case.dart';

part 'posting_cubit.freezed.dart';
part 'posting_state.dart';

@injectable
class PostingCubit extends Cubit<PostingState> {
  PostingCubit() : super(const PostingState.initial());

  int _page = 1;
  int _totalPage = 1;
  bool _hasNextPage = true;
  bool _isLoadMore = false;
  List<DataEntity>? _tempData;

  final _allPostingCase = getIt<AllPostingCase>();

  Future<void> onRefresh() async => await fetchPosting();

  Future<void> fetchPosting() async {
    emit(const PostingState.loading());

    final result =
        await _allPostingCase.execute(const Params(page: 1, limit: 20));
    result.fold((failure) {
      emit(PostingState.error(ErrorObject.mapFailureToErrorObject(failure)));
    }, (success) {
      _page = success.page ?? 1;
      _totalPage = success.total ?? 1;
      _hasNextPage = (success.page ?? 0) < _totalPage;
      _isLoadMore = false;

      _tempData = success.data;
      emit(PostingState.loaded(success.data ?? [], _isLoadMore));
    });
  }

  Future<void> fetchMore() async {
    if (!_hasNextPage || _isLoadMore) return;
    _isLoadMore = true;
    emit(PostingState.loaded(_tempData ?? [], _isLoadMore));

    final result =
        await _allPostingCase.execute(Params(page: _page + 1, limit: 20));
    result.fold((failure) {
      emit(PostingState.error(ErrorObject.mapFailureToErrorObject(failure)));
    }, (success) {
      _page = success.page ?? 1;
      _totalPage = success.total ?? 1;
      _hasNextPage = (success.page ?? 0) < _totalPage;
      final newList = UnmodifiableListView<DataEntity>(
        (_tempData ?? []) + (success.data ?? []),
      );

      _tempData = newList;
      emit(PostingState.loaded(newList, false));
      _isLoadMore = false;
    });
  }
}
