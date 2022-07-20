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

