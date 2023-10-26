import 'package:flutter_github_repository_app/app/list/controller/list_page_controller.dart';
import 'package:get/get.dart';

class ListPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ListPageController());
  }
}
