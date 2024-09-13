part of 'app_bloc.dart';

abstract class AppState {}

class StateInitialized extends AppState {
  StateInitialized();
}

class LoadingState extends AppState {
  final bool isShowing;

  LoadingState(this.isShowing);
}

class StateError extends AppState {
  final AppLocalizedError error;

  StateError({required this.error});
}
