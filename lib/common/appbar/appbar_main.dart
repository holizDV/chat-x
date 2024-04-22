import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../config/theme/theme.dart';

class AppbarMain extends StatelessWidget implements PreferredSizeWidget {
  const AppbarMain({
    super.key,
    required this.title,
    this.onTapBack,
    this.actions,
    this.isAutomaticallyImplyLeading = true,
    this.bottom,
    this.shape,
  });

  final String title;
  final Function()? onTapBack;
  final List<Widget>? actions;
  final bool isAutomaticallyImplyLeading;
  final PreferredSizeWidget? bottom;
  final ShapeBorder? shape;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 0,
      centerTitle: true,
      leadingWidth: AppSize.s40,
      title: _content(context),
      backgroundColor: AppColor.primaryMain,
      surfaceTintColor: Colors.transparent,
      automaticallyImplyLeading: false,
      shape: shape,
      bottom: bottom,
    );
  }

  Widget _leading(BuildContext context) {
    if (!isAutomaticallyImplyLeading) {
      return const SizedBox(
        width: AppSize.s40,
        height: AppSize.s40,
      );
    } else {
      return IconButton(
        onPressed: () {
          if (onTapBack != null) {
            onTapBack!();
          } else {
            context.maybePop();
          }
        },
        highlightColor: Colors.transparent,
        icon: const Icon(
          Icons.arrow_back_ios_new_rounded,
          size: AppSize.s24,
          color: AppColor.specialAlwaysWhite,
        ),
      );
    }
  }

  Widget _content(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: isAutomaticallyImplyLeading ? 4 : AppSize.s16,
        right: AppSize.s16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _leading(context),
          const SizedBox(width: AppSize.s12),
          Expanded(
            child: Text(
              title,
              style: Typograph.titleH4.copyWith(
                color: AppColor.specialAlwaysWhite,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(width: AppSize.s12),
          if (actions != null)
            ...actions!
          else
            const SizedBox(
              width: AppSize.s40,
              height: AppSize.s40,
            ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize {
    const double defaultHeight = kToolbarHeight;
    double height = defaultHeight;

    if (bottom != null) {
      height += bottom!.preferredSize.height;
    }

    return Size.fromHeight(height);
  }
}
