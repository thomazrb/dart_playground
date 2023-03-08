import 'package:dart_playground/cpf_check.dart';

//dv1: 1 * 10 + 6 * 9 + 5 * 8 + 9 * 7 + 4 * 6 + 1 * 5 + 0 * 4 + 3 * 3 + 4 * 2 = 213
//dv2: opa1 * 11 + 6 * 10 + 5 * 9 + 9 * 8 + 4 * 7 + 1 * 6 + 0 * 5 + 3 * 4 + 4 * 3 + 7 * 2 = 260

void main(List<String> arguments) {
  var cpf = Cpf('16594103474');

  print(cpf.getCpf());
  print(cpf.isValid());
}
