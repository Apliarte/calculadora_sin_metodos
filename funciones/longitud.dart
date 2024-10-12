import 'package:test_core/src/runner/hybrid_listener.dart';

import '../main.dart';

int longitud(x) {
  int long = 0;
  try {
    while (true) {
      
      x[long];
      long++;
    }
  } catch (e) {}

  return long;
}


