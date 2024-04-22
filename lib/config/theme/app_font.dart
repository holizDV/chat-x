import 'package:flutter/material.dart';

import '../../generate/gen/fonts.gen.dart';
import 'theme.dart';

abstract class Typograph {
  static const titleH1 = TextStyle(
    fontFamily: FontFamily.rubik,
    color: AppColor.foregroundPrimaryText,
    fontWeight: FontWeight.w700,
    fontSize: FontSize.s32,
    height: AppSize.s40 / FontSize.s32,
  );
  static const titleH2 = TextStyle(
    fontFamily: FontFamily.rubik,
    color: AppColor.foregroundPrimaryText,
    fontWeight: FontWeight.w700,
    fontSize: FontSize.s24,
    height: AppSize.s32 / FontSize.s24,
  );
  static const titleH3 = TextStyle(
    fontFamily: FontFamily.rubik,
    color: AppColor.foregroundPrimaryText,
    fontWeight: FontWeight.w700,
    fontSize: FontSize.s20,
    height: AppSize.s28 / FontSize.s20,
  );
  static const titleH4 = TextStyle(
    fontFamily: FontFamily.rubik,
    color: AppColor.foregroundPrimaryText,
    fontWeight: FontWeight.w700,
    fontSize: FontSize.s16,
    height: AppSize.s24 / FontSize.s16,
  );

  static const textRegular = TextStyle(
    fontFamily: FontFamily.rubik,
    color: AppColor.foregroundPrimaryText,
    fontWeight: FontWeight.w400,
    fontSize: FontSize.s14,
    height: AppSize.s18 / FontSize.s14,
  );
  static const textRegularSmall = TextStyle(
    fontFamily: FontFamily.rubik,
    color: AppColor.foregroundPrimaryText,
    fontWeight: FontWeight.w400,
    fontSize: FontSize.s10,
    height: AppSize.s14 / FontSize.s10,
  );
  static const textSmall = TextStyle(
    fontFamily: FontFamily.rubik,
    color: AppColor.foregroundPrimaryText,
    fontWeight: FontWeight.w300,
    fontSize: FontSize.s14,
    height: AppSize.s18 / FontSize.s14,
  );
  static const textTinyCaption = TextStyle(
    fontFamily: FontFamily.rubik,
    color: AppColor.foregroundPrimaryText,
    fontWeight: FontWeight.w300,
    fontSize: FontSize.s12,
    height: AppSize.s18 / FontSize.s12,
  );

  static const buttonSubtitle = TextStyle(
    fontFamily: FontFamily.rubik,
    color: AppColor.foregroundPrimaryText,
    fontWeight: FontWeight.w500,
    fontSize: FontSize.s14,
    height: AppSize.s22 / FontSize.s14,
  );
  static const smallButton = TextStyle(
    fontFamily: FontFamily.rubik,
    color: AppColor.foregroundPrimaryText,
    fontWeight: FontWeight.w500,
    fontSize: FontSize.s12,
    height: AppSize.s18 / FontSize.s12,
  );
  static const specialLink = TextStyle(
    fontFamily: FontFamily.rubik,
    color: AppColor.foregroundPrimaryText,
    fontWeight: FontWeight.w500,
    fontSize: FontSize.s14,
    height: AppSize.s22 / FontSize.s14,
  );
}
