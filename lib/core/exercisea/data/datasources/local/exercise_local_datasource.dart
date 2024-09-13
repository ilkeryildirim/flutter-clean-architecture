import '../../../domain/models/exercise_model.dart';

class TokenLocalDataSource {
  Future<ExerciseModel> getExercises() async {
    return ExerciseModel(id: "", title: "", timeInSeconds: 123, calorie: 123, imageUrl: "");
  }
}
