import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/appbar/appbar_main.dart';
import '../../../../common/dialog/custom_snackbar.dart';
import '../../../../common/widget/custom_placeholder.dart';
import '../../../../common/widget/image_url.dart';
import '../../../../config/theme/theme.dart';
import '../../../../utils/helper/date_handler.dart';
import '../../../../utils/injection/injection.dart';
import '../cubit/detail_user_cubit.dart';

@RoutePage()
class DetailUserPage extends StatelessWidget {
  DetailUserPage({super.key, required this.userID});
  final String userID;

  final _userDetailCubit = getIt<DetailUserCubit>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return BlocProvider(
      create: (_) => _userDetailCubit..fetchUserDetal(userID),
      child: Scaffold(
        appBar: const AppbarMain(title: "Post"),
        body: BlocBuilder<DetailUserCubit, DetailUserState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => const SizedBox.shrink(),
              loading: () => const _Placeholder(),
              error: (error) =>
                  CustomSnackBar.instance.showError(context, error.message),
              loaded: (user) {
                return SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ImageUrl(
                        imageUrl: user.picture,
                        width: size.width,
                        boxFit: BoxFit.fitWidth,
                        height: 200,
                      ),
                      const SizedBox(height: AppSize.s12),
                      Padding(
                        padding:
                            const EdgeInsets.symmetric(horizontal: AppSize.s16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Name",
                              style: Typograph.titleH4,
                            ),
                            Text(
                              "${user.firstName} ${user.lastName}",
                              style: Typograph.textRegular,
                            ),
                            const SizedBox(height: AppSize.s8),
                            const Text(
                              "Gender",
                              style: Typograph.titleH4,
                            ),
                            Text(
                              user.gender ?? "-",
                              style: Typograph.textRegular,
                            ),
                            const SizedBox(height: AppSize.s8),
                            const Text(
                              "Email",
                              style: Typograph.titleH4,
                            ),
                            Text(
                              user.email ?? "-",
                              style: Typograph.textRegular,
                            ),
                            const SizedBox(height: AppSize.s8),
                            const Text(
                              "Phone",
                              style: Typograph.titleH4,
                            ),
                            Text(
                              user.phone ?? "-",
                              style: Typograph.textRegular,
                            ),
                            const SizedBox(height: AppSize.s8),
                            const Text(
                              "Date of Birth",
                              style: Typograph.titleH4,
                            ),
                            Text(
                              DateHandler.instance
                                  .strDateTimeToStr1(user.dateOfBirth),
                              style: Typograph.textRegular,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class _Placeholder extends StatelessWidget {
  const _Placeholder({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomPlaceholder(
          width: size.width,
          height: 200,
        ),
        const SizedBox(height: AppSize.s12),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSize.s16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomPlaceholder(
                width: size.width * 0.6,
                height: FontSize.s14,
              ),
              const SizedBox(height: AppSize.s10),
              CustomPlaceholder(
                width: size.width * 0.4,
                height: FontSize.s14,
              ),
              const SizedBox(height: AppSize.s10),
              CustomPlaceholder(
                width: size.width * 0.7,
                height: FontSize.s14,
              ),
              const SizedBox(height: AppSize.s10),
              CustomPlaceholder(
                width: size.width * 0.3,
                height: FontSize.s14,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
