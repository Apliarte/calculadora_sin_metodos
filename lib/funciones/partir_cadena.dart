import '../../barril.dart';
//divide una cadena en partes de una lista usando el caracter indicado y eliminando este
List miSplit(String texto, String car) {
  List<String> lista = []; //'1,2,3,4,5,6' car es ','
  String cadena = '';
  int longDeTexto= longitud(texto);
  for (int i = 0; i < longDeTexto; i++) {
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
