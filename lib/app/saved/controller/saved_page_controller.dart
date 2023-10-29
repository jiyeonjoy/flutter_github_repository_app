import 'package:flutter_github_repository_app/data/dto/response/search_repos/search_repos_item_dto.dart';
import 'package:get/get.dart';

class SavedPageController extends GetxController {
  static SavedPageController get to => Get.find();

  var savedList = <SearchReposItemDto>[].obs;
}
