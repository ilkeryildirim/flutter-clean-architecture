// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExerciseEntity _$ExerciseEntityFromJson(Map<String, dynamic> json) =>
    ExerciseEntity(
      id: json['id'] as String,
      title: json['title'] as String,
      timeInSeconds: (json['timeInSeconds'] as num).toInt(),
      calorie: (json['calorie'] as num).toInt(),
      imageUrl: json['imageUrl'] as String,
    );

Map<String, dynamic> _$ExerciseEntityToJson(ExerciseEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'timeInSeconds': instance.timeInSeconds,
      'calorie': instance.calorie,
      'imageUrl': instance.imageUrl,
    };
