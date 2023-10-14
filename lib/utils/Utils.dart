import 'dart:convert';
import 'dart:io';

class Utils {
  static String lerConsoleTexto(String texto) {
    print(texto);
    return stdin.readLineSync(encoding: utf8) ?? '';
  }

  static double lerConsoleTextoConverterDouble(String texto) {
    print(texto);
    return double.parse(stdin.readLineSync(encoding: utf8) ?? '');
  }
}
