import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'theme.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    useMaterial3: true,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      background: AppColor.backgroundPage,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColor.primaryMain,
      systemOverlayStyle: SystemUiOverlayStyle.light.copyWith(
        statusBarColor: AppColor.primaryMain,
      ),
      centerTitle: true,
      titleTextStyle:
          Typograph.titleH4.copyWith(color: AppColor.specialAlwaysWhite),
      iconTheme: const IconThemeData(color: Colors.white),
      elevation: 0.0,
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: AppColor.primaryMain,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.primaryMain,
        foregroundColor: AppColor.primaryShade0,
        disabledBackgroundColor: AppColor.foregroundBorder,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s50),
        ),
        shadowColor: Colors.transparent,
      ),
    ),
  );
}
