import 'dart:convert';
import 'dart:io';

import 'package:calculadora_imc/classes/Pessoa.dart';
import 'package:calculadora_imc/utils/Utils.dart';

void main() {
  var sair = false;
  do {
    Pessoa pessoa = Pessoa("", 0, 0);
    var nomeValido = false;
    var pesoValido = false;
    var alturaValida = false;
    //pega o nome
    do {
      try {
        String nome = Utils.lerConsoleTexto("Qual o seu nome?");
        pessoa.setNome(nome);
        nomeValido = true;
      } catch (e) {
        print("Digite um nome válido");
      }
    } while (nomeValido == false);

    //pega o peso
    do {
      try {
        double peso =
            Utils.lerConsoleTextoConverterDouble("Qual o seu peso em quilos?");
        pessoa.setPeso(peso);
        pesoValido = true;
      } catch (e) {
        print("Digite um peso válido");
      }
    } while (pesoValido == false);

    // pega a altura
    do {
      try {
        double altura = Utils.lerConsoleTextoConverterDouble(
            "Qual a sua altura em metros?");
        pessoa.setAltura(altura);
        alturaValida = true;
      } catch (e) {
        print("Digite uma altura válida");
      }
    } while (alturaValida == false);

    //Exibe no terminal
    print(
        '${pessoa.getNome()}, o seu IMC é de: ${pessoa.calculaIMC().toStringAsFixed(2)} e a sua classificação é ${pessoa.verificaIMC()}');
   
    print(
        "Digite 'S' para sair ou digite qualquer outra tecla para verificar outro IMC");
    var line = stdin.readLineSync(encoding: utf8);
    if (line == 'S') {
      sair = true;
    }
  } while (sair == false);
}
