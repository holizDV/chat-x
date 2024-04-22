import 'package:flutter/material.dart';

import '../../config/theme/theme.dart';

enum SecondaryButtonType { large, medium, small, icon }

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    this.secondaryButtonType = SecondaryButtonType.medium,
    required this.text,
    required this.onTap,
    this.isLoading = false,
    this.isDisable = false,
    this.width = double.maxFinite,
    this.icon,
    this.buttonColor = AppColor.foregroundDividor,
    super.key,
  });

  final SecondaryButtonType secondaryButtonType;
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
        foregroundColor: AppColor.foregroundBorder,
      ),
      child: Text(
        text,
        style: Typograph.buttonSubtitle,
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
        foregroundColor: AppColor.foregroundBorder,
      ),
      child: Text(
        text,
        style: Typograph.buttonSubtitle,
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
        foregroundColor: AppColor.foregroundBorder,
      ),
      child: Text(
        text,
        style: Typograph.smallButton,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (secondaryButtonType == SecondaryButtonType.large) {
      return _largeButton();
    }
    if (secondaryButtonType == SecondaryButtonType.medium) {
      return _mediumButton();
    }
    if (secondaryButtonType == SecondaryButtonType.small) {
      return _smallButton();
    }
    return const SizedBox.shrink();
  }
}
