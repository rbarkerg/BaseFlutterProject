import 'package:funby/api/Api.dart';
import 'package:get/get.dart';

import 'ApiProvider.dart';
import 'Enums/Status.dart';

///
/// View Model base para respuestas generales.
/// Contiene atributos y métodos utilizables por cualquier otro View Model.
///
/// Programación reactiva:
/// La aplicación de la programación reactiva se puede hacer de varias maneras,
/// pero se opta por una arquitectura que usa RxDart con StreamBuilder para
/// escuchar el cambio de estados en los Widgets de la UI.
///
/// Documentación:
///     - https://pub.dev/packages/rxdart
///     - https://medium.com/flutter-community/flutter-stream-basics-for-beginners-eda23e44e32f
///
class BaseViewModel {
  // Atributos de datos y estado de la transacción.
  final RestClient apiProvider = ApiProvider.sharedInstance.client;
  final status = Status.idle.obs;
  final errorSignal = "".obs;
}
