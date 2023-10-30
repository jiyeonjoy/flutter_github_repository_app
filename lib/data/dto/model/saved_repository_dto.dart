// ignore_for_file: non_constant_identifier_names
import 'package:flutter_github_repository_app/data/dto/response/search_repos/search_repos_item_dto.dart';
import 'package:flutter_github_repository_app/data/dto/response/search_repos/search_repos_item_owner_dto.dart';

class SavedRepositoryDto {
  int id;
  String html_url;
  String login;
  String avatar_url;

  SavedRepositoryDto({
    this.id = -1,
    this.html_url = '',
    this.login = '',
    this.avatar_url = '',
  });

  static Map<String, dynamic> toJson(SearchReposItemDto item) {
    Map<String, dynamic> map = {};
    map['html_url'] = item.html_url;
    map['login'] = item.owner?.login ?? '';
    map['avatar_url'] = item.owner?.avatar_url ?? '';
    return map;
  }

  static SavedRepositoryDto fromJson(Map<String, dynamic> json) {
    return SavedRepositoryDto(
      id: json['id'],
      html_url: json['html_url'],
      login: json['login'],
      avatar_url: json['avatar_url'],
    );
  }

  SearchReposItemDto toSearchReposItemDto() {
    return SearchReposItemDto(
      html_url: html_url,
      owner: SearchReposItemOwnerDto(
        login: login,
        avatar_url: avatar_url,
      )
    );
  }
}
