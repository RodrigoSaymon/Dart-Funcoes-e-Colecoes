void main() {
  final vaolorCalculado = somaInteiros(10, 10);
  print('A soma de dois inteiros é $vaolorCalculado');
}

int somaInteiros(int numero1, int numero2) {
  print('executando a soma de inteiros ($numero1, $numero2)');
  // final soma = numero1 + numero2;
  // return soma;

  return numero1 + numero2;
}
