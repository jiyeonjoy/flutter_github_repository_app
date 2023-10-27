// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_repos_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchReposItemDtoImpl _$$SearchReposItemDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchReposItemDtoImpl(
      html_url: json['html_url'] as String? ?? '',
      owner: json['owner'] == null
          ? null
          : SearchReposItemOwnerDto.fromJson(
              json['owner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SearchReposItemDtoImplToJson(
        _$SearchReposItemDtoImpl instance) =>
    <String, dynamic>{
      'html_url': instance.html_url,
      'owner': instance.owner,
    };
