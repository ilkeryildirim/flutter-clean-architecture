import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../interceptor/error_interceptor.dart';
import '../interceptor/header_interceptor.dart';
import '../interceptor/token_interceptor.dart';

class DioBuilder extends DioMixin implements Dio {
  static DioBuilder getInstance(
          {bool ignoredToken = false, BaseOptions? options}) =>
      DioBuilder._(ignoredToken, options);

  DioBuilder._(bool ignoredToken, [BaseOptions? options]) {
    options = BaseOptions(
      baseUrl: "https://goole.com",
      contentType: "ApiSettings.contentType",
      connectTimeout: Duration(milliseconds: 3000),
      receiveTimeout: Duration(milliseconds: 3000),
      sendTimeout: Duration(milliseconds: 3000),
    );

    this.options = options;
    if (kDebugMode) {
      interceptors.add(PrettyDioLogger(
          responseBody: true, requestBody: true, requestHeader: true));
    }

    interceptors.add(HeaderInterceptor());
    interceptors.add(ErrorInterceptor());
    interceptors.add(TokenInterceptor());
    // token
    if (!ignoredToken) {
      //
    }
    httpClientAdapter = IOHttpClientAdapter();
  }
}
