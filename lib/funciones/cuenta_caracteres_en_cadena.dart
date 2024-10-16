import '../../barril.dart';

int cuentaCarEnObjeto(String car, String texto) {
  int n = 0;
  for (int i = 0; i < longitud(texto); i++) {
    if (texto[i] == car) {
      n++;
    }
  }
  return n;
}
