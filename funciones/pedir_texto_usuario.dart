import '../barril.dart';

String getInputText(String mensaje) {
  String texto = '';
  print(mensaje);

  while (texto == '') {
    texto = stdin.readLineSync() ?? '';
    List<bool?> listaFun = [
     
      empiezaYtermunaNumer(texto),
      contCarValid(texto, FORMATO_VALIDO_NUMEROS_ESPANIA),
      masDeUnaComa(texto),
      
      enteroEspValido(texto)
     
    ];

    for (int i = 0; i < longitud(listaFun); i++) {
      print('--- el texto es $texto y la validacion es ${listaFun[i]}');
      if (!listaFun[i]!) {
        texto = '';
      }
      if (texto == '') {
        print('hubo un fallo en el sistema ingrese de nuevo un numero');
        break;
      }
    }
  }

  return texto;
}
