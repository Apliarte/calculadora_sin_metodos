import '../barril.dart';

bool contCarValid(String texto, String carcValidos) {
  for (int i = 0; i < longitud(texto); i++) {
    if (!caracterEnTexto(texto[i], carcValidos)) {
      return false;
    }
  }
  return true;
}
