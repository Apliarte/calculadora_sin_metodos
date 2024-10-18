import '../../barril.dart';

bool empiezaYtermunaNumer(texto) {
  if (!noContienecaracterEnObjeto(texto[0], FORMATO_VALIDO_NUMEROS_ENTEROS)) {
    return false;
  }

  if (!noContienecaracterEnObjeto(
      texto[longitud(texto) - 1], FORMATO_VALIDO_NUMEROS_ENTEROS)) {
    return false;
  }
  return true;
}

// comprueba que el texto solo contiene carecteres validos

bool unaComaOninguna(String texto) {
  return cuentaCarEnObjeto(',', texto) < 2;
}

bool posicionCorrectaPuntoComa(String texto) {
  bool tienePunto = noContienecaracterEnObjeto(
    '.',
    texto,
  );
  //TODO CORREGIR LA LOGICA DE LA FUNCION caracterEnObjeto
  bool tieneComas = noContienecaracterEnObjeto(
    ',',
    texto,
  );
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
    if (miSplit(texto, ',')[1] != '') {
      if (!noContienecaracterEnObjeto('.', miSplit(texto, ',')[1] ?? ['0'])) {
        return false;
      }
    }

    if (miSplit(miSplit(texto, ',')[1], '.')[0] == '0') {
      return false;
    }
    if (!espacioMaximoEntreCaracteres(3, '.', miSplit(texto, ',')[0])) {
      return false;
    }

    if (miSplit(texto, ',')[0] == '0') {
      return false;
    }
  }
  if (tienePunto) {
    print('tienePunto');
    // aqui ya sabemos que no tiene coma
    if (!espacioMaximoEntreCaracteres(3, '.', texto)) {
      return false;
    }
  }
  if (tieneComas) {
    print('tieneComa');
    // si tiene comas es por ya aqui estamos seguros de que solo tiene coma
    if (longitud(miSplit(texto, ',')) > 2) {
      return false;
    }
  }

  return true;
}

bool sinPuntosComasSeguidos(String texto) {
  //1,.1=false
  int longText = longitud(texto) - 1;

  for (int i = 0; i < longText; i++) {
    if (noContienecaracterEnObjeto(texto[i], '.,') == true &&
        noContienecaracterEnObjeto(texto[i + 1], ',.') == true) {
      return false;
    }
  }
  return true;
}
