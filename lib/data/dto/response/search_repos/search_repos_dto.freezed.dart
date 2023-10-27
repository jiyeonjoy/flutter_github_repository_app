// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_repos_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchReposDto _$SearchReposDtoFromJson(Map<String, dynamic> json) {
  return _SearchReposDto.fromJson(json);
}

/// @nodoc
mixin _$SearchReposDto {
  int get total_count => throw _privateConstructorUsedError;
  bool get incomplete_results => throw _privateConstructorUsedError;
  List<SearchReposItemDto> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchReposDtoCopyWith<SearchReposDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchReposDtoCopyWith<$Res> {
  factory $SearchReposDtoCopyWith(
          SearchReposDto value, $Res Function(SearchReposDto) then) =
      _$SearchReposDtoCopyWithImpl<$Res, SearchReposDto>;
  @useResult
  $Res call(
      {int total_count,
      bool incomplete_results,
      List<SearchReposItemDto> items});
}

/// @nodoc
class _$SearchReposDtoCopyWithImpl<$Res, $Val extends SearchReposDto>
    implements $SearchReposDtoCopyWith<$Res> {
  _$SearchReposDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total_count = null,
    Object? incomplete_results = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      total_count: null == total_count
          ? _value.total_count
          : total_count // ignore: cast_nullable_to_non_nullable
              as int,
      incomplete_results: null == incomplete_results
          ? _value.incomplete_results
          : incomplete_results // ignore: cast_nullable_to_non_nullable
              as bool,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<SearchReposItemDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchReposDtoImplCopyWith<$Res>
    implements $SearchReposDtoCopyWith<$Res> {
  factory _$$SearchReposDtoImplCopyWith(_$SearchReposDtoImpl value,
          $Res Function(_$SearchReposDtoImpl) then) =
      __$$SearchReposDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int total_count,
      bool incomplete_results,
      List<SearchReposItemDto> items});
}

/// @nodoc
class __$$SearchReposDtoImplCopyWithImpl<$Res>
    extends _$SearchReposDtoCopyWithImpl<$Res, _$SearchReposDtoImpl>
    implements _$$SearchReposDtoImplCopyWith<$Res> {
  __$$SearchReposDtoImplCopyWithImpl(
      _$SearchReposDtoImpl _value, $Res Function(_$SearchReposDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total_count = null,
    Object? incomplete_results = null,
    Object? items = null,
  }) {
    return _then(_$SearchReposDtoImpl(
      total_count: null == total_count
          ? _value.total_count
          : total_count // ignore: cast_nullable_to_non_nullable
              as int,
      incomplete_results: null == incomplete_results
          ? _value.incomplete_results
          : incomplete_results // ignore: cast_nullable_to_non_nullable
              as bool,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<SearchReposItemDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchReposDtoImpl extends _SearchReposDto {
  _$SearchReposDtoImpl(
      {this.total_count = 0,
      this.incomplete_results = false,
      final List<SearchReposItemDto> items = const <SearchReposItemDto>[]})
      : _items = items,
        super._();

  factory _$SearchReposDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchReposDtoImplFromJson(json);

  @override
  @JsonKey()
  final int total_count;
  @override
  @JsonKey()
  final bool incomplete_results;
  final List<SearchReposItemDto> _items;
  @override
  @JsonKey()
  List<SearchReposItemDto> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'SearchReposDto(total_count: $total_count, incomplete_results: $incomplete_results, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchReposDtoImpl &&
            (identical(other.total_count, total_count) ||
                other.total_count == total_count) &&
            (identical(other.incomplete_results, incomplete_results) ||
                other.incomplete_results == incomplete_results) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, total_count, incomplete_results,
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchReposDtoImplCopyWith<_$SearchReposDtoImpl> get copyWith =>
      __$$SearchReposDtoImplCopyWithImpl<_$SearchReposDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchReposDtoImplToJson(
      this,
    );
  }
}

abstract class _SearchReposDto extends SearchReposDto {
  factory _SearchReposDto(
      {final int total_count,
      final bool incomplete_results,
      final List<SearchReposItemDto> items}) = _$SearchReposDtoImpl;
  _SearchReposDto._() : super._();

  factory _SearchReposDto.fromJson(Map<String, dynamic> json) =
      _$SearchReposDtoImpl.fromJson;

  @override
  int get total_count;
  @override
  bool get incomplete_results;
  @override
  List<SearchReposItemDto> get items;
  @override
  @JsonKey(ignore: true)
  _$$SearchReposDtoImplCopyWith<_$SearchReposDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
