import 'package:cleanbasearc/shared/constants/app_texts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/repositories/exercise_repository.dart';
import 'exercise_event.dart';
import 'exercise_state.dart';

class ExerciseBloc extends Bloc<ExerciseEvent, ExerciseState> {
  final ExerciseRepository _repository;

  ExerciseBloc({required ExerciseRepository repository})
      : _repository = repository,
        super(ExerciseInitialState()) {
    on<LoadExercisesEvent>(_onLoadExercises);
  }

  Future<void> _onLoadExercises(
      LoadExercisesEvent event, Emitter<ExerciseState> emit) async {
    emit(ExerciseLoadingState());

    final result = await _repository.getPopularExercises();

    if (result.isSuccess) {
      emit(ExerciseLoadedState(exercise: result.data!));
    } else {
      emit(ExerciseErrorState(
          errorMessage: result.message ?? AppTexts.instance.an_error_occured));
    }
  }
}
