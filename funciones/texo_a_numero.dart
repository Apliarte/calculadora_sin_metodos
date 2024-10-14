
import '../barril.dart';

// 1234.1234 ---> partir por el punto enteros y decimales

int textoToint(texto) {
  int numEnt = 0;
  for (int i = 0; i < longitud(texto); i++) {
    numEnt = 10 * numEnt + mapaNum[texto[i]]!;
  }
  return numEnt;
}

double textoToDouble(String texto) {
  //12345-->0,12345
  double decimal = 0.0;
  String div = '1';
  for (int i = 0; i < longitud(texto); i++) {

    div += '0';
  }
  decimal = textoToint(texto) / textoToint(div);
  return decimal;
}

num convertirTextoNumDart(String texto) {
  //'123.21'->123.21
  int entero = 0;
  double decimal = 0.0;

  if (longitud(miSplit(texto, '.')) == 2) {
    entero = textoToint(miSplit(texto, '.')[0]);
    decimal = textoToDouble(miSplit(texto, '.')[1]);
    double resu = entero + decimal;
    return resu;
  } else {
    entero = textoToint(texto);
    return entero;
  }
}
