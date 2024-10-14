import '../barril.dart';
// esta funcion comprueba si un caracter o cadena aparece en una cadena  

bool caracterEnObjeto(String texto, String caracteresValidos) {
  for (int i = 0; i < longitud(caracteresValidos); i++) {
    if (texto == caracteresValidos[i]) {
      return true;
    }
  }
  return false;
}
