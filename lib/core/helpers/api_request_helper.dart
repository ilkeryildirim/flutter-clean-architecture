import 'package:cleanbasearc/core/entities/api_error_entity.dart';
import 'package:cleanbasearc/core/entities/resource.dart';
import 'package:cleanbasearc/core/error/app_error.dart';
import 'package:cleanbasearc/core/error/app_error_type.dart';
import 'package:cleanbasearc/shared/constants/app_texts.dart';
import 'package:dio/dio.dart';

Future<Resource<T>> apiRequest<T>(Future<T> Function() apiCall) async {
  try {
    final result = await apiCall();
    return Resource.success(result);
  } on DioException catch (dioError) {
    final errorData = dioError.response?.data;

    if (errorData != null) {
      try {
        final errorModel = ApiErrorEntity.fromJson(errorData);

        return Resource.error(
          AppLocalizedError(
            type: AppErrorType.api,
            message: errorModel.errorMessage,
            errorCode: errorModel.errorCode,
          ).displayMessage,
        );
      } catch (e) {
        return Resource.error(AppTexts.instance.an_error_occured);
      }
    }
    return Resource.error(AppTexts.instance.an_error_occured);
  } catch (e) {
    return Resource.error(AppTexts.instance.an_error_occured);
  }
}
