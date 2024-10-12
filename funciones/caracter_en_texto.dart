import '../barril.dart';
import 'longitud.dart';

bool caracterEnObjeto(String caracter,  caracteresValidos) {
if(caracteresValidos is Map){
    for (int i = 0; i < longitud(caracteresValidos); i++) {
      if (caracter == '${caracteresValidos['$i']}') {
        return true;
      }
    }
}else
  {for (int i = 0; i < longitud(caracteresValidos); i++) {
    if (caracter == caracteresValidos[i]) {
    return true;}
  }}
  return false;
}
