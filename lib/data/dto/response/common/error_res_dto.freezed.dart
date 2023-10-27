// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error_res_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ErrorResDto _$ErrorResDtoFromJson(Map<String, dynamic> json) {
  return _ErrorResDto.fromJson(json);
}

/// @nodoc
mixin _$ErrorResDto {
  int get code =>
      throw _privateConstructorUsedError; // app specific error code, refer to ErrorCode
  int get status => throw _privateConstructorUsedError; // http status code
  String get errorMessage => throw _privateConstructorUsedError;
  String get errorDetail => throw _privateConstructorUsedError;
  String get errorTitle => throw _privateConstructorUsedError;
  dynamic get data => throw _privateConstructorUsedError;
  bool get isHandledAlready => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorResDtoCopyWith<ErrorResDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorResDtoCopyWith<$Res> {
  factory $ErrorResDtoCopyWith(
          ErrorResDto value, $Res Function(ErrorResDto) then) =
      _$ErrorResDtoCopyWithImpl<$Res, ErrorResDto>;
  @useResult
  $Res call(
      {int code,
      int status,
      String errorMessage,
      String errorDetail,
      String errorTitle,
      dynamic data,
      bool isHandledAlready});
}

/// @nodoc
class _$ErrorResDtoCopyWithImpl<$Res, $Val extends ErrorResDto>
    implements $ErrorResDtoCopyWith<$Res> {
  _$ErrorResDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? status = null,
    Object? errorMessage = null,
    Object? errorDetail = null,
    Object? errorTitle = null,
    Object? data = freezed,
    Object? isHandledAlready = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      errorDetail: null == errorDetail
          ? _value.errorDetail
          : errorDetail // ignore: cast_nullable_to_non_nullable
              as String,
      errorTitle: null == errorTitle
          ? _value.errorTitle
          : errorTitle // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isHandledAlready: null == isHandledAlready
          ? _value.isHandledAlready
          : isHandledAlready // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ErrorResDtoImplCopyWith<$Res>
    implements $ErrorResDtoCopyWith<$Res> {
  factory _$$ErrorResDtoImplCopyWith(
          _$ErrorResDtoImpl value, $Res Function(_$ErrorResDtoImpl) then) =
      __$$ErrorResDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int code,
      int status,
      String errorMessage,
      String errorDetail,
      String errorTitle,
      dynamic data,
      bool isHandledAlready});
}

/// @nodoc
class __$$ErrorResDtoImplCopyWithImpl<$Res>
    extends _$ErrorResDtoCopyWithImpl<$Res, _$ErrorResDtoImpl>
    implements _$$ErrorResDtoImplCopyWith<$Res> {
  __$$ErrorResDtoImplCopyWithImpl(
      _$ErrorResDtoImpl _value, $Res Function(_$ErrorResDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? status = null,
    Object? errorMessage = null,
    Object? errorDetail = null,
    Object? errorTitle = null,
    Object? data = freezed,
    Object? isHandledAlready = null,
  }) {
    return _then(_$ErrorResDtoImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      errorDetail: null == errorDetail
          ? _value.errorDetail
          : errorDetail // ignore: cast_nullable_to_non_nullable
              as String,
      errorTitle: null == errorTitle
          ? _value.errorTitle
          : errorTitle // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isHandledAlready: null == isHandledAlready
          ? _value.isHandledAlready
          : isHandledAlready // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ErrorResDtoImpl implements _ErrorResDto {
  _$ErrorResDtoImpl(
      {this.code = -1,
      this.status = -1,
      this.errorMessage = '',
      this.errorDetail = '',
      this.errorTitle = '',
      this.data,
      this.isHandledAlready = false});

  factory _$ErrorResDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ErrorResDtoImplFromJson(json);

  @override
  @JsonKey()
  final int code;
// app specific error code, refer to ErrorCode
  @override
  @JsonKey()
  final int status;
// http status code
  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final String errorDetail;
  @override
  @JsonKey()
  final String errorTitle;
  @override
  final dynamic data;
  @override
  @JsonKey()
  final bool isHandledAlready;

  @override
  String toString() {
    return 'ErrorResDto(code: $code, status: $status, errorMessage: $errorMessage, errorDetail: $errorDetail, errorTitle: $errorTitle, data: $data, isHandledAlready: $isHandledAlready)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorResDtoImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.errorDetail, errorDetail) ||
                other.errorDetail == errorDetail) &&
            (identical(other.errorTitle, errorTitle) ||
                other.errorTitle == errorTitle) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.isHandledAlready, isHandledAlready) ||
                other.isHandledAlready == isHandledAlready));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      code,
      status,
      errorMessage,
      errorDetail,
      errorTitle,
      const DeepCollectionEquality().hash(data),
      isHandledAlready);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorResDtoImplCopyWith<_$ErrorResDtoImpl> get copyWith =>
      __$$ErrorResDtoImplCopyWithImpl<_$ErrorResDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorResDtoImplToJson(
      this,
    );
  }
}

abstract class _ErrorResDto implements ErrorResDto {
  factory _ErrorResDto(
      {final int code,
      final int status,
      final String errorMessage,
      final String errorDetail,
      final String errorTitle,
      final dynamic data,
      final bool isHandledAlready}) = _$ErrorResDtoImpl;

  factory _ErrorResDto.fromJson(Map<String, dynamic> json) =
      _$ErrorResDtoImpl.fromJson;

  @override
  int get code;
  @override // app specific error code, refer to ErrorCode
  int get status;
  @override // http status code
  String get errorMessage;
  @override
  String get errorDetail;
  @override
  String get errorTitle;
  @override
  dynamic get data;
  @override
  bool get isHandledAlready;
  @override
  @JsonKey(ignore: true)
  _$$ErrorResDtoImplCopyWith<_$ErrorResDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
