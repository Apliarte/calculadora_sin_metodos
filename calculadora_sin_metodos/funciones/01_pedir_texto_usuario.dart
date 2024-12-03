import '../barril.dart';

String getInputText(String mensaje) {
  String texto = '';
  print(mensaje);

  while (texto == '') {
    texto = stdin.readLineSync() ?? '';
    List<bool?> listaFun = [
      empiezaYtermunaNumer(texto),
      contieneCarValid(texto, FORMATO_VALIDO_NUMEROS_ESPANIA),
      sinPuntosComasSeguidos(texto),
      posicionCorrectaPuntoComa(texto),
    ];

    for (bool? boleano in listaFun) {
      print('--- el texto es $texto y la validacion es $boleano');
      if (!boleano!) {
        texto = '';
      }
      if (texto == '') {
        print(
            'Asegúrese de que el número esté en formato español, por ejemplo 1.234.567,89');
        break;
      }
    }
  }                           

  return texto;
}
