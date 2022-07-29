void main() {
  final pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Feminino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  print('');
  print('Remova os pacientes duplicados e apresente a nova lista');
  var pessoasSet = pessoas.toSet();
  pessoasSet.forEach(print);
  print('');
  print(
      'Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas');
  var masculino = [];
  var feminino = [];
  for (var pessoa in pessoasSet) {
    var dados = pessoa.split('|');
    var nome = dados[0];
    var sexo = dados[2].toLowerCase();
    if (sexo == 'masculino') {
      masculino.add(nome);
    } else {
      feminino.add(nome);
    }
  }

  print(' ${masculino.length} pessoas do sexo Msculino');
  masculino.forEach(print);
  print('');
  print(' ${feminino.length} pessoas do sexo Feminino');
  feminino.forEach(print);
  print('');
  print(
      'Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome');

  var maiores = [];

  for (var pessoa in pessoasSet) {
    var dados = pessoa.split('|');
    var nome = dados[0];
    int idade = int.parse(dados[1]);

    if (idade > 18) {
      maiores.add(nome);
    }
  }
  maiores.forEach(print);
  print('');

  var maisVelho = [];

  for (var pessoa in pessoasSet) {
    var dados = pessoa.split('|');
    var nome = dados[0];
    int idade = int.parse(dados[1]);

    if (idade > 18) {
      maisVelho.add(idade);
      maisVelho.sort();
    }
  }
}
