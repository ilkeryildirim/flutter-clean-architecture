
import '../datasources/remote/exercise_remote_datasource.dart';
import '../../domain/repositories/exercise_repository.dart';

class ExercisesRepositoryImpl implements ExerciseRepository {
  final ExercisesRemoteDataSource _remoteDataSource;

  ExercisesRepositoryImpl({required ExercisesRemoteDataSource dsremote})
      : _remoteDataSource = dsremote;

  @override
  Future getPopularExercises() {
    return _remoteDataSource.getPopularExercises();
  }
}
