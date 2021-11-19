import 'package:dio/dio.dart';
import '../api/Api.dart';
import 'Constants.dart';

///
/// Definición del provider para consumo de servicios.
/// Permite comunicar a los ViewModels o los Repositorios con el RestClient.
/// La implementación es similar a la de los proyectos Android e iOS.
///
class ApiProvider {
  static BaseOptions options = new BaseOptions(baseUrl: Constants.baseURL);

  static final dio = Dio(options);

  final client = RestClient(dio, baseUrl: Constants.baseURL);

  ApiProvider._internal() {
    dio.options.headers = {
      "x-token": "MUser.sharedInstance.token",
      "Content-Type": "application/json"
    };
    dio.interceptors.add(LogInterceptor(responseBody: false));
  }

  factory ApiProvider() {
    return sharedInstance;
  }

  static final ApiProvider sharedInstance = new ApiProvider._internal();
}
