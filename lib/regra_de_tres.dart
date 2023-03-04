double? regraDeTres({double? g11, double? g12, double? g21, double? g22}) {
/*
   g11 --- g12
   g21 --- g22
*/
  if (g11 == null) {
    if (g12 == null || g21 == null || g22 == null) {
      print('Número de parâmetros inválido');
      return null;
    } else {
      return g21 * g12 / g22;
    }
  } else if (g12 == null) {
    if (g21 == null || g22 == null) {
      print('Número de parâmetros inválido');
      return null;
    } else {
      return g11 * g22 / g21;
    }
  } else if (g21 == null) {
    if (g22 == null) {
      print('Número de parâmetros inválido');
      return null;
    } else {
      return g11 * g22 / g12;
    }
  } else if (g22 == null) {
    return g21 * g12 / g11;
  }
}
