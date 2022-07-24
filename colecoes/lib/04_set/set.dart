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
