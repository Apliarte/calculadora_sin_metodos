import '../barril.dart';
// esta funcion invierte los caracteres del la cadena que se introduzca
 invertirTexto(texto) {
  var invertida = '';
  for (int i = longitud(texto) - 1; i >= 0; i--) {
    invertida += texto[i];
  }

  return invertida;
}
