import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'exercise_remote_datasource.g.dart';

@RestApi()
abstract class ExercisesRemoteDataSource {
  factory ExercisesRemoteDataSource(Dio dioBuilder) =
  _ExercisesRemoteDataSource;

  @GET("food.get.v3&format=json")
  Future<dynamic> getPopularExercises();
}
