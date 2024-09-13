import 'package:cleanbasearc/core/entities/resource.dart';
import '../../data/models/exercise_entity.dart';

abstract class ExerciseRepository {
  Future<Resource<ExerciseEntity>> getPopularExercises();
}
