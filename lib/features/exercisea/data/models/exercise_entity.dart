import 'package:json_annotation/json_annotation.dart';

part 'exercise_entity.g.dart';

@JsonSerializable()
class ExerciseEntity {
  String id;
  String title;
  int timeInSeconds;
  int calorie;
  String imageUrl;

  ExerciseEntity(
      {required this.id,
      required this.title,
      required this.timeInSeconds,
      required this.calorie,
      required this.imageUrl});

  factory ExerciseEntity.fromJson(Map<String, dynamic> json) =>
      _$ExerciseEntityFromJson(json);

  Map<String, dynamic> toJson() => _$ExerciseEntityToJson(this);
}
