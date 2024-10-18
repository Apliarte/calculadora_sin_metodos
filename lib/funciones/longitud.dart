//devuelve el numero de caracteres de una cadena o lista

int longitud1(List x) {
  int contador = 0;
  for (var elemento in x) {
    contador++; // Contamos los elementos uno a uno
  }
  return contador; // Devolvemos el total
}

/* 
 print(longitud('12345'));
  print(longitud1('12345'));
  
   */
int longitu(x) {
  return x.length;
}

int longitud(x) {
  int long = 0;
  try {
    while (true) {
      x[long]; // Accedemos al índice
      long++;
    }
  } catch (e) {
    if (e is RangeError) {
      // Cuando ocurre un RangeError, devolvemos la longitud
      return long;
    } else {
      rethrow; // Si es otro tipo de excepción, la volvemos a lanzar
    }
  }
}
