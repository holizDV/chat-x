import 'package:flutter/material.dart';

import '../../config/theme/theme.dart';

enum PrimaryButtonType { large, medium, small, icon }

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    this.primaryButtonType = PrimaryButtonType.medium,
    required this.onTap,
    this.text = "Next",
    this.isLoading = false,
    this.isDisable = false,
    this.width = double.maxFinite,
    this.icon,
    this.buttonColor = AppColor.primaryMain,
    super.key,
  });

  final PrimaryButtonType primaryButtonType;
  final String text;
  final Function() onTap;
  final bool isLoading;
  final bool isDisable;
  final double width;
  final String? icon;
  final Color buttonColor;

  Widget _largeButton() {
    return ElevatedButton(
      onPressed: (isDisable || isLoading) ? null : () async => await onTap(),
      style: ElevatedButton.styleFrom(
        minimumSize: Size(width, AppSize.s54),
        padding: const EdgeInsets.symmetric(vertical: AppSize.s16),
        backgroundColor: buttonColor,
      ),
      child: Text(
        text,
        style: Typograph.buttonSubtitle
            .copyWith(color: AppColor.specialAlwaysWhite),
      ),
    );
  }

  Widget _mediumButton() {
    return ElevatedButton(
      onPressed: (isDisable || isLoading) ? null : () async => await onTap(),
      style: ElevatedButton.styleFrom(
        minimumSize: Size(width, AppSize.s46),
        padding: const EdgeInsets.symmetric(vertical: AppSize.s12),
        backgroundColor: buttonColor,
      ),
      child: Text(
        text,
        style: Typograph.buttonSubtitle
            .copyWith(color: AppColor.specialAlwaysWhite),
      ),
    );
  }

  Widget _smallButton() {
    return ElevatedButton(
      onPressed: (isDisable || isLoading) ? null : () async => await onTap(),
      style: ElevatedButton.styleFrom(
        minimumSize: Size(width, AppSize.s34),
        padding: const EdgeInsets.symmetric(vertical: AppSize.s8),
        backgroundColor: buttonColor,
      ),
      child: Text(
        text,
        style:
            Typograph.smallButton.copyWith(color: AppColor.specialAlwaysWhite),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (primaryButtonType == PrimaryButtonType.large) {
      return _largeButton();
    }
    if (primaryButtonType == PrimaryButtonType.medium) {
      return _mediumButton();
    }
    if (primaryButtonType == PrimaryButtonType.small) {
      return _smallButton();
    }
    return const SizedBox.shrink();
  }
}
