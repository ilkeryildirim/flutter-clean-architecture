import 'package:get_it/get_it.dart';

import '../data/datasources/remote/exercise_remote_datasource.dart';
import '../data/repositories/exercise_repository_impl.dart';
import '../domain/repositories/exercise_repository.dart';

abstract class ExerciseRepositoryInjector {
  static void init(GetIt sl) {
    sl.registerLazySingleton<ExerciseRepository>(() =>
        ExercisesRepositoryImpl(dsremote: sl<ExercisesRemoteDataSource>()));
  }
}
