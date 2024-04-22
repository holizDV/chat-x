import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../config/theme/app_color.dart';

class CustomPlaceholder extends StatelessWidget {
  const CustomPlaceholder({
    super.key,
    this.width = double.infinity,
    this.height = 24.0,
    this.borderRadius = 12.0,
  });

  final double width;
  final double height;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColor.foregroundBorder,
      highlightColor: AppColor.foregroundDividor,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: AppColor.backgroundCard,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
    );
  }
}
