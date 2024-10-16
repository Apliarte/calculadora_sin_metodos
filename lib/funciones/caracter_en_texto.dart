import '../../barril.dart';
// esta funcion comprueba si un caracter o cadena aparece en una cadena

bool caracterEnObjeto(String caracter, String caracteresValidos) {
  for (int i = 0; i < longitud(caracteresValidos); i++) {
    if (caracter == caracteresValidos[i]) {
      return true;
    }
  }
  print('El caracter $caracter no se encuntra en $caracteresValidos');
  return false;
}
