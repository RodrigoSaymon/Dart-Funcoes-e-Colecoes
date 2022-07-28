void main() {
  var cor = cores.vermelho;
  if (cor == cores.vermelho) {}

  print(cores.azul.name);

  var corAzul_15 = cores.values.byName('azul');
  print(corAzul_15);

  var coresMap = cores.values.asMap();
  print(coresMap);

  var coresMapName = cores.values.asNameMap();
  print(coresMapName);
  var corAzulMap = coresMapName[cores.azul];

  switch (cor) {
    case cores.azul:
      // TODO: Handle this case.
      break;
    case cores.vermelho:
      // TODO: Handle this case.
      break;
    case cores.verde:
      // TODO: Handle this case.
      break;
    case cores.amarelo:
    // TODO: Handle this case.
    case cores.marrom:
      // TODO: Handle this case.
      break;
    case cores.preto:
      // TODO: Handle this case.
      break;
  }
}

enum cores { azul, vermelho, verde, amarelo, marrom, preto }
