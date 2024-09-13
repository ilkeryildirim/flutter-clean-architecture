import 'package:dio/dio.dart';

class TokenInterceptor extends InterceptorsWrapper {
  final String authHeaderKey = 'Authorization';
  final String bearer = 'Bearer';

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    super.onResponse(response, handler);
  }

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    options.headers[authHeaderKey] = '$bearer token';
    handler.next(options);
  }
}
