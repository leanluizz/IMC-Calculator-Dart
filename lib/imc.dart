class Pessoa {
  String nome = '';
  double peso = 0;
  double altura = 0;

  Pessoa(String nome, double peso, double altura) {
    this.nome = nome;
    this.peso = peso;
    this.altura = altura;
  }

  String getNome() {
    return nome;
  }

  double getPeso() {
    return peso;
  }

  double getAltura() {
    return altura;
  }

  calcularIMC() {
    double resultado = peso / (altura * altura);
    String resultadotostring = resultado.toStringAsFixed(2);
    String resultadoFinal = resultadotostring.replaceAll('.', ',');

    switch (resultado) {
      case <= 18.5:
        return 'Olá, $nome seu IMC é $resultadoFinal e você está Abaixo do peso...';
      case > 18.5 && <= 24.9:
        return 'Olá, $nome seu IMC é $resultadoFinal e você está com Peso saudável!';
      case >= 25 && <= 29.9:
        return 'Olá, $nome seu IMC é $resultadoFinal e você está Sobrepeso...';
      case >= 30 && <= 34.9:
        return 'Olá, $nome seu IMC é $resultadoFinal e você está com Obesidade grau I!';
      case >= 35 && <= 39.9:
        return 'Olá, $nome seu IMC é $resultadoFinal e você está com Obesidade grau II!';
      case >= 40:
        return 'Olá, $nome seu IMC é $resultadoFinal e você está com Obesidade grau III!(Obesidade mórbida)';
        break;
      default:
    }
  }
}
