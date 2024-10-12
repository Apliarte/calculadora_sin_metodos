import '../barril.dart';

List miSplit(String texto, String car) {
  List<String> lista = []; //'1,2,3,4,5,6' car es ','
  String cadena = '';
  for (int i = 0; i < longitud(texto); i++) {
    if (texto[i] == car) {
        if (cadena != '') {
        lista += [cadena];
      }
      
      cadena = '';
    } else {
      
      cadena += texto[i];

    }
  }
  if (cadena != '') {
    lista += [cadena];
  }
  return lista;
}
