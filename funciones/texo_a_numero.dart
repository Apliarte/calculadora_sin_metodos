import '../barril.dart';
import '../main.dart';
// 1234.1234 ---> partir por el punto enteros y decimales



int textoToint(texto) {
  print('textotexto $texto');
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
    print(div);
  }
  decimal = textoToint(texto) /textoToint(div);
  return decimal;
}

num convertirTextoNumDart(String texto) {
  int entero = 0;
  double decimal = 0.0;
  if(caracterEnObjeto('.',texto)){


  }

  return entero + decimal;
}
