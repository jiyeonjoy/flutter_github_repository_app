import 'package:dio/dio.dart';
import 'package:flutter_github_repository_app/app/common/constants.dart';

class CommunityHttpClient {
  static final CommunityHttpClient _instance = CommunityHttpClient._internal();
  factory CommunityHttpClient() => _instance;
  CommunityHttpClient._internal();

  BaseOptions options = BaseOptions(
    connectTimeout: const Duration(seconds: AppConstants.HTTP_CONNECT_TIMEOUT),
    sendTimeout: const Duration(seconds: AppConstants.HTTP_WRITE_TIMEOUT),
    receiveTimeout: const Duration(seconds: AppConstants.HTTP_READ_TIMEOUT),
    headers: {
      'Content-Type': 'application/json',
    },
  );

  Dio? _dio;
  Dio get dio {
    _dio ??= Dio(options);

    return _dio!;
  }
}
