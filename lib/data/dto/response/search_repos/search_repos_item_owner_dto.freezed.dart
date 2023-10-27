// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_repos_item_owner_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchReposItemOwnerDto _$SearchReposItemOwnerDtoFromJson(
    Map<String, dynamic> json) {
  return _SearchReposItemOwnerDto.fromJson(json);
}

/// @nodoc
mixin _$SearchReposItemOwnerDto {
  String get login => throw _privateConstructorUsedError;
  String get avatar_url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchReposItemOwnerDtoCopyWith<SearchReposItemOwnerDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchReposItemOwnerDtoCopyWith<$Res> {
  factory $SearchReposItemOwnerDtoCopyWith(SearchReposItemOwnerDto value,
          $Res Function(SearchReposItemOwnerDto) then) =
      _$SearchReposItemOwnerDtoCopyWithImpl<$Res, SearchReposItemOwnerDto>;
  @useResult
  $Res call({String login, String avatar_url});
}

/// @nodoc
class _$SearchReposItemOwnerDtoCopyWithImpl<$Res,
        $Val extends SearchReposItemOwnerDto>
    implements $SearchReposItemOwnerDtoCopyWith<$Res> {
  _$SearchReposItemOwnerDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? avatar_url = null,
  }) {
    return _then(_value.copyWith(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      avatar_url: null == avatar_url
          ? _value.avatar_url
          : avatar_url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchReposItemOwnerDtoImplCopyWith<$Res>
    implements $SearchReposItemOwnerDtoCopyWith<$Res> {
  factory _$$SearchReposItemOwnerDtoImplCopyWith(
          _$SearchReposItemOwnerDtoImpl value,
          $Res Function(_$SearchReposItemOwnerDtoImpl) then) =
      __$$SearchReposItemOwnerDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String login, String avatar_url});
}

/// @nodoc
class __$$SearchReposItemOwnerDtoImplCopyWithImpl<$Res>
    extends _$SearchReposItemOwnerDtoCopyWithImpl<$Res,
        _$SearchReposItemOwnerDtoImpl>
    implements _$$SearchReposItemOwnerDtoImplCopyWith<$Res> {
  __$$SearchReposItemOwnerDtoImplCopyWithImpl(
      _$SearchReposItemOwnerDtoImpl _value,
      $Res Function(_$SearchReposItemOwnerDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? avatar_url = null,
  }) {
    return _then(_$SearchReposItemOwnerDtoImpl(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      avatar_url: null == avatar_url
          ? _value.avatar_url
          : avatar_url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchReposItemOwnerDtoImpl extends _SearchReposItemOwnerDto {
  _$SearchReposItemOwnerDtoImpl({this.login = '', this.avatar_url = ''})
      : super._();

  factory _$SearchReposItemOwnerDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchReposItemOwnerDtoImplFromJson(json);

  @override
  @JsonKey()
  final String login;
  @override
  @JsonKey()
  final String avatar_url;

  @override
  String toString() {
    return 'SearchReposItemOwnerDto(login: $login, avatar_url: $avatar_url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchReposItemOwnerDtoImpl &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.avatar_url, avatar_url) ||
                other.avatar_url == avatar_url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, login, avatar_url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchReposItemOwnerDtoImplCopyWith<_$SearchReposItemOwnerDtoImpl>
      get copyWith => __$$SearchReposItemOwnerDtoImplCopyWithImpl<
          _$SearchReposItemOwnerDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchReposItemOwnerDtoImplToJson(
      this,
    );
  }
}

abstract class _SearchReposItemOwnerDto extends SearchReposItemOwnerDto {
  factory _SearchReposItemOwnerDto(
      {final String login,
      final String avatar_url}) = _$SearchReposItemOwnerDtoImpl;
  _SearchReposItemOwnerDto._() : super._();

  factory _SearchReposItemOwnerDto.fromJson(Map<String, dynamic> json) =
      _$SearchReposItemOwnerDtoImpl.fromJson;

  @override
  String get login;
  @override
  String get avatar_url;
  @override
  @JsonKey(ignore: true)
  _$$SearchReposItemOwnerDtoImplCopyWith<_$SearchReposItemOwnerDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
