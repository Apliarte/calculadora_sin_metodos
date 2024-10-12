import '../barril.dart';

Map mapaNum = {
  '1': 1,
  '2': 2,
  '3': 3,
  '4': 4,
  '5': 5,
  '6': 6,
  '7': 7,
  '8': 8,
  '9': 9,
  '0': 0
};

// 1234.1234 ---> partir por el punto enteros y decimales

List miSlipt(String posicionMapaDart) {
  return [];
}
//PASAMOS DE TEXTO A NUMERO ENTERO SIN METODOS
int textoToint(String texto) {//'1234' a 1234
  int numEnteroConvertido = 0;
  int posicionMapa = 0;
  for (int i = 0; i < longitud(texto); i++) {
    while (texto[i] != '${mapaNum['$posicionMapa']}') {
      
     
      if (texto[i] == '${mapaNum['$posicionMapa']}') {
        numEnteroConvertido = mapaNum['$posicionMapa'];
      }
      posicionMapa++;
    }
  }

  //'1234'----> 1234 de String a int

  // 345 =5*0  + 4*10 + 3 * 100
  return numEnteroConvertido;
}

double textoToDouble(String textoposicionMapaDecimal) {
  double posicionMapa = 0;

  //'1234'----> 0.1234 de String a int

  // 345 =5/0  + 4/10 + 3 /100
  return posicionMapa;
}

num textoposicionMapa(String texto) {
  int entero = 0;
  double decimal = 0.0;

  return entero + decimal;
}
