class Pessoa {
  String _nome = "";
  double _peso = 0.0;
  double _altura = 0.0;

  Pessoa(String nome, double peso, double altura) {
    _nome = nome;
    _peso = peso;
    _altura = altura;
  }

  void setNome(String nome) {
    _nome = nome;
  }

  void setPeso(double peso) {
    _peso = peso;
  }

  void setAltura(double altura) {
    _altura = altura;
  }

  double calculaIMC() {
    double imc = _peso / (_altura * _altura);
    return imc;
  }

  String getNome() {
    return this._nome;
  }

  String verificaIMC() {
    var imc = calculaIMC();
    if (imc < 16) {
      return "Magreza grave";
    } else if (imc < 17) {
      return "Magreza moderada";
    } else if (imc < 18.5) {
      return "Magreza leve";
    } else if (imc < 25) {
      return "Saudável";
    } else if (imc < 30) {
      return "Sobrepeso";
    } else if (imc < 35) {
      return "Obesidade Grau I";
    } else if (imc < 40) {
      return "Obesidade Grau II";
    } else {
      return "Obesidade Grau III";
    }
  }
}
