import 'package:flutter/material.dart';
import 'package:flutter_github_repository_app/app/common/config/r.dart';
import 'package:flutter_github_repository_app/app/common/ui/github_repository_item_view.dart';
import 'package:flutter_github_repository_app/app/saved/controller/saved_page_controller.dart';
import 'package:flutter_github_repository_app/app/saved/ui/empty_view.dart';
import 'package:flutter_github_repository_app/data/dto/response/search_repos/search_repos_item_dto.dart';
import 'package:get/get.dart';

class SavedPage extends GetView<SavedPageController> {
  const SavedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: R.color.white,
      body: SafeArea(
        child: Obx(() {
          List<SearchReposItemDto> savedList = controller.savedList;
          if (savedList.isEmpty) {
            return const EmptyView();
          } else {
            return ListView.builder(
              itemBuilder: (_, index) {
                return GitHubRepositoryItemView(
                  savedList[index],
                  IconButton(
                    icon: Icon(
                      Icons.delete,
                      color: R.color.color_F91E30,
                    ),
                    onPressed: () {},
                  ),
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
