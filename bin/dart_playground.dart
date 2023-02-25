double imc(double peso, double altura) {
  return peso / (altura * altura);
}

// 0, 1, 1, 2, 3, 5, 8, 13...
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

int fibonacci_recursiva(int n) {
  if (n < 1) {
    // nenhum termo...
    return 0;
  } else if (n < 3) {
    // termo 1 e 2... são fixos em 0 e 1.
    return n - 1;
  } else {
    return fibonacci_recursiva(n - 1) + fibonacci_recursiva(n - 2);
  }
}

void main(List<String> arguments) {
  double peso = 95;
  double altura = 1.78;
  int n = 7;
  print(
      'O IMC para um peso de $peso kg e uma altura de $altura m é ${imc(peso, altura)}.');

  print('O termo número $n da sequencia de Fibonacci é ${fibonacci(n)}.');
  print(
      'O termo número $n da sequencia de Fibonacci (função recursiva) é ${fibonacci_recursiva(n)}.');
}
