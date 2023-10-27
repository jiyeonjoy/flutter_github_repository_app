import 'package:flutter_github_repository_app/data/dto/response/search_repos/search_repos_item_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_repos_dto.freezed.dart';
part 'search_repos_dto.g.dart';

// ignore_for_file: non_constant_identifier_names
@freezed
class SearchReposDto with _$SearchReposDto {
  const SearchReposDto._();
  factory SearchReposDto({
    @Default(0) int total_count,
    @Default(false) bool incomplete_results,
    @Default(<SearchReposItemDto>[]) List<SearchReposItemDto> items,
  }) = _SearchReposDto;

  factory SearchReposDto.fromJson(Map<String, dynamic> json) =>
      _$SearchReposDtoFromJson(json);
}
