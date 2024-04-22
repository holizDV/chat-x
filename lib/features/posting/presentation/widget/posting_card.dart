import 'package:flutter/material.dart';

import '../../../../common/widget/image_url.dart';
import '../../../../config/theme/theme.dart';
import '../../../../utils/helper/date_handler.dart';

class PostingCard extends StatelessWidget {
  const PostingCard({
    super.key,
    required this.title,
    required this.picture,
    required this.publishAt,
    required this.likes,
  });

  final String? title;
  final String? picture;
  final String? publishAt;
  final int? likes;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: AppSize.s16),
      padding: const EdgeInsets.only(bottom: AppSize.s10),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: AppColor.backgroundCard,
        borderRadius: BorderRadius.circular(AppSize.s12),
        boxShadow: [
          BoxShadow(
            color: AppColor.foregroundBorder.withOpacity(0.5),
            blurRadius: 4,
            spreadRadius: 1.2,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImageUrl(
            width: size.width,
            imageUrl: picture,
            isCache: true,
          ),
          const SizedBox(height: AppSize.s6),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSize.s10),
            child: Text(
              title ?? "-",
              style: Typograph.textRegular
                  .copyWith(color: AppColor.foregroundTitle),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSize.s10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  DateHandler.instance.strDateTimeToStr1(publishAt),
                  style: Typograph.textRegular,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.favorite,
                      color: AppColor.statusReject,
                    ),
                    Text(
                      "$likes",
                      style: Typograph.textRegular,
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
