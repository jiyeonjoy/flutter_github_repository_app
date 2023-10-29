import 'package:flutter/material.dart';
import 'package:flutter_github_repository_app/app/common/config/r.dart';
import 'package:flutter_github_repository_app/app/common/constants.dart';
import 'package:get/get.dart';

class RootPageController extends GetxController {
  static RootPageController get to => Get.find();

  RootTab currentTab = RootTab.list;

  @override
  void onInit() {
    super.onInit();
    bool isNetworkConnected = Get.arguments?[AppConstants.IS_NETWORK_CONNECTED] ?? false;
    if (!isNetworkConnected) {
      changeTab(RootTab.favorites.id);
    }
  }

  void changeTab(int index) {
    currentTab = RootTab.from(index);
    update();
  }
}

enum RootTab {
  list(0),
  favorites(1);

  final int id;
  const RootTab(this.id);

  static RootTab from(int id) {
    for (final value in RootTab.values) {
      if (value.id == id) {
        return value;
      }
    }
    return RootTab.list;
  }
}

extension RootTabExt on RootTab {
  Widget get icon {
    switch (this) {
      case RootTab.list:
        return Icon(
          Icons.list_alt_outlined,
          color: R.color.black.withOpacity(0.5),
          size: 24.0,
        );
      case RootTab.favorites:
        return Icon(
          Icons.star_border,
          color: R.color.black.withOpacity(0.5),
          size: 24.0,
        );
    }
  }

  Widget get selectedIcon {
    switch (this) {
      case RootTab.list:
        return Icon(
          Icons.list_alt,
          color: R.color.black,
          size: 24.0,
        );
      case RootTab.favorites:
        return Icon(
          Icons.star,
          color: R.color.black,
          size: 24.0,
        );
    }
  }

  String get title {
    switch (this) {
      case RootTab.list:
        return R.string.list;
      case RootTab.favorites:
        return R.string.favorites;
    }
  }
}
