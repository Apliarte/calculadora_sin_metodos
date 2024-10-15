import '../barril.dart';

String cambiarCaracterA(String texto, String oldCar, String newCar) {
  print(texto);
  List textoLista = miSplit(texto, '');
  print(textoLista);
  for (int i = 0; i < longitud(textoLista); i++) {
    print(oldCar);
    print(newCar);
    print(textoLista[i] == oldCar);
    if (textoLista[i] == oldCar) {
      textoLista[i] = newCar;
    }
  }
  texto = convertirListaTexto(textoLista, texto);
  return '';
}
