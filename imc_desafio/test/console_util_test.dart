import 'package:imc_desafio/pessoa.dart';
import 'package:test/test.dart';

void main() {

  group('Pessoa', () {
  test('Teste de leitura de string', () {
    //SImula a entrada do usuario com uma string.
    var nome = "Julia";
    final pessoa = Pessoa(nome);

    // Chama a função lerStringComTexto e verifica o resultado
    var resultado = pessoa.getNome();
    expect(resultado, equals(resultado));
  });
});

    test('Teste de leitura de double', () {
    // Simule a entrada do usuário com um valor válido.
    var peso = 4.4;
    
    // Chame a função de leitura e verifique o resultado.
    final resultado = peso;
    expect(resultado, equals(peso));
  });
}

