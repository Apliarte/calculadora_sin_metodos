import '../barril.dart';



bool empiezaNumer(texto) {
  return false;
}

bool terminaNumer(texto) {
  return false;
}

bool contCarValid(String texto, carcValidos) {
  for (int i = 0; i < longitud(texto); i++) {
    if (!caracterEnObjeto(texto[i], carcValidos)) {
      return false;
    }
  }
  return true;
}
