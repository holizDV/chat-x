import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../common/button/primary_button.dart';
import '../../../../common/button/secondary_button.dart';
import '../../../../config/router/app_router.gr.dart';
import '../../../../config/theme/theme.dart';
import '../../../../generate/gen/assets.gen.dart';

@RoutePage()
class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: AppColor.specialAlwaysWhite,
      ),
      child: Scaffold(
        backgroundColor: AppColor.backgroundCard,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.fromLTRB(
            AppSize.s24,
            AppSize.s44,
            AppSize.s24,
            AppSize.s40,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Assets.images.onboarding.image(width: 200)),
              const SizedBox(height: AppSize.s30),
              const Text(
                "Welcome to",
                style: Typograph.titleH2,
              ),
              RichText(
                text: TextSpan(
                    style: Typograph.titleH2
                        .copyWith(color: AppColor.foregroundTitle),
                    children: const [
                      TextSpan(
                          text: "Chat-X ",
                          style: TextStyle(color: AppColor.primaryShade1)),
                      TextSpan(
                        text: "Media Social",
                      ),
                    ]),
              ),
              const Spacer(),
              PrimaryButton(
                text: "Sign In",
                onTap: () => context.router.push(LoginRoute()),
              ),
              const SizedBox(height: AppSize.s20),
              SecondaryButton(
                text: "Early Access",
                onTap: () => context.router.replace(const RootRoute()),
              )
            ],
          ),
        )),
      ),
    );
  }
}
