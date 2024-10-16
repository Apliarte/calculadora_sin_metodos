import '../../barril.dart';

bool espacioMaximoEntreCaracteres(int numMax, String car, String texto) {
//12.12.12.
  int espacios = 0;
  if (caracterEnObjeto(car, texto)) {
    for (int i = 0; i < longitud(texto); i++) {
      print('espacios $espacios');

      if (espacios > numMax) {
        print('hay mas de $numMax entre $car');
        return false;
      } else if (texto[i] == car) {
        espacios = 0;
      } else {
        espacios++;
      }
    }
  } else {
    print('$texto no contiene $car');
  }

  return espacios <= numMax;
}
//234.000.000