import 'package:auto_route/auto_route.dart';
import 'package:chat_x/config/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../config/theme/app_color.dart';
import '../../../../utils/injection/injection.dart';
import '../cubit/init_cubit.dart';

@RoutePage()
class InitPage extends StatelessWidget {
  const InitPage({super.key});

  @override
  Widget build(BuildContext context) {
    final initCubit = getIt<InitCubit>();

    return BlocProvider(
      create: (_) => initCubit..onInit(),
      child: Scaffold(
        backgroundColor: AppColor.backgroundCard,
        body: BlocListener<InitCubit, InitState>(
          listener: (context, state) {
            state.maybeWhen(
              orElse: () => const SizedBox.shrink(),
              onboardingState: () =>
                  context.router.replace(const OnboardingRoute()),
              rootState: () => context.router.replace(const RootRoute()),
            );
          },
          child: const SizedBox.shrink(),
        ),
      ),
    );
  }
}
