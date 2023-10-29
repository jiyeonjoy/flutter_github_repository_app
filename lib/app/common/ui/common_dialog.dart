import 'package:flutter/material.dart';
import 'package:flutter_github_repository_app/app/common/config/r.dart';
import 'package:flutter_github_repository_app/app/common/ui/edge_insets.dart';
import 'package:flutter_github_repository_app/app/common/ui/touch_well.dart';
import 'package:get/get.dart';

Future<T> simpleDialog<T>({
  String? titleText,
  String? bodyText,
  TextStyle? bodyStyle,
  Widget? widgetBelowBody,
  String? rightButtonText,
  String? leftButtonText,
  VoidCallback? onRightBtnPressed,
  VoidCallback? onLeftBtnPressed,
  VoidCallback? onDismiss,
  bool shouldDismissOnTouchOutside = true,
}) async {
  return await Get.generalDialog(
    barrierDismissible: shouldDismissOnTouchOutside,
    barrierLabel: Get.context != null
        ? MaterialLocalizations.of(Get.context!).dialogLabel
        : null,
    barrierColor: R.color.black.withOpacity(0.6),
    pageBuilder: (context, _, __) {
      return WillPopScope(
        onWillPop: () async {
          return shouldDismissOnTouchOutside;
        },
        child: Container(
          margin: edgeInsets(all: 24),
          alignment: Alignment.center,
          child: Card(
            clipBehavior: Clip.hardEdge,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            elevation: 5,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (titleText != null) ...[
                  Container(
                    padding: edgeInsets(
                        top: bodyText != null ? 32 : 48,
                        bottom: bodyText != null ? 12 : 48,
                        horizontal: 20),
                    child: Text(
                      titleText,
                      textAlign: TextAlign.center,
                      style: textStyleLight(R.color.color_171819, 18, height: 24/18),
                    ),
                  ),
                ],
                if (bodyText != null) ...[
                  Container(
                    padding: edgeInsets(
                        top: titleText != null ? 12 : 48,
                        bottom: titleText != null ? 32 : 48,
                        horizontal: 20),
                    child: Text(
                      bodyText,
                      textAlign: TextAlign.center,
                      style: textStyleLight(R.color.color_8C9299, 14, height: 20/14),
                    ),
                  ),
                ],
                Row(
                  children: [
                    if (leftButtonText != null) ...[
                      Expanded(
                        child: TouchWell(
                          onTap: () {
                            onLeftBtnPressed?.call();
                            Get.back();
                          },
                          child: Container(
                            width: double.infinity,
                            height: 52,
                            color: R.color.color_EEF0F3,
                            alignment: Alignment.center,
                            child: Text(
                              leftButtonText,
                              style: textStyleLight(R.color.color_171819, 16, height: 22/16),
                            ),
                          ),
                        ),
                      ),
                    ],
                    if (rightButtonText != null) ...[
                      Expanded(
                        child: TouchWell(
                          onTap: () {
                            onRightBtnPressed?.call();
                            Get.back();
                          },
                          child: Container(
                            width: double.infinity,
                            height: 52,
                            color: R.color.color_0064FF,
                            alignment: Alignment.center,
                            child: Text(
                              rightButtonText,
                              style: textStyleLight(R.color.white, 16, height: 22/16),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
