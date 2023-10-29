import 'package:flutter/material.dart';
import 'package:flutter_github_repository_app/app/common/config/r.dart';
import 'package:flutter_github_repository_app/app/common/ui/edge_insets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CommonButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final double? height;
  final Color? fillColor;
  final BorderSide? border;
  final TextStyle? textStyle;
  final SvgPicture? leadingIcon;
  final SvgPicture? trailingIcon;

  const CommonButton(this.text,
      {this.onPressed,
      this.height,
      this.fillColor,
      this.border,
      this.textStyle,
      this.leadingIcon,
      this.trailingIcon,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 52,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith((Set<MaterialState> states) {
            return fillColor ?? R.color.color_36393D;
          }),
          shape: MaterialStateProperty.resolveWith(
            (Set<MaterialState> states) {
              return RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              );
            },
          ),
          side:
              MaterialStateProperty.resolveWith((Set<MaterialState> states) {
                return border;
              }),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            leadingIcon != null
                ? Container(margin: edgeInsets(end: 8), child: leadingIcon!)
                : const SizedBox.shrink(),
            Text(
              text,
              style: textStyle ?? textStyleWhiteMedium(18),
            ),
            trailingIcon != null
                ? Container(margin: edgeInsets(start: 8), child: trailingIcon!)
                : const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
