import 'somas/soma.dart' as soma;
import 'somas copy/soma.dart' as novaSoma;

void main() {

  var totalDouble = soma.somaDouble(10.1, 5.1);
  var totalInteiros = novaSoma.somaInteiros(10, 5);

  print(totalDouble);
  print(totalInteiros);
}
