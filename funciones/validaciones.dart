import '../barril.dart';

bool empiezaYtermunaNumer(texto) {
  return contCarValid(texto[0], FORMATO_VALIDO_NUMEROS_ENTEROS) &&
      contCarValid(texto[longitud(texto) - 1], FORMATO_VALIDO_NUMEROS_ENTEROS);
}

bool contCarValid(String texto,String carcValidos) {
  for (int i = 0; i < longitud(texto); i++) {
    if (!caracterEnObjeto(texto[i], carcValidos)) {
      return false;
    }
  }
  return true;
}

bool masDeUnaComa(String texto) {
  return cuentaCarEnObjeto(',', texto) < 2;
}

bool enteroEspValido(String texto) {
  //ORGANIZAR QUE ESTA MAL
  //

  if (contCarValid(texto, '.')) {
    List listaMensTers = miSplit(texto, '.');
    if (longitud(listaMensTers) > 1) {
      if (espacioMaximoEntreCaracteres(3, '.', texto)) {
        for (int i = 1; i < longitud(listaMensTers); i++) {
          print(listaMensTers[i]);
          if (listaMensTers[i] != 3) {
            return false;
          }
        }
      }
    }
  }

  return true;
}




// Un For recorre una lista de funciones