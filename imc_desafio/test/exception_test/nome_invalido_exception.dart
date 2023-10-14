import 'package:test/test.dart';

void main() {
  test('Teste de NomeInvalidoException', () {
    expect(() {
      throw NomeInvalidoException();
    }, throwsA(TypeMatcher<NomeInvalidoException>()));
  });
}

class NomeInvalidoException implements Exception {
  String error() => "Nome inválido";

  @override
  String toString() {
    return "NomeInvalidoException: ${error()}";
  }
}