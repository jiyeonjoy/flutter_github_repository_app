import 'package:flutter/material.dart';
import 'package:flutter_github_repository_app/app/common/config/r.dart';
import 'package:flutter_github_repository_app/app/common/ui/github_repository_item_view.dart';
import 'package:flutter_github_repository_app/app/list/controller/list_page_controller.dart';
import 'package:flutter_github_repository_app/app/list/ui/empty_error_view.dart';
import 'package:flutter_github_repository_app/app/list/ui/network_error_view.dart';
import 'package:flutter_github_repository_app/app/list/ui/sort_button.dart';
import 'package:flutter_github_repository_app/data/dto/response/search_repos/search_repos_item_dto.dart';
import 'package:get/get.dart';

class ListPage extends GetView<ListPageController> {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: R.color.white,
      body: SafeArea(
        child: GetBuilder<ListPageController>(
          init: controller,
          builder: (_) {
            ListPageErrorType errorType = _.listPageErrorType;
            switch (errorType) {
              case ListPageErrorType.emptyError:
                return const EmptyErrorView();
              case ListPageErrorType.networkError:
                return const NetworkErrorView();
              case ListPageErrorType.noError:
                return Obx(() {
                  List<SearchReposItemDto> repositoryList = _.repositoryList;
                  if (repositoryList.isEmpty) {
                    return Center(
                      child: CircularProgressIndicator(
                        color: R.color.black,
                        strokeWidth: 3,
                      ),
                    );
                  } else {
                    return Column(
                      children: [
                        Obx(() {
                          RepositoryListSortType sortType = _.sortType.value;
                          return SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                const SizedBox(width: 24),
                                SortButton(RepositoryListSortType.bestMatch,
                                    RepositoryListSortType.bestMatch == sortType),
                                SortButton(RepositoryListSortType.mostStars,
                                    RepositoryListSortType.mostStars == sortType),
                                SortButton(RepositoryListSortType.recentlyUpdated,
                                    RepositoryListSortType.recentlyUpdated == sortType),
                              ],
                            ),
                          );
                        }),
                        Expanded(
                          child: RefreshIndicator(
                            onRefresh: () async {
                              await Future.delayed(
                                  const Duration(milliseconds: 500));
                              _.loadRepositories();
                            },
                            child: ListView.builder(
                              controller: controller.scrollController,
                              itemBuilder: (_, index) {
                                if (index == repositoryList.length-1) {
                                  controller.loadMoreRepositories();
                                }
                                return GitHubRepositoryItemView(
                                    repositoryList[index],
                                    const Icon(
                                      Icons.save_alt,
                                    ),
                                    () {});
                              },
                              itemCount: repositoryList.length,
                            ),
                          ),
                        ),
                      ],
                    );
                  }
                });
            }
          },
        ),
      ),
    );
  }
}
