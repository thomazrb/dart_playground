import 'package:dart_playground/cc_check.dart';

void main(List<String> arguments) {
  String cc1 = '5419 8250 0346 1210'; //invalid
  String cc2 = '4916 6418 5936 9080'; //valid

  print(ccCheck(cc1));
  print(ccCheck(cc2));
}
