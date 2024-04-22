import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../config/network/local_storage.dart';
import '../../../../utils/injection/injection.dart';

part 'init_cubit.freezed.dart';
part 'init_state.dart';

@injectable
class InitCubit extends Cubit<InitState> {
  InitCubit() : super(const InitState.initial());

  final _localStorage = getIt<LocalStorage>();

  Future<void> onInit() async {
    await _autoLogin();
  }

  Future<void> _autoLogin() async {
    final userID = await _localStorage.getUserID();
    if (userID == null) {
      emit(const InitState.onboardingState());
      return;
    }
    emit(const InitState.rootState());
  }
}
