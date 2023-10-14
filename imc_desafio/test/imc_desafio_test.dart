
import 'package:imc_desafio/calculaImc.dart';
import 'package:imc_desafio/pessoa.dart';
import 'package:test/test.dart';

void main() {

  group('Pessoa', () {
    test('Teste de criação de pessoa', () {
      final nome = 'Alice';
      final pessoa = Pessoa(nome);
      expect(pessoa.getNome(), equals(nome));
    });
  });

  group('IMC', () {
    test('Teste de cálculo de IMC', () {
      final peso = 70.0;
      final altura = 1.75;
      final imcEsperado = 22.857142857142858;
      expect(calculaIMC(peso, altura), equals(imcEsperado));
    });

    test('Teste de avaliação de IMC', () {
      expect(avaliacaoIMC(15), equals("Magreza grave"));
      expect(avaliacaoIMC(22.86), equals("Saudavel"));
      expect(avaliacaoIMC(35), equals("Obesidade grau 2 - Severa"));
      expect(() => avaliacaoIMC(-1), throwsArgumentError);
    });

  });
}