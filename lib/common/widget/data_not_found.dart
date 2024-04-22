import 'package:flutter/material.dart';

import '../../config/theme/theme.dart';
import '../../generate/gen/assets.gen.dart';

class DataNotFound extends StatelessWidget {
  final String? message;
  final double height;

  const DataNotFound({
    super.key,
    this.message,
    this.height = 1.5,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      heightFactor: height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Assets.images.nodata.image(width: 100),
          const SizedBox(height: AppSize.s12),
          Text(
            message ?? "Data Not Found",
            style: Typograph.textRegular,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
