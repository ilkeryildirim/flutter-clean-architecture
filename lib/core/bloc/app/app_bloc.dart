import 'dart:async';

import 'package:bloc/bloc.dart';

import '../../entities/app_settings.dart';
import '../../error/app_error.dart';
import '../../exercisea/domain/repositories/exercise_repository.dart';


part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  final ExerciseRepository _repository;

  AppBloc(
      {required ExerciseRepository repository})
      : _repository = repository,
        super(StateInitialized()) {
    on<EventAppInitialized>(_onInit);
    on<EventAppFailed>(_onFailure);
  }

  Future<void> _onInit(
    EventAppInitialized event,
    Emitter<AppState> emit,
  ) async {
    emit(StateInitialized());
  }

  void _onFailure(
    EventAppFailed event,
    Emitter<AppState> emit,
  ) {
    emit(StateError(error: event.error));
  }
}
