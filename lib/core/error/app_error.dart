import 'package:cleanbasearc/shared/constants/app_texts.dart';

import 'app_error_type.dart';

class AppLocalizedError {
  final AppErrorType type;
  final String? message;
  final String? errorCode;

  AppLocalizedError({required this.type, this.message, this.errorCode});

  String get displayMessage {
    if (type == AppErrorType.api && errorCode != null) {
      switch (errorCode) {
        case '401':
          return AppTexts.instance.an_error_occured;
        default:
          return AppTexts.instance.an_error_occured;
      }
    }

    if (type == AppErrorType.dynamic && message != null) {
      if (message!.contains("specific_error_string")) {
        return AppTexts.instance.an_error_occured;
      }
      return message!;
    }

    switch (type) {
      case AppErrorType.network:
        return AppTexts.instance.an_error_occured;
      default:
        return AppTexts.instance.an_error_occured;
    }
  }
}
