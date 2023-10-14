import 'package:imc_desafio/calculaImc.dart';
import 'package:test/test.dart';

void main() {
  test('teste de calculo do IMC', () {
    expect(() => calculaIMC(0,1.66), throwsArgumentError);
    expect(() => calculaIMC(66, 0), throwsArgumentError);
    expect(calculaIMC(66, 1.66), equals(23.95122659311947));
  });

    test('Teste de avaliação do IMC', () {
    expect(avaliacaoIMC(15), equals("Magreza grave"));
    expect(avaliacaoIMC(16.5), equals("Magreza moderada"));
    expect(avaliacaoIMC(18), equals("Magreza leve"));
    expect(avaliacaoIMC(22), equals("Saudavel"));
    expect(avaliacaoIMC(27), equals("SobrePeso"));
    expect(avaliacaoIMC(32), equals("Obesidade grau 1"));
    expect(avaliacaoIMC(38), equals("Obesidade grau 2 - Severa"));
    expect(avaliacaoIMC(42), equals("Obesidade grau 3 - Morbida"));
    expect(() => avaliacaoIMC(-1), throwsArgumentError);
  });
}