import 'package:flutter/material.dart';
import 'package:flutter_github_repository_app/app/common/config/r.dart';
import 'package:flutter_github_repository_app/app/common/ui/common_dialog.dart';
import 'package:flutter_github_repository_app/app/common/ui/github_repository_item_view.dart';
import 'package:flutter_github_repository_app/app/saved/controller/saved_page_controller.dart';
import 'package:flutter_github_repository_app/app/saved/ui/empty_view.dart';
import 'package:flutter_github_repository_app/data/dto/model/saved_repository_dto.dart';
import 'package:get/get.dart';

class SavedPage extends GetView<SavedPageController> {
  const SavedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: R.color.white,
      body: SafeArea(
        child: Obx(() {
          List<SavedRepositoryDto> savedList = controller.savedList;
          if (savedList.isEmpty) {
            return const EmptyView();
          } else {
            return ListView.builder(
              itemBuilder: (_, index) {
                return GitHubRepositoryItemView(
                  savedList[index].toSearchReposItemDto(),
                  Icon(
                    Icons.delete,
                    color: R.color.color_F91E30,
                  ),
                  () {
                    simpleDialog(
                        titleText: R.string.repositoryDeletePopupText,
                        leftButtonText: R.string.buttonNo,
                        rightButtonText: R.string.buttonYes,
                        onRightBtnPressed: () {
                          controller.deleteRepositoryItem(savedList[index].id);
                        });
                  },
                );
              },
              itemCount: savedList.length,
            );
          }
        }),
      ),
    );
  }
}
