import 'funciones/comprobar_contiene_caracter.dart';
import 'funciones/longitud.dart';
import 'funciones/pedir_texto_usuario.dart';

const FORMATO_VALIDO_NUMEROS_ESPANIA = '1234567890,.';
const FORMATO_VALIDO_NUMEROS_ENTEROS = '1234567890';
void main() {
  print(textoContieneCaractere('3',FORMATO_VALIDO_NUMEROS_ENTEROS));
}
