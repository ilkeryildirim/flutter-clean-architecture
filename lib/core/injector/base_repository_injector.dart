import 'package:get_it/get_it.dart';

import '../exercisea/data/datasources/remote/exercise_remote_datasource.dart';
import '../exercisea/data/repositories/exercise_repository_impl.dart';
import '../exercisea/domain/repositories/exercise_repository.dart';

abstract class BaseRepositoryInjector {
  static void init(GetIt sl) {
    sl.registerLazySingleton<ExerciseRepository>(() =>
        ExercisesRepositoryImpl(dsremote: sl<ExercisesRemoteDataSource>()));
  }
}
