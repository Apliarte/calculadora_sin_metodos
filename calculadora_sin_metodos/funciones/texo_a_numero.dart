import '../barril.dart';

// Convierte un TEXTO VALIDO EN FORMATO ESPAÑOL a numero

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
  final longTexto = longitud(texto);
  //'123.21'->123.21
  String textConv = texto;
  int entero = 0;
  double decimal = 0.0;

  if (contienecaracterEnObjeto(',', texto) &&
      contienecaracterEnObjeto('.', texto)) {
    textConv = cambiarCaracterA(texto, '.', '');
    textConv = cambiarCaracterA(textConv, ',', '.');
  } else if (contienecaracterEnObjeto('.', texto)) {
    textConv = cambiarCaracterA(textConv, '.', '');
  } else if (contienecaracterEnObjeto(',', textConv)) {
    textConv = cambiarCaracterA(texto, ',', '.');
  }

  if (longitud(miSplit(textConv, '.')) == 2) {
    entero = textoToint(miSplit(textConv, '.')[0]);
    decimal = textoToDouble(miSplit(textConv, '.')[1]);
    double resu = entero + decimal;

    return resu;
  } else {
    entero = textoToint(textConv);

    return entero;
  }
}
