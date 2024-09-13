import 'package:json_annotation/json_annotation.dart';

part 'exercise_model.g.dart';

@JsonSerializable()
class ExerciseModel {
  String id;
  String title;
  int timeInSeconds;
  int calorie;
  String imageUrl;

  ExerciseModel(
      {required this.id,
      required this.title,
      required this.timeInSeconds,
      required this.calorie,
      required this.imageUrl});

  factory ExerciseModel.fromJson(Map<String, dynamic> json) =>
      _$ExerciseModelFromJson(json);

  Map<String, dynamic> toJson() => _$ExerciseModelToJson(this);
}
