part of 'app_bloc.dart';

abstract class AppEvent {}

class EventAppInitialized extends AppEvent {}

class EventAppFailed extends AppEvent {
  final AppError error;

  EventAppFailed({required this.error});
}
