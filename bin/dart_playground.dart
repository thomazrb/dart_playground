import 'package:dart_playground/imc.dart';

void main(List<String> arguments) {
  double peso = 95;
  double altura = 1.78;
  print(
      'O IMC para um peso de $peso kg e uma altura de $altura m é ${imc(peso, altura)}.');
}
