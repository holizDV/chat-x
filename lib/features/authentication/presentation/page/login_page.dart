import 'package:auto_route/auto_route.dart';
import 'package:chat_x/common/button/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/appbar/appbar_main.dart';
import '../../../../common/field/textdef_field.dart';
import '../../../../config/theme/theme.dart';
import '../../../../utils/helper/validator_form.dart';
import '../../../../utils/injection/injection.dart';
import '../cubit/login_cubit.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final _loginCubit = getIt<LoginCubit>();

  final _firstNameCtrl = TextEditingController();
  final _lastNameCtrl = TextEditingController();
  final _emailNameCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => _loginCubit,
      child: Scaffold(
        appBar: const AppbarMain(title: "Registration Chat-X"),
        backgroundColor: AppColor.backgroundCard,
        body: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(
            AppSize.s16,
            AppSize.s36,
            AppSize.s16,
            AppSize.s74,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "First Name",
                style: Typograph.textRegular
                    .copyWith(color: AppColor.foregroundTitle),
              ),
              const SizedBox(height: AppSize.s10),
              TextdefField(
                textController: _firstNameCtrl,
                hintText: "Enter First Name",
                textSinFieldTheme: TextdefFieldTheme.dark,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (val) => ValidatorForm.validateRequired(val),
              ),
              const SizedBox(height: AppSize.s20),
              Text(
                "Last Name",
                style: Typograph.textRegular
                    .copyWith(color: AppColor.foregroundTitle),
              ),
              const SizedBox(height: AppSize.s10),
              TextdefField(
                textController: _lastNameCtrl,
                hintText: "Enter Last Name",
                textSinFieldTheme: TextdefFieldTheme.dark,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (val) => ValidatorForm.validateRequired(val),
              ),
              const SizedBox(height: AppSize.s20),
              Text(
                "Email",
                style: Typograph.textRegular
                    .copyWith(color: AppColor.foregroundTitle),
              ),
              const SizedBox(height: AppSize.s10),
              TextdefField(
                textController: _emailNameCtrl,
                hintText: "Enter Email",
                keyboardType: TextInputType.emailAddress,
                textSinFieldTheme: TextdefFieldTheme.dark,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (val) => ValidatorForm.validateEmail(val),
              ),
              const SizedBox(height: 100),
              PrimaryButton(
                text: "Registration",
                isDisable: true,
                onTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
