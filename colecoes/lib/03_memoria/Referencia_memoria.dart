void main() {
  var lista = ['Rodrigo'];
  print(lista);
  funcao(lista);
  print(lista);

  // .hashCode - Verifica o numero de referencia de memoria da variavel;
  // exitem metodos nos quais criamos uma nova variavé, e outros onde trabalhamos dentro da propria variável.
  // deve-se ter muito cuidado para não modificar o material que você recebeu.
  // o ideal é sempre criar uma nova referencia de memoria pra manter a original em segurança.

  var nome = 'Rodrigo Saymon';

  // quando passo a variavel nome pra dentro da função2, devido as exigencias dos parametros serem equivalentes,
  // a função2 executa;
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

// Forma adequada de se gerar uma nova referencia de memoria com uma lista;
List<String> add(List<String> nomes) {
// Cria-se uma nova lista e dentro dela add a lista recebida;
// Ele duplica a Lista recebida e a mantem intacta;
  var novoNome = [...nomes];
  novoNome.add('Rodrigo Saymon');
  return novoNome;
}
