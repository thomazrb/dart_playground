import 'package:dart_playground/fibonacci.dart';
import 'package:dart_playground/fibonacci_recursiva.dart';

// 0, 1, 1, 2, 3, 5, 8, 13...

void main(List<String> arguments) {
  int n = 7;
  print('O termo número $n da sequencia de Fibonacci é ${fibonacci(n)}.');
  print(
      'O termo número $n da sequencia de Fibonacci (função recursiva) é ${fibonacciRecursiva(n)}.');
}
