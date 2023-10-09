import 'dart:convert';

import '../lib/imc.dart';
import 'dart:io';

void main(List<String> arguments) {
  print('Digite seu nome por favor:');
  var inputName = stdin.readLineSync(encoding: utf8);
  print('Digite seu peso por favor:');
  var inputPeso = stdin.readLineSync(encoding: utf8);
  print('Digite sua altura por favor:');
  var inputAltura = stdin.readLineSync(encoding: utf8);
  var leanluizz = Pessoa(inputName.toString(), double.parse(inputPeso ?? ''),
      double.parse(inputAltura ?? ''));
  return print(leanluizz.calcularIMC());
}
