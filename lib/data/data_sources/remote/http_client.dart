import 'package:dio/dio.dart';
import 'package:flutter_github_repository_app/app/common/constants.dart';
import 'package:flutter_github_repository_app/data/data_sources/remote/apis/search_repos_api.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

final prettyDioLogger = PrettyDioLogger(
  requestHeader: true,
  requestBody: true,
  responseBody: true,
  responseHeader: false,
  error: true,
  compact: true,
  maxWidth: 90,
);

class GRHttpClient {
  static final GRHttpClient _instance = GRHttpClient._internal();
  factory GRHttpClient() => _instance;
  GRHttpClient._internal();

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
    _dio ??= Dio(options)..interceptors.addAll([
      prettyDioLogger,
    ]);

    return _dio!;
  }

  SearchReposApi get searchReposApi => SearchReposApi(
    dio,
    baseUrl: AppConstants.DOMAIN_URL,
  );
}
