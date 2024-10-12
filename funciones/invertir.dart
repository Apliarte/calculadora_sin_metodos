import 'longitud.dart';

 invertir(texto) {
  var invertida = '';
  for (int i = longitud(texto) - 1; i >= 0; i--) {
    invertida += texto[i];
  }

  return invertida;
}
