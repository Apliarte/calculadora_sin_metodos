import '../barril.dart';

String cambiarCaracterA(String texto, String oldCar, String newCar) {
  String textoNuevo = '';

  for (int i = 0; i < longitud(texto); i++) {
    if (texto[i] == oldCar) {
      textoNuevo += newCar;
    } else {
      textoNuevo += texto[i];
    }
  }
  return textoNuevo;
}
