// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_repos_item_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchReposItemDto _$SearchReposItemDtoFromJson(Map<String, dynamic> json) {
  return _SearchReposItemDto.fromJson(json);
}

/// @nodoc
mixin _$SearchReposItemDto {
  String get html_url => throw _privateConstructorUsedError;
  SearchReposItemOwnerDto? get owner => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchReposItemDtoCopyWith<SearchReposItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchReposItemDtoCopyWith<$Res> {
  factory $SearchReposItemDtoCopyWith(
          SearchReposItemDto value, $Res Function(SearchReposItemDto) then) =
      _$SearchReposItemDtoCopyWithImpl<$Res, SearchReposItemDto>;
  @useResult
  $Res call({String html_url, SearchReposItemOwnerDto? owner});

  $SearchReposItemOwnerDtoCopyWith<$Res>? get owner;
}

/// @nodoc
class _$SearchReposItemDtoCopyWithImpl<$Res, $Val extends SearchReposItemDto>
    implements $SearchReposItemDtoCopyWith<$Res> {
  _$SearchReposItemDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? html_url = null,
    Object? owner = freezed,
  }) {
    return _then(_value.copyWith(
      html_url: null == html_url
          ? _value.html_url
          : html_url // ignore: cast_nullable_to_non_nullable
              as String,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as SearchReposItemOwnerDto?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SearchReposItemOwnerDtoCopyWith<$Res>? get owner {
    if (_value.owner == null) {
      return null;
    }

    return $SearchReposItemOwnerDtoCopyWith<$Res>(_value.owner!, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchReposItemDtoImplCopyWith<$Res>
    implements $SearchReposItemDtoCopyWith<$Res> {
  factory _$$SearchReposItemDtoImplCopyWith(_$SearchReposItemDtoImpl value,
          $Res Function(_$SearchReposItemDtoImpl) then) =
      __$$SearchReposItemDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String html_url, SearchReposItemOwnerDto? owner});

  @override
  $SearchReposItemOwnerDtoCopyWith<$Res>? get owner;
}

/// @nodoc
class __$$SearchReposItemDtoImplCopyWithImpl<$Res>
    extends _$SearchReposItemDtoCopyWithImpl<$Res, _$SearchReposItemDtoImpl>
    implements _$$SearchReposItemDtoImplCopyWith<$Res> {
  __$$SearchReposItemDtoImplCopyWithImpl(_$SearchReposItemDtoImpl _value,
      $Res Function(_$SearchReposItemDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? html_url = null,
    Object? owner = freezed,
  }) {
    return _then(_$SearchReposItemDtoImpl(
      html_url: null == html_url
          ? _value.html_url
          : html_url // ignore: cast_nullable_to_non_nullable
              as String,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as SearchReposItemOwnerDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchReposItemDtoImpl extends _SearchReposItemDto {
  _$SearchReposItemDtoImpl({this.html_url = '', this.owner}) : super._();

  factory _$SearchReposItemDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchReposItemDtoImplFromJson(json);

  @override
  @JsonKey()
  final String html_url;
  @override
  final SearchReposItemOwnerDto? owner;

  @override
  String toString() {
    return 'SearchReposItemDto(html_url: $html_url, owner: $owner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchReposItemDtoImpl &&
            (identical(other.html_url, html_url) ||
                other.html_url == html_url) &&
            (identical(other.owner, owner) || other.owner == owner));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, html_url, owner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchReposItemDtoImplCopyWith<_$SearchReposItemDtoImpl> get copyWith =>
      __$$SearchReposItemDtoImplCopyWithImpl<_$SearchReposItemDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchReposItemDtoImplToJson(
      this,
    );
  }
}

abstract class _SearchReposItemDto extends SearchReposItemDto {
  factory _SearchReposItemDto(
      {final String html_url,
      final SearchReposItemOwnerDto? owner}) = _$SearchReposItemDtoImpl;
  _SearchReposItemDto._() : super._();

  factory _SearchReposItemDto.fromJson(Map<String, dynamic> json) =
      _$SearchReposItemDtoImpl.fromJson;

  @override
  String get html_url;
  @override
  SearchReposItemOwnerDto? get owner;
  @override
  @JsonKey(ignore: true)
  _$$SearchReposItemDtoImplCopyWith<_$SearchReposItemDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
