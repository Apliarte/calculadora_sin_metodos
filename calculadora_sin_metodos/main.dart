import 'barril.dart';

const FORMATO_VALIDO_NUMEROS_ESPANIA = '1234567890,.';
const FORMATO_VALIDO_NUMEROS_ENTEROS = '1234567890';
const mapaNum = {
  '1': 1,
  '2': 2,
  '3': 3,
  '4': 4,
  '5': 5,
  '6': 6,
  '7': 7,
  '8': 8,
  '9': 9,
  '0': 0
};

void main() {
  String texto1 = getInputText('Escriba el primer numero');
  String texto2 = getInputText('Escriba el SEGUNDO numero');
  String operador = eligeOperacion();
  num num1 = convertirTextoNumDart(texto1);
  num num2 = convertirTextoNumDart(texto2);

  num resultado = operacion(operador, num1, num2);
  //TODO numero resultado a texto resultado
  print('El resultado de $num1 $operador $num2 = $resultado');
}


      
//todo: 0.987,345  este da error

// para entrar en el terminal el atajo de teclado es ctrl + '