import 'package:flutter/material.dart';

import '../../../../common/widget/image_url.dart';
import '../../../../config/theme/theme.dart';

class UserCard extends StatelessWidget {
  const UserCard({
    super.key,
    required this.firstName,
    required this.lastName,
    required this.picture,
    this.onTap,
  });

  final String? firstName;
  final String? lastName;
  final String? picture;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(AppSize.s16),
        margin: const EdgeInsets.symmetric(horizontal: AppSize.s16),
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
        child: Row(
          children: [
            ImageUrl(
              imageUrl: picture,
              width: 50,
              height: 50,
              shape: BoxShape.circle,
              isCache: true,
            ),
            const SizedBox(width: AppSize.s16),
            Flexible(
              child: Text(
                "$firstName $lastName",
                style: Typograph.titleH4,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
