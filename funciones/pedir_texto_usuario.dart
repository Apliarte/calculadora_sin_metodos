import '../barril.dart';

String getInputText(String mensaje) {
  String texto;
  print(mensaje);
  do {
    texto = stdin.readLineSync() ?? '';
    if (texto == '') {
      print('hubo un fallo en el sistema ingrese de nuevo un numero');
    }
  } while (texto == '');

  return texto;
}
