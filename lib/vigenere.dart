import 'dart:math';

class Vigenere {
  String getRandomKey(String text) {
    String key = '';
    for (int i = 0; i < text.length; i++) {
      Random rnd = Random();
      String randomChar = String.fromCharCode(65 + rnd.nextInt(26));
      key = key + randomChar;
    }
    return key;
  }

  String encode(String text, String key) {
    String plain = text.toUpperCase();
    var plainList = plain.runes.toList();
    var keyList = key.runes.toList();
    String encrypted = '';
    for (int i = 0; i < text.length; i++) {
      String encryptedChar;
      if (plainList[i] >= 65 && plainList[i] <= 90) {
        encryptedChar =
            String.fromCharCode((plainList[i] + keyList[i]) % 26 + 65);
      } else {
        encryptedChar = String.fromCharCode(plainList[i]);
      }
      encrypted = encrypted + encryptedChar;
    }
    return encrypted;
  }

  String decode(String text, String key) {
    String encrypted = text.toUpperCase();
    var encryptedList = encrypted.runes.toList();
    var keyList = key.runes.toList();
    String plain = '';
    for (int i = 0; i < text.length; i++) {
      String plainChar;
      if (encryptedList[i] >= 65 && encryptedList[i] <= 90) {
        plainChar = String.fromCharCode(
            ((encryptedList[i] - keyList[i]) + 26) % 26 + 65);
      } else {
        plainChar = String.fromCharCode(encryptedList[i]);
      }
      plain = plain + plainChar;
    }
    return plain;
  }
}
