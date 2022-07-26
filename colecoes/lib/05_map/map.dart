void main() {
  //  representação do map
  //  a primeira vista ele se assemelha ao set, A difrenciação se da pela quantidade de valores inseridos no generics;

// no set um valor inserido nos generics
  final paciente1 = <int>{};

// no map doi valor inserido nos generics
// que representam uma chave e o valor que ele recebe
  final paciente2 = <String, String>{
    'nome': 'Rodrigo',
    'idade': '37'
// o map pode ser nulo, mas se for criado, precisa conter a chave e o valor
    // <String, String>?

    // o map e o valor não podem ser nulo, mas  a chave pode;
    // <String?, String>

    // o map e a chave não podem ser nulo, mas  o valor pode;
    // <String, String?>
  };
  var produto = <String, String>{};
// .putIfAbsent(key, () => null) - adiciona itens na lista se a chave não existir;
  produto.putIfAbsent('nome', () => 'Cerveja');
  // .update(key, (value) => null) - atualiza uma chave se ela exitir;
  produto.update('bebida', (value) => 'cerveja');
  // ifAbsent: () => '10') - usado junto com o .update. que atualiza uma chave se ela exitir;
  //  se ela não existir, a nova chave é adicionada no map;
  produto.update('preço', (value) => '10', ifAbsent: () => '10');

  //  acessar o valo através da chave

  print(produto['nome']);

// .forEach - varre uma map, com chave e valor. não pode ser utilizado em procssos assincronos
  produto.forEach((key, value) {});

// .forIn - varre uma map, com chave e valor. pode ser utilizado em procssos assincronos
  for (var entry in produto.entries) {
    print('Chave ${entry.key} : ${entry.value}');

// consigo tambem fazer uma busca somete pelas chaves ou valores;

    for (var key in produto.keys) {
      print('chave: $key');
    }
  }
  for (var value in produto.values) {
    print('chave: $value');
  }

  //  .map - posso gerar um novo map a partir de um map existente, com novas caracteristicas;

  var novoMap = produto.map((key, value) {
    return MapEntry(key + '_nova', value.toUpperCase());
  });

  // podemos criar map dentro de map. o resultado se assemelha aos arquivos json

  var mapa = <String, Object>{
    'nome': 'Rodrigo',
    'curso':[{ 
      'nome': 'academia do Flutter',
      'descrição': 'Melhor curso do Brasil',
    },
    { 
      'nome': 'Arquiteto Flutter',
      'descrição': 'Melhor curso do Brasil',
    }
    ],
  };
}
