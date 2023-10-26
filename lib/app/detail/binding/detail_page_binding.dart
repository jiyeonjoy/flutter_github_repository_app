import 'package:flutter_github_repository_app/app/detail/controller/detail_page_controller.dart';
import 'package:get/get.dart';

class DetailPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(DetailPageController());
  }
}
