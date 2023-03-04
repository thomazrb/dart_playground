import 'package:dart_playground/fibonacci.dart';
import 'package:dart_playground/fibonacci_recursiva.dart';
import 'package:test/test.dart';

void main() {
  test('Fibonacci', () {
    expect(fibonacci(7), 8);
  });
  test('Fibonacci Recursiva', () {
    expect(fibonacciRecursiva(7), 8);
  });
}
