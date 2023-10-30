import 'package:flutter_github_repository_app/data/dto/model/saved_repository_dto.dart';
import 'package:flutter_github_repository_app/utils/helper/db_helper.dart';
import 'package:get/get.dart';

class SavedPageController extends GetxController {
  static SavedPageController get to => Get.find();

  var savedList = <SavedRepositoryDto>[].obs;

  @override
  void onReady() {
    super.onReady();
    getSavedRepositoryList();
  }

  void getSavedRepositoryList() async {
    List<SavedRepositoryDto> list =
        await DBHelper().getAllSavedRepositoryList();
    savedList.value = list;
  }

  void deleteRepositoryItem(int id) async {
    await DBHelper().deleteSavedRepositoryModel(id);
    getSavedRepositoryList();
  }
}
