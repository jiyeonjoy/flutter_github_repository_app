import 'package:flutter_github_repository_app/app/common/app_pages.dart';
import 'package:flutter_github_repository_app/app/common/constants.dart';
import 'package:flutter_github_repository_app/utils/helper/network_connected_helper.dart';
import 'package:get/get.dart';

class SplashPageController extends GetxController {
  static SplashPageController get to => Get.find();

  @override
  void onReady() {
    super.onReady();
    performAppInitialization();
  }

  void performAppInitialization() async {
    bool isNetworkConnected = await NetworkConnectedHelper.isNetworkAvailable();
    await Future.delayed(const Duration(milliseconds: 200));
    Get.offNamed(AppRoutes.rootPage,
        arguments: {AppConstants.IS_NETWORK_CONNECTED: isNetworkConnected});
  }
}
