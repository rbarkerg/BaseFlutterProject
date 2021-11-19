// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'MResponseObject.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MResponseObject<T> _$MResponseObjectFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object json) fromJsonT,
) {
  return MResponseObject<T>(
    status: json['status'] as String,
    statusCode: json['statusCode'] as int,
    currentData: fromJsonT(json['data']),
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$MResponseObjectToJson<T>(
  MResponseObject<T> instance,
  Object Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'status': instance.status,
      'data': toJsonT(instance.currentData),
      'message': instance.message,
    };
