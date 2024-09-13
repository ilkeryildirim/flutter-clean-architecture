import 'package:json_annotation/json_annotation.dart';

part 'api_error_entity.g.dart';

@JsonSerializable()
class ApiErrorEntity {
  final String? errorCode;
  final String? errorMessage;

  ApiErrorEntity({this.errorCode, this.errorMessage});

  factory ApiErrorEntity.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorEntityFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorEntityToJson(this);
}
