import '../../barril.dart';
// esta funcion comprueba si UN CARACTER esta en una cadena de caracteres validos

bool noContienecaracterEnObjeto(String caracter, String caracteresValidos) {
  int longCarcateres = longitud(caracteresValidos);
 
  for (int i = 0; i < longCarcateres; i++) {
    if (caracter == caracteresValidos[i]) {
      return true;
    }
  }

  return false;
}

// esta funcion comprueba si TODOS LOS CARACTERES de una cadena estan en una cadena de caracteres validos
bool contieneCarValid(String texto, String carcValidos) {
  for (int i = 0; i < longitud(texto); i++) {
    if (!noContienecaracterEnObjeto(texto[i], carcValidos)) {
      return false;
    }
  }
  return true;
}
