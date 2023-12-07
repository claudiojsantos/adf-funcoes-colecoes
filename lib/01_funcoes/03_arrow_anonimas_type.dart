void main() {
  print(somaInteiros(10, 20));

  // Anonimous
  void funcaoDentroFuncao(Function(String nome) funcaoQueRecebeNome) {
    var calculo = 1 + 1;
    var nomeCompleto = 'Claudio Santos';

    funcaoQueRecebeNome(nomeCompleto);
  }

  void funcaoDentroFuncao2(FuncaoQueRecebeONome funcaoQueRecebeNome) {
    var nomeCompleto = 'Aldo Campos';

    funcaoQueRecebeNome(nomeCompleto);
  }

  () {
    print('Função Anônima');
  }();

  funcaoDentroFuncao((nome) {
    if (nome.isEmpty) {
      print('Nome vazio');
    } else {
      print(nome);
    }
  });

  funcaoDentroFuncao2((nome) {
    if (nome.isEmpty) {
      print('Nome vazio');
    } else {
      print(nome);
    }
  });

  // clousure
  var funcaoQualquer = () {
    print('executando a funcao qualquer');
    return 1000;
  };

  print(funcaoQualquer.runtimeType);
  print(funcaoQualquer);
  print(funcaoQualquer());
}

// Arrow
int somaInteiros(int numero1, int numero2) => numero1 + numero2;

// typedef
typedef FuncaoQueRecebeONome = void Function(String nome);
