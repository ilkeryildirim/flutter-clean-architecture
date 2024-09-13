import 'package:get_it/get_it.dart';

import '../bloc/app/app_bloc.dart';
import '../exercisea/domain/repositories/exercise_repository.dart';

abstract class BaseBlocInjector {
  static void init(GetIt sl) {
    sl.registerLazySingleton<AppBloc>(
      () => AppBloc(
        repository: sl<ExerciseRepository>(),
      ),
    );
  }
}
