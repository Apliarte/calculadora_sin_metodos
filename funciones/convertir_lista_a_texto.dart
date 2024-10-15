import '../barril.dart';

String convertirListaTexto(List textoLista, String texto) {
  String nuevoTexto = '';

  for (int i = 0; i < longitud(textoLista); i++) {
    nuevoTexto += textoLista[i];
  }
  return nuevoTexto;
}
