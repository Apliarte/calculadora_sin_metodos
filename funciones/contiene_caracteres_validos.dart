import '../barril.dart';

bool contCarValid(String texto,  carcValidos) {
  for (int i = 0; i < longitud(texto); i++) {
    if (!caracterEnObjeto(texto[i], carcValidos)) {
      return false;
    }
  }
  return true;
}
