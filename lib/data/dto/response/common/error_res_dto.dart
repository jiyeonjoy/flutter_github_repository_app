import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_res_dto.freezed.dart';
part 'error_res_dto.g.dart';

@freezed
class ErrorResDto with _$ErrorResDto {
  factory ErrorResDto({
    @Default(-1) int code, // app specific error code, refer to ErrorCode
    @Default(-1) int status, // http status code
    @Default('') String errorMessage,
    @Default('') String errorDetail,
    @Default('') String errorTitle,
    dynamic data,
    @Default(false)
    bool isHandledAlready, // error is handled by common error handler
  }) = _ErrorResDto;

  factory ErrorResDto.fromJson(Map<String, dynamic> json) =>
      _$ErrorResDtoFromJson(json);
}
