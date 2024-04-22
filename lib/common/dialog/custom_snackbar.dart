import 'package:flutter/material.dart';

import '../../config/theme/app_responsive.dart';
import '../../config/theme/theme.dart';

class CustomSnackBar {
  CustomSnackBar._();
  static CustomSnackBar get instance => CustomSnackBar._();

  _checkDialog(
    SnackBar snackbar, {
    required BuildContext context,
    String? message,
  }) {
    if (message != null && message.isNotEmpty) {
      return ScaffoldMessenger.of(context).showSnackBar(snackbar);
    }
  }

  _marginDefault(context) {
    double screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth > kTabletBreakpoint) {
      return EdgeInsets.symmetric(
        horizontal:
            (screenWidth - kMobileScreenWidth) / kResponsivePaddingFactor + 16,
        vertical: MediaQuery.of(context).viewInsets.bottom + 14,
      );
    } else {
      return null;
    }
  }

  showError(BuildContext context, String message) {
    final snackbar = SnackBar(
      margin: _marginDefault(context),
      content: Row(
        children: [
          Container(
            width: AppSize.s20,
            height: AppSize.s20,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColor.statusOverdue,
            ),
            alignment: Alignment.center,
            child: const Icon(
              Icons.close,
              color: AppColor.backgroundCard,
              size: AppSize.s16,
            ),
          ),
          const SizedBox(width: AppSize.s8),
          Flexible(
            child: Text(
              message,
              style: Typograph.textRegular,
            ),
          ),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 246, 217, 217),
      duration: const Duration(seconds: 2),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusDirectional.circular(12),
      ),
      behavior: SnackBarBehavior.floating,
    );

    return _checkDialog(
      snackbar,
      context: context,
      message: message,
    );
  }

  showSuccess(BuildContext context, String message) {
    final snackbar = SnackBar(
      margin: _marginDefault(context),
      content: Row(
        children: [
          Container(
            width: AppSize.s20,
            height: AppSize.s20,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColor.primaryShade1,
            ),
            alignment: Alignment.center,
            child: const Icon(
              Icons.check,
              color: AppColor.backgroundCard,
              size: AppSize.s16,
            ),
          ),
          const SizedBox(width: AppSize.s8),
          Flexible(
            child: Text(
              message,
              style: Typograph.textRegular,
            ),
          ),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 221, 240, 230),
      duration: const Duration(seconds: 2),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusDirectional.circular(12),
      ),
      behavior: SnackBarBehavior.floating,
    );

    return _checkDialog(
      snackbar,
      context: context,
      message: message,
    );
  }
}
