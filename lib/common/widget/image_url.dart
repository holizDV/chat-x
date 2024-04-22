import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';

import '../../config/theme/app_color.dart';
import '../../generate/gen/assets.gen.dart';
import '../../utils/helper/image_cache.dart';

class ImageUrl extends StatelessWidget {
  const ImageUrl({
    super.key,
    required this.imageUrl,
    this.boxFit = BoxFit.fill,
    this.width = 100,
    this.height = 100,
    this.isCache = false,
    this.shape = BoxShape.rectangle,
  });

  final String? imageUrl;
  final BoxFit boxFit;
  final double width;
  final double height;
  final bool isCache;
  final BoxShape shape;

  String? get _cacheKey {
    if (isCache) {
      return ImageCached.instance.getKeyName(imageUrl: imageUrl);
    }
    return null;
  }

  Widget _setImage() {
    if (imageUrl != null) {
      return _normalImage();
    }
    return _normalImage();
  }

  Widget _normalImage() {
    return FancyShimmerImage(
      imageUrl: imageUrl ?? "",
      shimmerBaseColor: AppColor.foregroundBorder,
      shimmerHighlightColor: AppColor.foregroundDividor,
      boxFit: boxFit,
      errorWidget: Assets.images.placeholder.image(fit: BoxFit.cover),
      cacheKey: _cacheKey,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        shape: shape,
      ),
      child: _setImage(),
    );
  }
}
