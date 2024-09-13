part of 'app_bloc.dart';

abstract class AppEvent {}

class EventAppInitialized extends AppEvent {}

class EventAppFailed extends AppEvent {
  final AppLocalizedError error;

  EventAppFailed({required this.error});
}
