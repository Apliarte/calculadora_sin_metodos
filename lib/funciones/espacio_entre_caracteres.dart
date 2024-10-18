import '../../barril.dart';

bool espacioMaximoEntreCaracteres(int numMax, String car, String texto) {
//12.12.12.
  int espacios = 0;
  int longDeTexto = longitud(texto);
  if (noContienecaracterEnObjeto(car, texto)) {
    for (int i = 0; i < longDeTexto; i++) {


      if (espacios > numMax) {

        return false;
      } else if (texto[i] == car) {
        espacios = 0;
      } else {
        espacios++;
      }
    }
  } 

  return espacios <= numMax;
}
//234.000.000