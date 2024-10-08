import 'package:get_it/get_it.dart';

import 'exercise_bloc_injector.dart';
import 'exercise_datasource_injector.dart';
import 'exercise_repository_injector.dart';

abstract class ExerciseInjector {
  static void init(GetIt sl) {
    ExerciseDataSourceInjector.init(sl);
    ExerciseRepositoryInjector.init(sl);
    ExerciseBlocInjector.init(sl);
  }
}
