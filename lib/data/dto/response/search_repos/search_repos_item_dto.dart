import 'package:flutter_github_repository_app/data/dto/response/search_repos/search_repos_item_owner_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_repos_item_dto.freezed.dart';
part 'search_repos_item_dto.g.dart';

@freezed
class SearchReposItemDto with _$SearchReposItemDto {
  const SearchReposItemDto._();
  factory SearchReposItemDto({
    @Default('') String html_url,
    SearchReposItemOwnerDto? owner,
  }) = _SearchReposItemDto;

  factory SearchReposItemDto.fromJson(Map<String, dynamic> json) =>
      _$SearchReposItemDtoFromJson(json);
}
