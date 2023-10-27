import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_repos_item_owner_dto.freezed.dart';
part 'search_repos_item_owner_dto.g.dart';

// ignore_for_file: non_constant_identifier_names
@freezed
class SearchReposItemOwnerDto with _$SearchReposItemOwnerDto {
  const SearchReposItemOwnerDto._();
  factory SearchReposItemOwnerDto({
    @Default('') String login,
    @Default('') String avatar_url,
  }) = _SearchReposItemOwnerDto;

  factory SearchReposItemOwnerDto.fromJson(Map<String, dynamic> json) =>
      _$SearchReposItemOwnerDtoFromJson(json);
}
