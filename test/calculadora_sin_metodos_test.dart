import 'package:test/test.dart';

import '../funciones/calculadora_sin_metodos.dart';

void main() {
  test('calculate', () {
    expect(calculate(), 42);
  });
}
