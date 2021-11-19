import 'package:json_annotation/json_annotation.dart';

part 'MResponseList.g.dart';

///
/// Modelo genérico para respuestas tipo lista.
/// Requiere de 'MResponseList.g.dart' debido a la implementación de retrofit.
/// Como parte de la implementación, se crean modelos genéricos para manejar
/// la respuesta del servidor, este caso es el modelo genérico para respuestas
/// tipo Lista de Objetos.
///
/// Documentación:
///     - https://pub.dev/packages/retrofit/example
///     - https://stackoverflow.com/questions/64198719/generic-class-in-flutter
///     - https://pub.dev/packages/json_serializable
///
@JsonSerializable(genericArgumentFactories: true)
class MResponseList<T> {
  @JsonKey(name: 'statusCode')
  var statusCode = 1;

  @JsonKey(name: 'status')
  var status = 0;

  @JsonKey(name: 'data')
  var currentData = <T>[];

  @JsonKey(name: 'message')
  var message = "";

  MResponseList(
      {required this.status,
      required this.statusCode,
      required this.currentData,
      required this.message});

  factory MResponseList.fromJson(
          Map<String, dynamic> json, T Function(Object json) fromJsonT) =>
      _$MResponseListFromJson<T>(json, fromJsonT);
  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$MResponseListToJson(this, toJsonT);
}
