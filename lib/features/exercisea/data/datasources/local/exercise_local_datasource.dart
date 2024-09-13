import '../../models/exercise_entity.dart';

class TokenLocalDataSource {
  Future<ExerciseEntity> getExercises() async {
    return ExerciseEntity(
        id: "", title: "", timeInSeconds: 123, calorie: 123, imageUrl: "");
  }
}
