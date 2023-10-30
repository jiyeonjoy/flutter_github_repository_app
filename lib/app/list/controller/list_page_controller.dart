import 'package:flutter/material.dart';
import 'package:flutter_github_repository_app/app/common/config/r.dart';
import 'package:flutter_github_repository_app/app/common/logger.dart';
import 'package:flutter_github_repository_app/app/common/ui/common_snackbar.dart';
import 'package:flutter_github_repository_app/app/saved/controller/saved_page_controller.dart';
import 'package:flutter_github_repository_app/data/dto/response/search_repos/search_repos_dto.dart';
import 'package:flutter_github_repository_app/data/dto/response/search_repos/search_repos_item_dto.dart';
import 'package:flutter_github_repository_app/data/repositories/search_repos_api_repo_impl.dart';
import 'package:flutter_github_repository_app/domain/use_cases/search_repos_api_usecase.dart';
import 'package:flutter_github_repository_app/utils/helper/db_helper.dart';
import 'package:get/get.dart';

class ListPageController extends GetxController {
  static ListPageController get to => Get.find();

  final SearchReposApiUseCase searchReposApiUseCase =
      SearchReposApiUseCase(SearchReposApiRepositoryImpl());

  ListPageErrorType listPageErrorType = ListPageErrorType.noError;
  var repositoryList = <SearchReposItemDto>[].obs;
  Rx<RepositoryListSortType> sortType = RepositoryListSortType.bestMatch.obs;

  bool refreshing = false;
  bool loadMoreFlag = false;
  int page = 1;
  final int perPage = 50;
  final int maxPage = 2;
  ScrollController scrollController = ScrollController();

  @override
  void onInit() async {
    super.onInit();
    loadRepositories();
  }

  @override
  void onClose() {
    scrollController.dispose();
    super.onClose();
  }

  void loadRepositories() async {
    if (refreshing) {
      return;
    }
    page = 1;
    _getRepositories((resp) {
      if (resp.items.isEmpty) {
        setListPageError(ListPageErrorType.emptyError);
      } else {
        setListPageError(ListPageErrorType.noError);
      }
      repositoryList.value = resp.items;
      if (scrollController.hasClients) {
        scrollController.animateTo(
          0,
          duration: const Duration(milliseconds: 250),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  void loadMoreRepositories() async {
    if (refreshing || !loadMoreFlag) {
      return;
    }
    _getRepositories((resp) {
      final List<SearchReposItemDto> list = List<SearchReposItemDto>.from(repositoryList);
      list.addAll(resp.items);
      repositoryList.value = list;
    });
  }

  void _getRepositories(Function(SearchReposDto resp) onSuccess) async {
    refreshing = true;
    final repos = await searchReposApiUseCase.getRepositories(
      'language:dart',
      sort: sortType.value.key,
      page: page++,
      perPage: perPage,
    );
    repos.when(success: (resp) {
      onSuccess(resp);
      loadMoreFlag = (resp.items.length == perPage) && (page <= maxPage);
    }, failure: (error) {
      logger.d(error);
      CommonSnackBar.show(error.toString());
      setListPageError(ListPageErrorType.networkError);
    });
    refreshing = false;
  }

  void setListPageError(ListPageErrorType errorType) {
    listPageErrorType = errorType;
    update();
  }

  void setSortType(RepositoryListSortType type) {
    sortType.value = type;
    loadRepositories();
  }

  void saveRepositoryItem(SearchReposItemDto item) async {
    await DBHelper().createData(item);
    CommonSnackBar.show(R.string.repositorySaveMessage);
    SavedPageController.to.getSavedRepositoryList();
  }
}

enum ListPageErrorType {
  noError,
  emptyError,
  networkError,
}

enum RepositoryListSortType {
  bestMatch('Best Match', ''),
  mostStars('Most Stars', 'stars'),
  recentlyUpdated('Recently Updated', 'updated');

  final String text;
  final String key;
  const RepositoryListSortType(this.text, this.key);
}
