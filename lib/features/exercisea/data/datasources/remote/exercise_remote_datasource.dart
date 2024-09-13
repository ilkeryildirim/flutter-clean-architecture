import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import '../../models/exercise_entity.dart';
part 'exercise_remote_datasource.g.dart';

@RestApi()
abstract class ExercisesRemoteDataSource {
  factory ExercisesRemoteDataSource(Dio dioBuilder) =
      _ExercisesRemoteDataSource;

  @GET("food.get.v3&format=json")
  Future<ExerciseEntity> getPopularExercises();
}
