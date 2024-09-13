import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import '../network/builder/dio_builder.dart';

abstract class BaseDataSourceInjector {
  static void init(GetIt sl) {
    sl.registerLazySingleton<Dio>(() => DioBuilder.getInstance());
  }
}
