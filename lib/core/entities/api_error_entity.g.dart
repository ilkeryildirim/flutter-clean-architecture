// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_error_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiErrorEntity _$ApiErrorEntityFromJson(Map<String, dynamic> json) =>
    ApiErrorEntity(
      errorCode: json['errorCode'] as String?,
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$ApiErrorEntityToJson(ApiErrorEntity instance) =>
    <String, dynamic>{
      'errorCode': instance.errorCode,
      'errorMessage': instance.errorMessage,
    };
