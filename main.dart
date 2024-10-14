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

 String num1 = getInputText('Escriba el primer numero'); 
  String num2 = getInputText('Escriba el SEGUNDO numero');
  

  num resultado = convertirTextoNumDart(num1) + convertirTextoNumDart(num2);
  print('El resultado es $resultado'); 
}
