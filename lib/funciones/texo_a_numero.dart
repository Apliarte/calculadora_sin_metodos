import '../../barril.dart';

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
  //'123.21'->123.21
  String textConv = texto;
  int entero = 0;
  double decimal = 0.0;
  print('convertirTextoNumDart  .  --- ${caracterEnObjeto('.', texto)}');
  print('convertirTextoNumDart  ,  --- ${caracterEnObjeto(',', texto)}');
  if (caracterEnObjeto(',', texto) && caracterEnObjeto('.', texto)) {
    textConv = cambiarCaracterA(texto, '.', '');
    textConv = cambiarCaracterA(textConv, ',', '.');
  } else if (caracterEnObjeto('.', texto)) {
  textConv = cambiarCaracterA(textConv, '.', '');
  } else if (caracterEnObjeto(',', textConv)) {
    textConv = cambiarCaracterA(texto, ',', '.');
    
  }

  print('texto antes de combertir $texto');
  print('textConv antes de combertir $textConv');
  if (longitud(miSplit(textConv, '.')) == 2) {
    entero = textoToint(miSplit(textConv, '.')[0]);
    decimal = textoToDouble(miSplit(textConv, '.')[1]);
    double resu = entero + decimal;
    print('texto if de combertir $texto');
    print('textConv if de combertir $textConv');
    return resu;
  } else {
    entero = textoToint(textConv);
    print('texto else de combertir $texto');
    print('textConv else de combertir $textConv');
    return entero;
  }
}
