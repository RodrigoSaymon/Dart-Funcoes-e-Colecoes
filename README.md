![][codigo2]



<h1 align="center"> <img width="100" height = "100" src="https://www.vectorlogo.zone/logos/flutterio/flutterio-icon.svg">

**Dart Funções e Coleções - Modúlo 4** 

![][codigo]


<p align="left"><img width="25" height ="25" src="https://www.vectorlogo.zone/logos/dartlang/dartlang-icon.svg">  Funções - Aula 1

<h2><p align="left">

````dart
Tipo de retorno | Nome | Parâmetros | Corpo
      Void      | main |     ( )    |  {  }
````

Padrão de uma Função:

````dart
int somaInt (int numero1, int numero2){ 
  print ('Executando a soma de inteiros');
    return numero1 + numero2;
}
````

Chamando a função
````dart
void main( ){
  final valorCalculado = somaInt (10, 10);
  print ('A soma de dois inteiros é $valorCalculado');
}
````

---
<h4 align="center">Código desenvolvido no curso Academia do Flutter 2.0 ministrado por Rodrigo Rahman.

---

![][codigo2] 

[<h2>Linkedin](https://www.linkedin.com/in/rodrigotbass/)



![][codigo] 

<h1 p align="left"><img width="25" height ="25" src="https://www.vectorlogo.zone/logos/dartlang/dartlang-icon.svg">  Parâmetros - Aula 1.2

<h2><p align="left">

- **Parâmetros Posicional obrigatório** –  é obrigado atribuir valor. Não aceita nulo, mais podem ser promovidos a não nulos. Tenho que informar na ordem designado na função;

- **Posicional opcional** – não é obrigado atribuir valor na parte do parâmetro envolvida com [ ] (último argumento ou todo). Aceita nulo;

- **Nomeados opcionais** – não é obrigado atribuir valor na parte do parâmetro envolvida com { } (último argumento ou todo), mas se atribuir, preciso chamar pelo nome designado na função criada. Aceita nulo;

- **Nomeados obrigatórios** – os argumentos precisam ser chamados pelo nome. É obrigatório atribuir valor aos argumentos designado com a palavra reservada Required, não aceita nulo, mais podem ser promovidos a não nulos.

<h4>

````dart
void main() {
  // Parametros Obrigatórios
  // Parametros Nomeados
  // Parametros opcional

  print(' A soma de dois iteiros é ${somaInteiros(10, 10)}');
  print('A soma de 10.2 + 10.2 = ${somaDouble(numero1: 10.2, numero2: 10.2)}');
  print(
      'A soma de dois valotres é ${somaDoubleObrigatorio(numero1: null, numero2: 10.2)}');
// se não informar o valor por default vai ser zero, se informar, é atribuido o valor informado;
  print('A soma por Default ${somaDoubleDefault(numero1: 10.0)}');

  somaIntOpcional(1);
  somaIntOpcional(1, 2);

  parametrosNormaiscomNomeados(1, nome: 'Rodrigo Saymon', idade: 36);

  // nos paramentros opcionais, não preciso declarar os valores;
  parametrosNormaiscomOpcionais(1);
}

// Parametros Obrigatórios
// tenho que passar os valores na ordem correta

int somaInteiros(int numero1, int numero2) {
  return numero1 + numero2;
}

// Paramtros nomeados;
// por padrão não aceitam null, mais podem ser promovidos para não null;
// Posso passar os valores na ordem que quiser;

double somaDouble({double? numero1, double? numero2}) {
  if (numero1 != null && numero2 != null) {
    return numero1 + numero2;
  }
  return 0.0;
}
// posso tornalos obrigatórios com required;
// a interrogação de null se torna opcional, mais se quiser receber valores nulos, preciso fazer a validação;

double somaDoubleObrigatorio(
    {required double? numero1, required double numero2}) {
  // se valor for null, eu recebo o valor '0' como padrão;
  // na chamada preciso informar o 'null';
  numero1 ??= 0;

  return numero1 + numero2;
}

// se não informar o valor por default vai ser zero, se informar, é atribuido o valor definido;
double somaDoubleDefault({double numero1 = 0, double numero2 = 0}) {
  return numero1 + numero2;
}
````

---
<h4 align="center">Código desenvolvido no curso Academia do Flutter 2.0 ministrado por Rodrigo Rahman.

---

![][codigo2] 

[<h2>Linkedin](https://www.linkedin.com/in/rodrigotbass/)



![][codigo] 

<h1 p align="left"><img width="25" height ="25" src="https://www.vectorlogo.zone/logos/dartlang/dartlang-icon.svg">  Arrow, Anonimas e typedef - Aula 1.3

<h2><p align="left">

- **Função Arrow (Arco e flecha)** – função simples de uma linha só, onde é retornado apenas com Arrow (=>);

- **Função Anônima** – Pode estar jogada ou associada a uma variável ou a outra função. Não tem tipo de retorno nem nome, apenas parâmetros.

- **Typedef (Tipo definido)** – Apelido criado para uma função complexa, para ser reutilizada em outras ocasiões.

<h4>

````dart
void main() {
  print(somaInteiros(10, 10));

  () {
    print('Função Anônima');
  }();

  print(funcaoQuerecebeNome);
}

// função Arrow
// função de uma linha (=>)

int somaInteiros(int numero1, int numero2) => numero1 + numero2;

// função Anônima
// função sem tipo de retorno e nome
// a invocação é feita com os ();
// pode ser associada a uma variável ou outra função;
var funcaoAnonima = () {
    print('Função Anônima');
  }();  
 
// funções Typedef;
// Cria um apelico para uma função coplexa;
typedef funcaoQuerecebeNome = void Function(
  String nome,
  String nomeCompleto, {
  required String? x,
  required String? x2,
});
````

---

<h4 align="center">Código desenvolvido no curso Academia do Flutter 2.0 ministrado por Rodrigo Rahman.

---

![][codigo2]

[<h2>Linkedin](https://www.linkedin.com/in/rodrigotbass/)


![][codigo] 


<h1 p align="left"><img width="25" height ="25" src="https://www.vectorlogo.zone/logos/dartlang/dartlang-icon.svg">  Listas - Aula 2

<h2><p align="left">

-  **.generate** - gera uma lista;
````dart
  var numeros = List.generate(10, ((index) => index));
  print(numeros);
  ````

- **.forEach** - transfiro pra o forEach a responsabilidade de chamar o print;
````dart
  numeros.forEach(print);
  ````

- **Arrei bidimencional;**
````dart
  var lista = [
    [1, 2],
    [3, 4]
  ];
  ````

- **União de listas**
````dart
  var listaNova = [...lista[0], ...lista[1]];
  print(listaNova);
  ````

- **.expand** - faz a junção de listas de forma mais elegante;
````dart
var listaNova2 = lista.expand((numeros) => numeros).toList();
print(listaNova2);
  ````

- **.ani** - informa se axistem o intem igual ao item buscado;
````dart
final listaBusca = ['Rodrigo', 'Elã', 'Heitor'];
  if (listaBusca.any((nome) => nome == 'Heitor')){
    print('tem Heitor');
  } else {
    print('não tem Heitor');
  }
  ````

- **.every** - faz a busca pelo caractere definido;
````dart
final listaBusca2 = ['Rodrigo', 'Elão', 'Heitor'];
  if (listaBusca.every((nome) => nome.contains('o'))){
    print('todos os nomes tem a letra O');
  } else {
    print('nem todos os nomes tem a letra O');
  }
  ````

- **.sort** - ordena uma lista dentro da própria lista;
  - Para evitar possiveis prjuizos, é aconselhavel gerar sempre uma nova lista;
  ````dart
  var listaOrdenacao = [5, 87, 484, 59, 34, 63, 64, 96, 4456, 854];
  var listaNomesOrdenacao = ['Rodrigo', 'Elão', 'Heitor'];
  listaOrdenacao.sort();
  print(listaOrdenacao);
  listaNomesOrdenacao.sort();
  print(listaNomesOrdenacao);
  ];
  ````
- **Ordenando cadastro de pacientes com sorte**
````dart

  var pacientes = [
    'Rodrigo Saymon|Administrados|36',
    'Heitor Borges|Desenvolvedor|8',
    'Elã Borges|Assistente Administrativo|33',

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
  ````
  
- **.compareTo** - faz exatamente a mesma comparação (is/else) do exemplo anterior;
````dart
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
````
---

<h4 align="center">Código desenvolvido no curso Academia do Flutter 2.0 ministrado por Rodrigo Rahman.

---

![][codigo2]

[<h2>Linkedin](https://www.linkedin.com/in/rodrigotbass/)


![][codigo] 


<h1 p align="left"><img width="25" height ="25" src="https://www.vectorlogo.zone/logos/dartlang/dartlang-icon.svg">  Referência de Memória  - Aula 3

<h2><p align="left">

Existem métodos nos quais criamos uma nova variável, e outros onde trabalhamos dentro da própria variável.

- **.hashCode** - Verifica o número de referência de memória da variável.

Deve-se ter muito cuidado ao manipular o material recebido, para não modificar por acidente.
O ideal é sempre criar uma nova referência de memória para manter a original em segurança.

**Forma adequada de se gerar uma nova referência de memória com uma lista:**
````dart
var listaRecebida = ['Rodrigo'];
var novaLista = [...listaRecebida];
  novaLista.add('Rodrigo Saymon');
  return novaLista;
````

- Cria-se uma nova lista e dentro dela adicionamos a lista recebida, dessa forma duplicamos, mantendo a original intacta.



<h4>

````dart
// Quando passo a variável ‘nome’ para dentro da função2, devido as exigências dos parâmetros serem equivalentes, a função2 executa;

void main() {
  var lista = ['Rodrigo'];
  print(lista);
  funcao(lista);
  print(lista);

  var nome = 'Rodrigo Saymon';

  funcao2(nome);
  print(nome);
  print(nome.hashCode);
}
void funcao(List<String> nomes) {
  nomes.add('Saymno');
}
void funcao2(String nome) {
  nome += 'Academia do Flutter';
  print(nome);
  print(nome.hashCode);
}

List<String> add(List<String> nomes) {
  var novoNome = [...nomes];
  novoNome.add('Rodrigo Saymon');
  return novoNome;
}
````
---

<h4 align="center">Código desenvolvido no curso Academia do Flutter 2.0 ministrado por Rodrigo Rahman.

---

![][codigo2]

[<h2>Linkedin](https://www.linkedin.com/in/rodrigotbass/)


![][codigo] 





<h1 p align="left"><img width="25" height ="25" src="https://www.vectorlogo.zone/logos/dartlang/dartlang-icon.svg">  Set  - Aula 4

<h2><p align="left">

É semelhante a uma lista, sua principal diferença está na forma de inicialização. Pode ser representado das seguintes formas:
````dart
  var numerosSet1 = <int?>{1, 2, 3};
  var numerosSet2 = Set();
  ````

A forma de adicionar itens e as características do nullsafete são iguais a lista. As principais características do set são:

- **Não permite valores duplicados;**
- **.toSet()** - transforma uma lista em um set;
- **.difference** - mostrando as diferenças entre 2 set's ;
- **.union** - une os elementos de dois set’s;
- **.intersection** - mostrando as semelhaças entre 2 set's ;
- **.lookup** - faz a busca de um elemento especifico dentro de um set;

Diferentemente da lista, que pegamos cada elemento pelo número do índice, no set utilizamos o .elementAt para fazer essa busca.


<h4>

````dart
void main() {
  // Semelhnte a uma lista, sua principal diferença estáa na forma de inicialização;
  // pode ser representados das seguintes formas:
  var numerosSet1 = <int?>{1, 2, 3};
  var numerosSet2 = Set();

  //  a forma de adicionar iten e as caracteristicas do null safete são igueis a lista;

  numerosSet1.add(1);
  numerosSet1.add(2);
  numerosSet1.add(3);
  numerosSet1.add(null);
  numerosSet1.add(2);
  numerosSet1.add(1);

  print(numerosSet1);

  //  Ele não permite valores duplicados;
  // .toSet() - transforma uma lista em um set;

  var numeros = <int?>[5, 6, 7, 8, 9, 10].toSet();
  var Setlist = numeros.toList();
  //  .difference - faz a comparação entre 2 set's mostrando as diferenças;
  // quais dos numerosSet1 não tem no numeros;
  print(numeros.difference(numerosSet1));
  // .union - une os elementos de duas listas;
  print(numeros.union(numerosSet1));
  // .intersection - mostra os elementos semelhantes na comparação entre duas listas;
  print(numeros.intersection(numerosSet1));
  // .lookup - faz a busca de um elemento dentro de um set
  print(numeros.lookup(1));

  //  diferentemente da lista, que pegamos cada elemento pelo numero do index,
  // no set utilizamos o .elementAt para fazer a busca por indice.
  // na lista;
  Setlist[1];
  // no set;
  numeros.elementAt(1);
}

````
---

<h4 align="center">Código desenvolvido no curso Academia do Flutter 2.0 ministrado por Rodrigo Rahman.

---

![][codigo2]

[<h2>Linkedin](https://www.linkedin.com/in/rodrigotbass/)


![][codigo] 

<h1 p align="left"><img width="25" height ="25" src="https://www.vectorlogo.zone/logos/dartlang/dartlang-icon.svg">  Map  - Aula 5

<h2><p align="left">

A representação do map à primeira vista, assemelha-se ao set, a diferença se dá pela quantidade de valores inseridos no generics.
- No set apenas um valor é inserido nos generics:
````dart
  final paciente1 = <int>{};
  ````

- No map dois valor são inserido nos generics. Representa a chave e o valor que recebe;
````dart
  final paciente2 = <String, String>{
    'nome': 'Rodrigo',
    'idade': '37'
````
O map pode ser nulo, mas se for criado, precisa conter a chave e seu valor:
````dart
<String, String>?
````
O map e o valor não podem ser nulo, mas  a chave pode>:
````dart
<String?, String>
````
O map e a chave não podem ser nulo, mas  o valor pode;
````dart
<String, String?>
````

- **.putIfAbsent** - adiciona itens no map se a chave não existir;

- **.update** - atualiza uma chave se ela existir;

- **ifAbsent** - usado junto com o .update. Atualiza uma chave se ela existir, mas se ela não existir, a nova chave é adicionada no map;

Acessar o valo através da chave:
````dart
print(produto['nome']);
````
- **.forEach** - varre um map. Possui chave e valor e não pode ser utilizado em processos assíncronos;

- **.for In** - varre um map. Possui chave e valor e pode ser utilizado em processos assíncronos;
````dart
  for (var entry in produto.entries) {
    print('Chave ${entry.key} : ${entry.value}');
  ````

Consigo fazer uma busca somete pelas chaves ou valores;
````dart
  for (var key in produto.keys) {
      print('chave: $key');
    }
  for (var value in produto.values) {
    print('chave: $value');
  }
  ````

  - **.map** - posso gerar um novo map a partir de um map existente, com novas características:
  ````dart
  var novoMap = produto.map((key, value) {
    return MapEntry(key + '_nova', value.toUpperCase());
  });
  ````

podemos criar map dentro de map. o resultado se assemelha aos arquivos json:
````dart
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
````


<h4>

````dart
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
}
````
---

<h4 align="center">Código desenvolvido no curso Academia do Flutter 2.0 ministrado por Rodrigo Rahman.

---

![][codigo2]

[<h2>Linkedin](https://www.linkedin.com/in/rodrigotbass/)


![][codigo] 

<h1 p align="left"><img width="25" height ="25" src="https://www.vectorlogo.zone/logos/dartlang/dartlang-icon.svg">  Exception  - Aula 6

<h2><p align="left">

Exceção é um erro dentro do sistema, como alguma convenção ou execução de função que não conseguiu ser concluída. Para estes erros, o Dart nos traz formas de realizarmos o tratamento e trazer uma resposta mais amigável para o usuário.
 
Nas estruturas de erro usamos o try catch:

- **try** - estabelece o corpo da função que queremos executar;

- **catch** - se no try existir algum erro, podemos printar uma mensagem de exceção para o usuário. Chamamos esse tipo de exceção de genérica e com ela, podemos tratar qualquer exceção;

O catch, vem acompanhado de um parâmetro que podem conter as letras 'e' e 's' onde:

- **e** - tipo de erro;
- **s (StackTrace)** - mostra todas as estruturas internas por onde se iniciou e percorreu o problema;
````dart
} catch (e, s) {
print('erro ao executar programa');
````

Podemos ter vario caths, um para cada erro. O uso do catch em exceções especificas, não é obrigatório.

- **on** - utilizado para sinalizar as exceções especificas:
````dart
} on FormatException{
print('erro ao converter idade');
````

Os caths devem ser organizados de forma hierarquizada. Primeiro colocamos as exceções específicas e por fim as exceções genéricas.

- **finally** - sempre será executado independente de erro. Ele é importante para realizar alguma ação, independentemente de ter ocorrido erro ou não, como por exemplo fazer abertura de conexão com o banco de dados, que não pode ser largada aberta, e precisa ser fechada.
````dart
  } finally {}
}
````

- **throw** - Posso força um erro lançando uma exceção:
````dart
  if (idadeParse == 38) {
    throw Exception();
  ````

- **Exception** - todas as exceções são suas filhas. Pela hierarquia ele precisa ser jogado para baixo das exceções especificas e acima da exceção genérica;



<h4>

````dart
void main() {
  String idade = '38 anos';
  String? nome;
  var idadeParse = int.parse(idade);

  if (idadeParse == 38) {
    throw Exception();
  }

  try {
    int.parse(idade);
    nome!.toLowerCase();
  } on FormatException catch (e, s) {
    print('erro ao contverter idade');
  } on TypeError catch (e) {
    print('erro ao contverter idade');
  } on Exception {
    print('erro idade = 38');
  } catch (erro) {
    print('erro ao executar programa');  
  } finally {}
}
````
---

<h4 align="center">Código desenvolvido no curso Academia do Flutter 2.0 ministrado por Rodrigo Rahman.

---

![][codigo2]

[<h2>Linkedin](https://www.linkedin.com/in/rodrigotbass/)


![][codigo] 



<h1 p align="left"><img width="25" height ="25" src="https://www.vectorlogo.zone/logos/dartlang/dartlang-icon.svg">  Importe  - Aula 7

<h2><p align="left">

Importe é capacidade de trazer funções ou classes de outros arquivos. Existem duas formas de realizar o import. A partir do endereço arquivo:
````dart
import 'somas/soma.dart';
````

Por meio de package, onde tenho acesso a raiz da pasta lib. É muito usado para importar projetos externos:
````dart
Import 'package:colecoes/07_imports/somas/soma.dart';
````

Quando existem funções iguais em arquivos diferentes, os arquivos importados ficarão em conflito. Para resolver isso, podemos dar apelidos aos importes da seguinte forma:

No import:
````dart
import 'somas/soma.dart' as soma;
import 'somas copy/soma.dart' as novasoma;
````

Na função ou classe:
````dart
var totalDouble = soma.somaDouble(10.1, 5.1);
var totalInteiros = novaSoma.somaInteiros(10, 5);
````


<h4>

````dart
import 'somas/soma.dart' as soma;
import 'somas copy/soma.dart' as novaSoma;

void main() {

  var totalDouble = soma.somaDouble(10.1, 5.1);
  var totalInteiros = novaSoma.somaInteiros(10, 5);

  print(totalDouble);
  print(totalInteiros);
}

int somaInteiros(int numero1, int numero2) => numero1 + numero2;
double somaDouble(double numero1, double numero2) {
  return numero1 + numero2;
}
````
---

<h4 align="center">Código desenvolvido no curso Academia do Flutter 2.0 ministrado por Rodrigo Rahman.

---

![][codigo2]

[<h2>Linkedin](https://www.linkedin.com/in/rodrigotbass/)


![][codigo] 



[codigo]: https://github.com/RodrigoSaymon/Dart-Fundamentos/blob/main/src/assets/Banner-4.png?raw=true

[codigo2]: https://github.com/RodrigoSaymon/Dart-Fundamentos/blob/main/src/assets/Banner-2.jpg?raw=true

[codigo3]: https://github.com/RodrigoSaymon/Dart-Fundamentos/blob/main/Or%C3%A7amento13.gif?raw=true

[codigo4]: https://github.com/RodrigoSaymon/Dart-Fundamentos/blob/main/Or%C3%A7amento14.gif?raw=true
