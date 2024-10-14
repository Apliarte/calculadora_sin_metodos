import '../barril.dart';

bool empiezaYtermunaNumer(texto) {
  return contCarValid(texto[0], FORMATO_VALIDO_NUMEROS_ENTEROS)&&
  contCarValid(texto[longitud(texto)-1], FORMATO_VALIDO_NUMEROS_ENTEROS);
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
