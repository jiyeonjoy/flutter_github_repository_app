import 'package:flutter_github_repository_app/data/dto/response/common/error_res_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_result.freezed.dart';

@freezed
class ApiResult<T> with _$ApiResult<T> {
  const factory ApiResult.success({required T data}) = Success<T>;

  const factory ApiResult.failure({required ErrorResDto error}) = Failure;
}
