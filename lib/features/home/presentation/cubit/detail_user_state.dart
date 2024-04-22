part of 'detail_user_cubit.dart';

@freezed
class DetailUserState with _$DetailUserState {
  const factory DetailUserState.initial() = _Initial;
  const factory DetailUserState.loading() = _Loading;
  const factory DetailUserState.error(ErrorObject error) = _Error;
  const factory DetailUserState.loaded(UserDetailEntity user) = _Loaded;
}
