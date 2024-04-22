import 'dart:async';

import 'package:flutter/material.dart';

import '../../config/theme/theme.dart';

class OverlayLoading {
  static OverlayEntry? _overlayEntry;
  static Completer<void>? _completer;

  static Future<void> show({
    required BuildContext context,
    Widget? loadingWidget,
    required Future<dynamic> Function() asyncFunction,
  }) async {
    _completer = Completer<void>();

    _overlayEntry = OverlayEntry(
      builder: (BuildContext ctx) {
        return Positioned(
          top: 0.0,
          bottom: 0.0,
          left: 0.0,
          right: 0.0,
          child: Material(
            color: Colors.black.withOpacity(0.5),
            child: Center(
              child: loadingWidget ?? _defaultLoadingWidget(),
            ),
          ),
        );
      },
    );

    Overlay.of(context).insert(_overlayEntry!);

    try {
      await asyncFunction();
      _completer?.complete();
    } catch (error) {
      _completer?.completeError(error);
    } finally {
      _overlayEntry?.remove();
      _overlayEntry?.dispose();
      _overlayEntry = null;
    }
  }

  static Future<void> hideOverlay() async {
    await _completer?.future;
  }

  static Widget _defaultLoadingWidget() {
    return Center(
      child: Container(
        height: 164.0,
        padding: const EdgeInsets.symmetric(
          vertical: AppSize.s14,
          horizontal: 15.0,
        ),
        decoration: BoxDecoration(
          color: AppColor.backgroundCard,
          borderRadius: BorderRadius.circular(AppSize.s12),
        ),
        child: const SizedBox(
          width: 30,
          height: 30,
          child: Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                width: 30,
                height: 30,
                child: CircularProgressIndicator(
                  color: AppColor.primaryMain,
                  strokeCap: StrokeCap.round,
                ),
              ),
              SizedBox(
                height: 16,
                width: 16,
                child: CircularProgressIndicator(
                  color: AppColor.complementShade0,
                  strokeCap: StrokeCap.round,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
