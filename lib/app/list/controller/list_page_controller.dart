import 'package:flutter_github_repository_app/app/common/logger.dart';
import 'package:flutter_github_repository_app/data/repositories/search_repos_api_repo_impl.dart';
import 'package:flutter_github_repository_app/domain/use_cases/search_repos_api_usecase.dart';
import 'package:get/get.dart';

class ListPageController extends GetxController {
  static ListPageController get to => Get.find();

  final SearchReposApiUseCase searchReposApiUseCase =
  SearchReposApiUseCase(SearchReposApiRepositoryImpl());

  @override
  void onInit() async {
    super.onInit();
    final repos = await searchReposApiUseCase.getRepositories('language:dart');
    repos.when(success: (resp) {
      logger.d(resp);
    }, failure: (error) {
      logger.d(error);
    });
  }
}
