import 'package:get_it/get_it.dart';
import '../domain/repositories/exercise_repository.dart';
import '../presentation/bloc/exercise_bloc.dart';

abstract class ExerciseBlocInjector {
  static void init(GetIt sl) {
    sl.registerLazySingleton<ExerciseBloc>(
      () => ExerciseBloc(
        repository: sl<ExerciseRepository>(),
      ),
    );
  }
}
