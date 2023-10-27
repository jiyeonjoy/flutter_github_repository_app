// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_repos_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchReposDtoImpl _$$SearchReposDtoImplFromJson(Map<String, dynamic> json) =>
    _$SearchReposDtoImpl(
      total_count: json['total_count'] as int? ?? 0,
      incomplete_results: json['incomplete_results'] as bool? ?? false,
      items: (json['items'] as List<dynamic>?)
              ?.map(
                  (e) => SearchReposItemDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <SearchReposItemDto>[],
    );

Map<String, dynamic> _$$SearchReposDtoImplToJson(
        _$SearchReposDtoImpl instance) =>
    <String, dynamic>{
      'total_count': instance.total_count,
      'incomplete_results': instance.incomplete_results,
      'items': instance.items,
    };
