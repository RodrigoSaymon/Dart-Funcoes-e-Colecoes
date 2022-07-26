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
