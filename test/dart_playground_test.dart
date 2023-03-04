import 'package:dart_playground/regra_de_tres.dart';
import 'package:test/test.dart';

void main() {
  test('Falta de Parâmetro', () {
    expect(regraDeTres(), null);
  });
  test('regraDeTres', () {
    expect(
        regraDeTres(
          g11: 10,
          g12: 100,
          g22: 200,
        ),
        20);
    expect(
        regraDeTres(
          g12: 1,
          g21: 5,
          g22: 2,
        ),
        2.5);
  });
}
