/*
xxx.xxx.xxx 
1098 765 432
*/
bool cpfCheck(String cpf) {
  if (cpf.length != 11) {
    return false;
  } else {
    int weight = 10;
    int sum = 0;
    int dv;
    for (int n = 0; n < 9; n++) {
      sum += int.parse(cpf[n]) * weight;
      weight--;
    }
    if (sum % 11 < 2) {
      dv = 0;
    } else {
      dv = 11 - sum % 11;
    }

    if (dv != int.parse(cpf[9])) {
      return false;
    } else {
      int weight = 11;
      int sum = 0;
      int dv;
      for (int n = 0; n < 10; n++) {
        sum += int.parse(cpf[n]) * weight;
        weight--;
      }
      if (sum % 11 < 2) {
        dv = 0;
      } else {
        dv = 11 - sum % 11;
      }

      if (dv != int.parse(cpf[10])) {
        return false;
      } else {
        return true;
      }
    }
  }
}
