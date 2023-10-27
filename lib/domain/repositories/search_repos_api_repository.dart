import 'package:flutter_github_repository_app/data/data_sources/remote/apis/api_result.dart';
import 'package:flutter_github_repository_app/data/dto/response/search_repos/search_repos_dto.dart';

abstract class SearchReposApiRepository {
  Future<ApiResult<SearchReposDto>> getRepositories(String q,
      {String? sort, String? order});
}
