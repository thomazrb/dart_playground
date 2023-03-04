int fibonacci(int n) {
  int fnminus2 = 0;
  int fnminus1 = 1;
  int fn = 0;
  if (n < 1) {
    // nenhum termo...
    return 0;
  } else if (n < 3) {
    // termo 1 e 2... são fixos em 0 e 1.
    return n - 1;
  } else {
    // demais termos
    for (int i = 2; i < n; i++) {
      fn = fnminus2 + fnminus1;
      fnminus2 = fnminus1;
      fnminus1 = fn;
    }
    return fn;
  }
}
