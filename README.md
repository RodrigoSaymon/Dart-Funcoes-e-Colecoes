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




[codigo]: https://github.com/RodrigoSaymon/Dart-Fundamentos/blob/main/src/assets/Banner-4.png?raw=true

[codigo2]: https://github.com/RodrigoSaymon/Dart-Fundamentos/blob/main/src/assets/Banner-2.jpg?raw=true

[codigo3]: https://github.com/RodrigoSaymon/Dart-Fundamentos/blob/main/Or%C3%A7amento13.gif?raw=true

[codigo4]: https://github.com/RodrigoSaymon/Dart-Fundamentos/blob/main/Or%C3%A7amento14.gif?raw=true
