bool ccCheck(String ccNumber) {
  ccNumber = ccNumber.replaceAll(' ', '');
  if (ccNumber.length != 16) {
    return false;
  }
  if (ccNumber[15] != '0') {
    return false;
  }
  int sum = 0;
  for (int i = 0; i <= 14; i++) {
    int result = 0;
    if (i % 2 == 0) {
      result = int.parse(ccNumber[i]) * 2;
      if (result.toString().length == 2) {
        result =
            int.parse(result.toString()[0]) + int.parse(result.toString()[1]);
      }
      //print('Digito: ${ccNumber[i]}   -> $result (par)');
    } else {
      result = int.parse(ccNumber[i]);
      //print('Digito: ${ccNumber[i]}   -> $result (impar)');
    }
    sum = sum + result;
  }

  //print('Soma: $sum');
  int dv = 10 - sum % 10;
  if (dv == 0 || dv == 10) {
    return true;
  }
  return false;
}
