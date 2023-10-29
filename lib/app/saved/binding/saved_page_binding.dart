import 'package:flutter_github_repository_app/app/saved/controller/saved_page_controller.dart';
import 'package:get/get.dart';

class SavedPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SavedPageController());
  }
}
