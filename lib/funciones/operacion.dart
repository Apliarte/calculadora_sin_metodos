num operacion(String operador, num num1, num num2) {
  num resultado = 0;
  if (operador == '+') {
    resultado = num1 + num2;
  }
  if (operador == '-') {
    resultado = num1 - num2;
  }
  if (operador == 'x') {
    resultado = num1 * num2;
  }
  if (operador == '/') {
    resultado = num1 / num2;
  }

  return resultado;
}
