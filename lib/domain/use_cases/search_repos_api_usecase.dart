import 'package:flutter_github_repository_app/data/data_sources/remote/apis/api_result.dart' show ApiResult;
import 'package:flutter_github_repository_app/data/dto/response/search_repos/search_repos_dto.dart';
import 'package:flutter_github_repository_app/domain/repositories/search_repos_api_repository.dart';

class SearchReposApiUseCase {
  final SearchReposApiRepository repository;

  SearchReposApiUseCase(this.repository);

  Future<ApiResult<SearchReposDto>> getRepositories(
    String q, {
    String? sort,
    String? order,
  }) {
    return repository.getRepositories(q, sort: sort, order: order);
  }
}
