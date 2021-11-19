// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'MResponseList.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MResponseList<T> _$MResponseListFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object json) fromJsonT,
) {
  return MResponseList<T>(
    status: json['status'] as int,
    statusCode: json['statusCode'] as int,
    currentData: (json['data'] as List).map((i) => fromJsonT(i)).toList(),
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$MResponseListToJson<T>(
  MResponseList<T> instance,
  Object Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'status': instance.status,
      'data': instance.currentData.map(toJsonT).toList(),
      'message': instance.message,
    };
