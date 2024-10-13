import '../barril.dart';

bool caracterEnObjeto(String caracter,  caracteresValidos) {
for (int i = 0; i < longitud(caracteresValidos); i++) {
    if (caracter == caracteresValidos[i]) {
    return true;}
  }
  return false;
}
