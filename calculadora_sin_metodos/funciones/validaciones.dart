import '../barril.dart';

bool empiezaYtermunaNumer(texto) {
  print('empiezaYtermunaNumer');
  if (texto[0] == '.') {
    return false;
  }
  if (texto[0] == ',') {
    return false;
  }

  if (texto[longitud(texto) - 1] == '.') {
    return false;
  }
  if (texto[longitud(texto) - 1] == ',') {
    return false;
  }
  return true;
}

// comprueba que el texto solo contiene carecteres validos

bool unaComaOninguna(String texto) {
  return cuentaCarEnObjeto(',', texto) < 2;
}

bool posicionCorrectaPuntoComa(String texto) {
  print('posicionCorrectaPuntoComa');
  bool tienePunto = contienecaracterEnObjeto('.', texto);
  bool tieneComas = contienecaracterEnObjeto(',', texto);
  print('tienePunto $tienePunto');
  print('tieneComas $tieneComas');
  if (!tieneComas && !tienePunto) {
    print('Ni puntos ni comas');
    //CHAT ¿ESTA COMPROVACION SERIA CORRECTA AQUI?
    return true;
  }
  if (tieneComas && tienePunto) {
    print('tiene Coma y punto');
    print('antes de ');
    if (!espacioMaximoEntreCaracteres(3, '.', miSplit(texto, ',')[0])) {
      return false;
    }
    if (miSplit(texto, ',')[0] == '0') {
      return false;
    }
    if (miSplit(texto, '.')[0] == '0') {
      return false;
    }

    return true;
  }
  if (tienePunto) {
    print('tienePunto');
    // aqui ya sabemos que no tiene coma
    if (!espacioMaximoEntreCaracteres(3, '.', texto)) {
      return false;
    } else if (espacioMaximoEntreCaracteres(2, '.', texto)) {
      return false;
    }
  }
  if (tieneComas) {
    print('tieneComa');
    // si tiene comas es por ya aqui estamos seguros de que solo tiene coma
    if (longitud(miSplit(texto, ',')) > 1) {
      if (longitud(miSplit(texto, ',')) == 2) {
        if (contienecaracterEnObjeto('.', miSplit(texto, ',')[1])) {
          return false;
        }
      }
    }
  }

  return true;
}

bool sinPuntosComasSeguidos(String texto) {
  print('sinPuntosComasSeguidos');
  int longText = longitud(texto) - 1;

  for (int i = 0; i < longText; i++) {
    if (contienecaracterEnObjeto(texto[i], '.,') == true &&
        contienecaracterEnObjeto(texto[i + 1], ',.') == true) {
      return false;
    }
  }
  return true;
}
