import 'package:flutter_github_repository_app/app/webview/controller/webview_page_controller.dart';
import 'package:get/get.dart';

class WebViewPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(WebViewPageController());
  }
}
