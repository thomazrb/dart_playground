import 'package:dart_playground/vigenere.dart';

void main(List<String> arguments) {
  String text = 'Hello World';
  print('AZ'.runes);
  var vigenere = Vigenere();
  String key = vigenere.getRandomKey(text);
  String encryptedText = vigenere.encode(text, key);
  String resultText = vigenere.decode(encryptedText, key);
  print("Text: $text");
  print("Key: $key");
  print("Encrypted: $encryptedText");
  print("Result: $resultText");
}
