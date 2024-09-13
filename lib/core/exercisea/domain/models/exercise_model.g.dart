// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExerciseModel _$ExerciseModelFromJson(Map<String, dynamic> json) =>
    ExerciseModel(
      id: json['id'] as String,
      title: json['title'] as String,
      timeInSeconds: (json['timeInSeconds'] as num).toInt(),
      calorie: (json['calorie'] as num).toInt(),
      imageUrl: json['imageUrl'] as String,
    );

Map<String, dynamic> _$ExerciseModelToJson(ExerciseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'timeInSeconds': instance.timeInSeconds,
      'calorie': instance.calorie,
      'imageUrl': instance.imageUrl,
    };
