import 'package:cleanbasearc/core/entities/resource.dart';

import '../../domain/repositories/exercise_repository.dart';
import '../datasources/remote/exercise_remote_datasource.dart';
import '../models/exercise_entity.dart';
import 'package:cleanbasearc/core/helpers/api_request_helper.dart'; // Yeni ekledik

class ExercisesRepositoryImpl implements ExerciseRepository {
  final ExercisesRemoteDataSource _remoteDataSource;

  ExercisesRepositoryImpl({required ExercisesRemoteDataSource dsremote})
      : _remoteDataSource = dsremote;

  @override
  Future<Resource<ExerciseEntity>> getPopularExercises() async {
    return apiRequest<ExerciseEntity>(
        () => _remoteDataSource.getPopularExercises());
  }
}
