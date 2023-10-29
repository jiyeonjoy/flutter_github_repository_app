import 'package:flutter_github_repository_app/data/data_sources/remote/apis/api_errors.dart';
import 'package:flutter_github_repository_app/data/data_sources/remote/apis/api_result.dart';
import 'package:flutter_github_repository_app/data/data_sources/remote/http_client.dart';
import 'package:flutter_github_repository_app/data/dto/response/search_repos/search_repos_dto.dart';
import 'package:flutter_github_repository_app/domain/repositories/search_repos_api_repository.dart';

class SearchReposApiRepositoryImpl implements SearchReposApiRepository {
  @override
  Future<ApiResult<SearchReposDto>> getRepositories(String q,
      {String? sort, String? order = "desc", int? perPage, int? page}) async {
    try {
      var response = await GRHttpClient().searchReposApi.getRepositories(q,
          sort: sort, order: order, perPage: perPage, page: page);
      return ApiResult.success(data: response);
    } catch (e) {
      return ApiResult.failure(error: transformToErrorResDtoWithErrorHandle(e));
    }
  }
}
