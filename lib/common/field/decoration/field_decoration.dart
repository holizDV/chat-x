import 'package:flutter/material.dart';

import '../../../config/theme/app_responsive.dart';
import '../../../config/theme/theme.dart';

class FieldDecoration extends InputDecoration {
  FieldDecoration({
    required this.text,
    this.readOnly = false,
    this.enableField = true,
    this.isFieldError = false,
    this.isFocused = false,
    this.enableFillColor = true,
    required this.fillFieldColor,
  });

  final String text;
  final bool readOnly;
  final bool enableField;
  final bool isFieldError;
  final bool isFocused;
  final bool enableFillColor;

  final Color fillFieldColor;

  final responsive = AppResponsive.instance;

  Color get _enableBorder {
    if (isFieldError) {
      return AppColor.statusOverdue;
    }
    if (isFocused) {
      return AppColor.primaryMain;
    }
    return Colors.transparent;
  }

  Color get _fillColor {
    return fillFieldColor;
  }

  @override
  Color? get focusColor => AppColor.primaryMain;

  @override
  bool get enabled => enableField;

  @override
  bool get isCollapsed => true;

  @override
  bool? get isDense => true;

  @override
  bool? get filled => true;

  @override
  Color? get fillColor => _fillColor;

  @override
  String? get prefixText => "    ";

  @override
  TextStyle? get hintStyle =>
      Typograph.textRegular.copyWith(color: AppColor.foregroundSecondaryText);

  @override
  TextStyle? get errorStyle =>
      Typograph.textTinyCaption.copyWith(color: AppColor.statusOverdue);

  @override
  EdgeInsetsGeometry? get contentPadding => EdgeInsets.only(
        left: AppSize.zero,
        top: responsive.isPhone ? AppSize.s12.h : AppSize.s10.h,
        bottom: responsive.isPhone ? AppSize.s12.h : AppSize.s10.h,
      );

  @override
  InputBorder? get border => const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(AppSize.s12)));

  @override
  InputBorder? get enabledBorder => OutlineInputBorder(
        borderSide: BorderSide(color: _enableBorder),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s12)),
      );

  @override
  InputBorder? get focusedBorder => OutlineInputBorder(
        borderSide: BorderSide(color: _enableBorder),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s12)),
      );

  @override
  InputBorder? get errorBorder => const OutlineInputBorder(
        borderSide: BorderSide(color: AppColor.statusOverdue),
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s12)),
        gapPadding: 0.0,
      );

  @override
  BoxConstraints? get suffixIconConstraints {
    return const BoxConstraints(
      maxWidth: 40,
      minWidth: 40,
    );
  }
}
