int fibonacciRecursiva(int n) {
  if (n < 1) {
    // nenhum termo...
    return 0;
  } else if (n < 3) {
    // termo 1 e 2... são fixos em 0 e 1.
    return n - 1;
  } else {
    return fibonacciRecursiva(n - 1) + fibonacciRecursiva(n - 2);
  }
}
