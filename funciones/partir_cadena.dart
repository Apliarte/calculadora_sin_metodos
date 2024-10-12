import 'package:test_core/src/util/print_sink.dart';

import '../barril.dart';

List miSplit(String texto, String car) {
  List<String> lista = []; //'1,2,3,4,5,6'
  String cadena = '';
  for (int i = 0; i < longitud(texto); i++) {
    print(lista);
    print(cadena);
   
    if (texto[i] == car) {
      lista += [car];
      cadena = '';
    } if (cadena != '') {
      cadena = cadena+texto[i];
    }
  }
  if (cadena != '') {
    lista += [cadena];
  }
  return lista;
}
