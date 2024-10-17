import '../../barril.dart';

bool empiezaYtermunaNumer(
  texto,
) {
  return contieneCarValid(texto[0], FORMATO_VALIDO_NUMEROS_ENTEROS) &&
      contieneCarValid(
          texto[longitud(texto) - 1], FORMATO_VALIDO_NUMEROS_ENTEROS);
}

// comprueba que el texto solo contiene carecteres validos

bool unaComaOninguna(String texto) {
  return cuentaCarEnObjeto(',', texto) < 2;
}

bool posicionCorrectaPuntoComa(String texto) {
  bool tienePunto = !caracterEnObjeto(texto, '.');
  //TODO CORREGIR LA LOGICA DE LA FUNCION caracterEnObjeto
  bool tieneComas = !caracterEnObjeto(texto, ',');
  print('tieneComas $tienePunto');
  print('tieneComas $tieneComas');
  if (!tieneComas && !tienePunto) {
    print('Ni puntos ni comas');
    //CHAT ¿ESTA COMPROVACION SERIA CORRECTA AQUI?
    return true;
  }  if (tienePunto) {
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
  } if(tieneComas && tienePunto) {
    print('tiene Coma y punto');
    if (contieneCarValid(miSplit(texto, ',')[1], '.')) {
      return false;
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

  return true;
}

bool sinPuntosComasSeguidos(String texto) {
  //1,.1=false
  int longText = longitud(texto) - 1;

  for (int i = 0; i < longText; i++) {
    if (caracterEnObjeto(texto[i], '.,') == true &&
        caracterEnObjeto(texto[i + 1], ',.') == true) {
      return false;
    }
  }
  return true;
}
