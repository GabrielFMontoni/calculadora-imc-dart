import 'package:calculadora_imc/classes/Pessoa.dart';
import 'package:test/test.dart';

void main() {
  test('IMC Saudável', () {
    Pessoa pessoa = Pessoa('Gabriel', 65, 1.75);
    expect(pessoa.verificaIMC(), equalsIgnoringCase("Saudável"));
  });

  test('IMC Magreza Grave', () {
    Pessoa pessoa = Pessoa('Gabriel', 20, 1.75);
    print("IMC: ${pessoa.calculaIMC()}");
    expect(pessoa.verificaIMC(), equalsIgnoringCase("Magreza grave"));
  });

  test('IMC Obesidade III', () {
    Pessoa pessoa = Pessoa('Gabriel', 90, 1.50);
    print("IMC: ${pessoa.calculaIMC()}");
    expect(pessoa.verificaIMC(), equalsIgnoringCase("Obesidade Grau III"));
  });
}
