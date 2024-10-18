import 'package:calculadora_sin_metodos/barril.dart';

String eligeOperacion() {
  String operacion = '';
  String texto;
  List listaOperaciones = ['/', 'x', '+', '-'];
  do {
    print('''Elija una operacion, solo se acepta:
    Sumar-> '+'
    Restar-> '-'
    Multiplicar -> 'x'
    Dividir -> '/'
  ''');
    texto = stdin.readLineSync() ?? '';

    for (String o in listaOperaciones) {
      if (texto == o) {
        operacion = o;
      }
    }
    if (operacion == '') {
      print('Upps , algo salió mal...');
    }
  } while (operacion == '');

  return operacion;
}
