import 'package:dio/dio.dart';
import 'package:funby/Commons/Constants.dart';
import 'package:retrofit/http.dart';

part 'Api.g.dart';

///
/// Implementación de consumo de RestAPI con retrofit.
/// Se requiere de la existencia de un documento 'Api.g.dart' para que retrofit
/// funcionamiene correctamente. Es autogenerado y no se debe borrar.
///
/// Documentación:
///     - https://pub.dev/packages/retrofit
///
@RestApi(baseUrl: Constants.baseURL)
abstract class RestClient {
  factory RestClient(Dio dio, {required String baseUrl}) = _RestClient;

  // @GET('/data.json?key=dd417cc0')
  // Future<MResponseList<MData>> getMockData();
}
