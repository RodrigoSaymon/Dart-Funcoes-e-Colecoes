import 'package:colecoes/funcoes/funcoes.dart';

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

// Parametros opcional;
//  não preciso informar os valores, mais se passar preciso passar na ordem;
int somaIntOpcional([int numero1 = 0, int numero2 = 0]) {
  return numero1 + numero2;
}

void parametrosNormaiscomNomeados(int numero,
    {required String nome, required int idade}) {}

void parametrosNormaiscomOpcionais(int numero, [String? nome, int? idade]) {}
