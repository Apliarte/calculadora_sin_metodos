
import '../barril.dart';

String getInputText() {
  print('por favor, ingrese un texto EN FORMATO ESPAÑOL');

  String texto = stdin.readLineSync() ?? '';


  return texto;
}
