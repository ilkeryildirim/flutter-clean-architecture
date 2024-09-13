import '../../data/models/exercise_entity.dart';

abstract class ExerciseState {}

class ExerciseInitialState extends ExerciseState {}

class ExerciseLoadingState extends ExerciseState {}

class ExerciseLoadedState extends ExerciseState {
  final ExerciseEntity exercise;

  ExerciseLoadedState({required this.exercise});
}

class ExerciseErrorState extends ExerciseState {
  final String errorMessage;

  ExerciseErrorState({required this.errorMessage});
}
