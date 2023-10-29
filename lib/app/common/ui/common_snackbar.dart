import 'package:flutter/material.dart';
import 'package:flutter_github_repository_app/app/common/config/r.dart';
import 'package:get/get.dart';

class CommonSnackBar {
  static DateTime? showSnackBarTime;

  static void show(
      String text, {
        int? dismissMilliseconds,
        Color? backgroundColor,
      }) {
    DateTime now = DateTime.now();
    bool enabled = showSnackBarTime == null ||
        now.difference(showSnackBarTime!) >
            Duration(milliseconds: dismissMilliseconds ?? 1500);
    if (enabled) {
      showSnackBarTime = now;
      Get.showSnackbar(
        GetSnackBar(
          margin: const EdgeInsets.only(bottom: 80),
          messageText: Text(
            text,
            maxLines: 2,
            style: textStyleWhiteMedium(14),
          ),
          backgroundColor: backgroundColor ?? Colors.black,
          snackPosition: SnackPosition.BOTTOM,
          forwardAnimationCurve: Curves.elasticInOut,
          reverseAnimationCurve: Curves.easeOut,
          barBlur: 0.5,
          isDismissible: true,
          duration: Duration(milliseconds: dismissMilliseconds ?? 1500),
        ),
      );
    }
  }
}
