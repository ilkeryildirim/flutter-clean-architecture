import 'package:cleanbasearc/shared/constants/app_texts.dart';
import 'app_error_type.dart';

class AppError {
  final AppErrorType type;
  final String? message;

  AppError({required this.type, this.message});

  String get displayMessage {
    switch (type) {
      case AppErrorType.dynamic:
        return message ?? AppTexts.instance.an_error_occured;
      case AppErrorType.network:
        return AppTexts.instance.an_error_occured;
      default:
        return AppTexts.instance.an_error_occured;
    }
  }
}
