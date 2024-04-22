import 'dart:collection';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../config/error/error_object.dart';
import '../../../../utils/injection/injection.dart';
import '../../domain/entity/all_user_entity.dart';
import '../../domain/usecase/all_user_case.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState.initial());

  int _page = 1;
  int _totalPage = 1;
  bool _hasNextPage = true;
  bool _isLoadMore = false;
  List<DataEntity>? _tempUser;

  int get page => _page;
  int get totalPage => _totalPage;
  bool get hasNextPage => _hasNextPage;
  bool get isLoadMore => _isLoadMore;
  List<DataEntity>? get tempUser => _tempUser;

  final _allUserCase = getIt<AllUserCase>();

  Future<void> onRefresh() async => await fetchAllUser();

  Future<void> fetchAllUser() async {
    emit(const HomeState.loading());

    final result = await _allUserCase.execute(const Params(page: 1, limit: 20));
    result.fold((failure) {
      emit(HomeState.error(ErrorObject.mapFailureToErrorObject(failure)));
    }, (success) {
      _page = success.page ?? 1;
      _totalPage = success.total ?? 1;
      _hasNextPage = (success.page ?? 0) < _totalPage;
      _isLoadMore = false;

      _tempUser = success.data;
      emit(HomeState.loaded(success.data ?? [], _isLoadMore));
    });
  }

  Future<void> fetchMore() async {
    if (!_hasNextPage || _isLoadMore) return;
    _isLoadMore = true;
    emit(HomeState.loaded(_tempUser ?? [], _isLoadMore));

    final result =
        await _allUserCase.execute(Params(page: _page + 1, limit: 20));
    result.fold((failure) {
      emit(HomeState.error(ErrorObject.mapFailureToErrorObject(failure)));
    }, (success) {
      _page = success.page ?? 1;
      _totalPage = success.total ?? 1;
      _hasNextPage = (success.page ?? 0) < _totalPage;
      final newList = UnmodifiableListView<DataEntity>(
        (_tempUser ?? []) + (success.data ?? []),
      );

      _tempUser = newList;
      emit(HomeState.loaded(newList, false));
      _isLoadMore = false;
    });
  }
}
