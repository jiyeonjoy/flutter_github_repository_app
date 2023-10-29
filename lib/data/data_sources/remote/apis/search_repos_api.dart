import 'package:dio/dio.dart';
import 'package:flutter_github_repository_app/data/dto/response/search_repos/search_repos_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'search_repos_api.g.dart';

@RestApi()
abstract class SearchReposApi {
  factory SearchReposApi(Dio dio, {String baseUrl}) = _SearchReposApi;

  @GET('/search/repositories')
  Future<SearchReposDto> getRepositories(
    @Query('q') String q, {
    @Query('sort') String? sort,
    @Query('order') String? order,
    @Query('per_page') int? perPage,
    @Query('page') int? page,
  });
}
