import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../exercisea/data/datasources/remote/exercise_remote_datasource.dart';
import '../exercisea/network/builder/dio_builder.dart';

abstract class BaseDataSourceInjector {
  static void init(GetIt sl) {
    sl.registerLazySingleton<Dio>(() => DioBuilder.getInstance());

    sl.registerLazySingleton<ExercisesRemoteDataSource>(
      () => ExercisesRemoteDataSource(sl<Dio>()),
    );
  }
}
