part of 'init_cubit.dart';

@freezed
class InitState with _$InitState {
  const factory InitState.initial() = _Initial;
  const factory InitState.onboardingState() = _OnboardingState;
  const factory InitState.rootState() = _RootState;
}
