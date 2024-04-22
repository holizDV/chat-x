import 'package:flutter/material.dart';

import '../../config/theme/theme.dart';

class PaginationLoading extends StatelessWidget {
  const PaginationLoading({
    super.key,
    this.visible = false,
  });
  final bool visible;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visible,
      child: Container(
        width: 24,
        height: 24,
        margin: const EdgeInsets.only(top: AppSize.s16),
        child: const Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: 24,
              height: 24,
              child: CircularProgressIndicator(
                color: AppColor.primaryMain,
                strokeCap: StrokeCap.round,
              ),
            ),
            SizedBox(
              height: 10,
              width: 10,
              child: CircularProgressIndicator(
                color: AppColor.complementShade0,
                strokeCap: StrokeCap.round,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
