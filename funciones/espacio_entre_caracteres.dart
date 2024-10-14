import '../barril.dart';

bool espacioMaximoEntreCaracteres(int numEspacios, String car, String texto) {
  int espacios = 0;
  if(contCarValid(texto, '.')){
  
   for (int i = 0; i < longitud(texto); i++) {
    if (texto[i] == car) {
      espacios = 0;
    }
    if (espacios > numEspacios) {
      return false;
    } else {
      espacios++;
    }

  }
  
  }
 
  return espacios <= numEspacios;
}
//234.000.000