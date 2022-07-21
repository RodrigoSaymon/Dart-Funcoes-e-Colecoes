void main() {
  // .generate - gera uma lista
  var numeros = List.generate(10, ((index) => index));
  print(numeros);

  //  .forEach - transfiro pra o forEach a responsabilidade de chamar o print;
  numeros.forEach(print);

  // Arrei bidimencional;
  var lista = [
    [1, 2],
    [3, 4]
  ];

  // União de listas
  var listaNova = [...lista[0], ...lista[1]];
  print(listaNova);

  // .expand - faz a junção de listas de forma mais elegante;
  var listaNova2 = lista.expand((numeros) => numeros).toList();
  print(listaNova2);

  // .ani - informa se axistem o intem igual ao item buscado;
  final listaBusca = ['Rodrigo', 'Elã', 'Heitor'];
  if (listaBusca.any((nome) => nome == 'Heitor')) {
    print('tem Heitor');
  } else {
    print('não tem Heitor');
  }

  // .every - faz a busca pelo caractere definido;
  final listaBusca2 = ['Rodrigo', 'Elão', 'Heitor'];
  if (listaBusca.every((nome) => nome.contains('o'))) {
    print('todos os nomes tem a letra O');
  } else {
    print('nem todos os nomes tem a letra O');
  }

  // .sort - ordena uma lista dentro da própria lista;
  // (pra evitar possiveis prjuizos, é aconselhavel criar uma nova lista);
  var listaOrdenacao = [5, 87, 484, 59, 34, 63, 64, 96, 4456, 854];
  var listaNomesOrdenacao = ['Rodrigo', 'Elão', 'Heitor'];
  listaOrdenacao.sort();
  print(listaOrdenacao);
  listaNomesOrdenacao.sort();
  print(listaNomesOrdenacao);

  var pacientes = [
    'Rodrigo Saymon|Administrados|36',
    'Heitor Borges|Desenvolvedor|8',
    'Elã Borges|Assistente Administrativo|33',
  ];

  // Ordenando cadastro de pacientes com sorte
  pacientes.sort((pacientes1, pacientes2) {
    final pacienteDados1 = pacientes1.split('|');
    final pacienteDados2 = pacientes2.split('|');

    final idade1 = int.parse(pacienteDados1[2]);
    final idade2 = int.parse(pacienteDados2[2]);

    if (idade1 > idade2) {
      return 1;
    } else if (idade1 == idade2) {
      return 0;
    } else {
      return -1;
    }
  });
  print(pacientes);

  // .compareTo - faz exatamente a mesma comparação (is/else) do exemplo anterior;

  var pacientes2 = [
    'Rodrigo Saymon|Administrados|36',
    'Heitor Borges|Desenvolvedor|8',
    'Elã Borges|Assistente Administrativo|33',
  ];
  pacientes2.sort((pacientes3, pacientes4) {
    final pacienteDados1 = pacientes3.split('|');
    final pacienteDados2 = pacientes4.split('|');

    final idade1 = int.parse(pacienteDados1[2]);
    final idade2 = int.parse(pacienteDados2[2]);

    return idade1.compareTo(idade2);
  });
  print(pacientes2);
}
