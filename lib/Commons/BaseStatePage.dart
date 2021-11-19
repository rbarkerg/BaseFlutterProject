///
/// Plantilla de métodos para los PageState de la UI.
/// No necesariamente se deben implementar en ellas, pero debido a que los Page
/// son inmutables, generan problemas con atributos variables.
/// Se implementa en los StatePages.
/// 
abstract class BaseStatePage {
  void initRequired();
  void getData();
}
