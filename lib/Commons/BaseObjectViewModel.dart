import "package:get/get.dart";

import 'BaseViewModel.dart';

///
/// View Model base para respuestas tipo Lista de Objetos.
/// Contiene atributos y métodos generales que se pueden usar a lo largo del
/// proyecto.
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
class BaseListViewModel<T> extends BaseViewModel {
  // Dato con formato recuperado del servicio.
  final currentData = T.obs;
}
