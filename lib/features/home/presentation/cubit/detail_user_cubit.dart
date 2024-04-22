import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../config/error/error_object.dart';
import '../../../../utils/injection/injection.dart';
import '../../domain/entity/user_detail_entity.dart';
import '../../domain/usecase/user_detail_case.dart';

part 'detail_user_cubit.freezed.dart';
part 'detail_user_state.dart';

@injectable
class DetailUserCubit extends Cubit<DetailUserState> {
  DetailUserCubit() : super(const DetailUserState.initial());

  final userDetailCase = getIt<UserDetailCase>();

  Future<void> fetchUserDetal(String userID) async {
    emit(const DetailUserState.loading());

    final result = await userDetailCase.execute(Params(userID));
    result.fold((failure) {
      emit(DetailUserState.error(ErrorObject.mapFailureToErrorObject(failure)));
    }, (success) {
      emit(DetailUserState.loaded(success));
    });
  }
}
