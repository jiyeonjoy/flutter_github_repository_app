import 'package:flutter/material.dart';
import 'package:flutter_github_repository_app/app/common/config/r.dart';
import 'package:get/get.dart';

class AppBarView extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final Widget? leading;
  final List<Widget>? actions;
  final AppBar? child;
  final Color? color;
  final Color? textColor;
  final Brightness? brightness;
  final bool? isEmpty;
  final double? dividerWidth;
  final Function? onBackPressed;
  final PreferredSizeWidget? bottom;

  const AppBarView({
    Key? key,
    this.child,
    this.title,
    this.leading,
    this.actions,
    this.color,
    this.textColor,
    this.brightness = Brightness.dark,
    this.isEmpty,
    this.dividerWidth,
    this.onBackPressed,
    this.bottom,
  }) : super(key: key);

  factory AppBarView.empty() => const AppBarView(isEmpty: true);

  @override
  Size get preferredSize => isEmpty == true
      ? const Size.fromHeight(0)
      : Size.fromHeight(kToolbarHeight + (bottom?.preferredSize.height ?? 0));

  @override
  Widget build(BuildContext context) {
    var color = this.color ?? R.color.white;
    var textColor = this.textColor ?? R.color.black;

    if (isEmpty == true) {
      return AppBar(
        elevation: 0,
        backgroundColor: R.color.white,
      );
    }

    return child ??
        AppBar(
          bottom: bottom,
          centerTitle: true,
          title: Text(
            title ?? '',
            style: textStyleMedium(textColor, 18),
            maxLines: 1,
          ),
          leading: leading ??
              IconButton(
                icon: R.image.icon_close
                    .svgPictureSize(size: 24, color: R.color.black),
                onPressed: () {
                  if (onBackPressed != null) {
                    onBackPressed?.call();
                  } else {
                    Get.back();
                  }
                },
              ),
          actions: actions,
          elevation: 0,
          backgroundColor: color,
        );
  }
}
