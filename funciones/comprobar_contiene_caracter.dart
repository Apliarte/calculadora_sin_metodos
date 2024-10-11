import 'longitud.dart';

bool textoContieneCaractere(String caracter, String caracteresValidos) {
  for (int i = 0; i < longitud(caracteresValidos); i++) {
    if (caracter == caracteresValidos[i]) {
    return true;}
  }
  return false;
}
