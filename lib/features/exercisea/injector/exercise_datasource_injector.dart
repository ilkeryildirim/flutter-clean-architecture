import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../data/datasources/remote/exercise_remote_datasource.dart';

abstract class ExerciseDataSourceInjector {
  static void init(GetIt sl) {
    sl.registerLazySingleton<ExercisesRemoteDataSource>(
      () => ExercisesRemoteDataSource(sl<Dio>()),
    );
  }
}
