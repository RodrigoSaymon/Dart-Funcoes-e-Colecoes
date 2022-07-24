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


[codigo]: https://github.com/RodrigoSaymon/Dart-Fundamentos/blob/main/src/assets/Banner-4.png?raw=true

[codigo2]: https://github.com/RodrigoSaymon/Dart-Fundamentos/blob/main/src/assets/Banner-2.jpg?raw=true

[codigo3]: https://github.com/RodrigoSaymon/Dart-Fundamentos/blob/main/Or%C3%A7amento13.gif?raw=true

[codigo4]: https://github.com/RodrigoSaymon/Dart-Fundamentos/blob/main/Or%C3%A7amento14.gif?raw=true
