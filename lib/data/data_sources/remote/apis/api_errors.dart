import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_github_repository_app/data/dto/response/common/error_res_dto.dart';

abstract class ErrorCode {}

ErrorResDto transformToErrorResDtoWithErrorHandle(error) {
  ErrorResDto transformed = transformToErrorResDto(error);

  return transformed;
}

ErrorResDto transformToErrorResDto(error) {
  ErrorResDto result = ErrorResDto();
  if (error is Exception) {
    String errorMessage;
    try {
      if (error is DioException) {
        var extraErrorData =
        (error.response?.data as Map<String, dynamic>)['data'];
        result = result.copyWith(
          status: error.response?.statusCode ?? -1,
          errorMessage: error.type.toString(),
          data: extraErrorData,
        );
        errorMessage = error.type.toString();
      } else if (error is SocketException) {
        errorMessage = 'No internet connection';
      } else {
        errorMessage = 'Unexpected error occurred';
      }

      return result.copyWith(errorMessage: errorMessage);
    } on FormatException catch (_) {
      return result.copyWith(errorMessage: 'Unexpected format error occurred');
    } catch (_) {
      return result.copyWith(errorMessage: 'Unexpected error occurred');
    }
  } else {
    if (error.toString().contains("is not a subtype of")) {
      return result.copyWith(errorMessage: 'Unable to process the data');
    } else {
      return result.copyWith(errorMessage: 'Unexpected error occurred');
    }
  }
}
