import 'package:flutter_github_repository_app/app/favorites/controller/favorites_page_controller.dart';
import 'package:get/get.dart';

class FavoritesPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(FavoritesPageController());
  }
}
