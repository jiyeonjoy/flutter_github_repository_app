import 'package:flutter_github_repository_app/app/common/logger.dart';
import 'package:flutter_github_repository_app/data/dto/response/search_repos/search_repos_item_dto.dart';
import 'package:flutter_github_repository_app/data/repositories/search_repos_api_repo_impl.dart';
import 'package:flutter_github_repository_app/domain/use_cases/search_repos_api_usecase.dart';
import 'package:flutter_github_repository_app/utils/helper/network_connected_helper.dart';
import 'package:get/get.dart';

class ListPageController extends GetxController {
  static ListPageController get to => Get.find();

  final SearchReposApiUseCase searchReposApiUseCase =
      SearchReposApiUseCase(SearchReposApiRepositoryImpl());

  ListPageErrorType listPageErrorType = ListPageErrorType.noError;
  var repositoryList = <SearchReposItemDto>[].obs;
  Rx<RepositoryListSortType> sortType = RepositoryListSortType.bestMatch.obs;

  @override
  void onInit() async {
    super.onInit();
    loadRepositories();
  }

  void loadRepositories() async {
    bool isNetworkConnected = await NetworkConnectedHelper.isNetworkAvailable();
    if (!isNetworkConnected) {
      setListPageError(ListPageErrorType.networkError);
    } else {
      final repos = await searchReposApiUseCase.getRepositories('language:dart',
          sort: sortType.value.key);
      repos.when(success: (resp) {
        if (resp.items.isEmpty) {
          setListPageError(ListPageErrorType.emptyError);
        } else {
          setListPageError(ListPageErrorType.noError);
        }
        repositoryList.value = resp.items;
      }, failure: (error) {
        logger.d(error);
      });
    }
  }

  void setListPageError(ListPageErrorType errorType) {
    listPageErrorType = errorType;
    update();
  }

  void setSortType(RepositoryListSortType type) {
    sortType.value = type;
    loadRepositories();
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
