import 'package:dio/dio.dart';

class ErrorInterceptor extends InterceptorsWrapper {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print(response.statusCode.toString());
    /*
    if (response.data.containsKey('error')) {
      FoodApiError error = FoodApiError.fromJson(response.data);
      // Handle the error as required, for example:
      if (error.code == ApiErorCodes.OAUTH2_INVALID_TOKEN) {
        appBloc.add(EventAppFailed(
            error: AppError(
                type: AppErrorType.network,
                message: AppStrings.instance.turkish)));
      }
    }
     */
    super.onResponse(response, handler);
  }
}
