void main() {
  // Parametros simples e obrigatorios
  final totalSoma = soma(10, 10);
  print("O valor total da função simples e obrigatória é $totalSoma");

  // Parametros nomeados e nulo
  final totalSomaNomeadoNulo = somaParametrosNomeados();
  print("O valor total de parametros nulos e nomedos é $totalSomaNomeadoNulo");

  // Parametros nomeados com valores
  final totalSomaNomeadoValor =
      somaParametrosNomeados(valor2: 5.2, valor1: 10.0);
  print("O valor total de parametros nomeados é $totalSomaNomeadoValor");

  // Parametros Nomeados e Obrigatorios
  final totalSomaNomeadoObrigatorios =
      somaParametrosNomeadosObrigatorios(numero1: 4, numero2: 15);
  print(
      "O total de parametros nomeados e obrigatórios é $totalSomaNomeadoObrigatorios");

  // Parametros Nomeados com valores default
  final totalSomaNomeadoValorDefault = somaParametroNomeadoDefault(numero1: 15);
  print(
      "O total de parametros nomeados com valor default é $totalSomaNomeadoValorDefault");

  // Parmatros Opcionais
  print(somaParametrosOpcionais());
  print(somaParametrosOpcionais(1));
  print(somaParametrosOpcionais(1, 2));
  print(somaParametrosOpcionais(0, 3));

  // Parametros normais e nomeados
  print(somaParametrosNormaisNomeados(10));
  print(somaParametrosNormaisNomeados(5, numero3: 5));
  print(somaParametrosNormaisNomeados(5, numero3: 5, numero2: 1));
}

int soma(int valor1, int valor2) {
  return valor1 + valor2;
}

double somaParametrosNomeados({double? valor1, double? valor2}) {
  if (valor1 != null && valor2 != null) {
    return valor1 + valor2;
  }

  return 0.0;
}

int somaParametrosNomeadosObrigatorios(
    {required int numero1, required int numero2}) {
  return numero1 + numero2;
}

int somaParametroNomeadoDefault({int numero1 = 5, int numero2 = 0}) {
  return numero1 + numero2;
}

int somaParametrosOpcionais([int numero1 = 10, int numero2 = 0]) {
  return numero1 + numero2;
}

int somaParametrosNormaisNomeados(int numero1, {int? numero2, int? numero3}) {
  numero2 ??= 0;
  numero3 ??= 0;

  return numero1 + numero2 + numero3;
}
