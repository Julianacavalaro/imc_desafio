import 'dart:io';

double calculaIMC(peso, altura) {
  if (peso <= 0 || altura <= 0) {
    throw ArgumentError("Peso e altura devem ser maiores que zero");
  }
  double imc;
  imc = peso / (altura * altura);
  return imc;
}

String avaliacaoIMC(double imc) {

  if (imc <= 0) {
    throw ArgumentError("Imc nao pode ser negativo");
  } else if (imc < 16) {
    return "Magreza grave";
  } else if (imc >= 16 && imc < 17) {
    return "Magreza moderada";
  } else if (imc >= 17 && imc < 18.5) {
    return "Magreza leve";
  } else if (imc >= 18.5 && imc < 25) {
    return "Saudavel";
  } else if (imc >= 25 && imc < 30) {
    return "SobrePeso";
  } else if (imc >= 30 && imc < 35) {
    return "Obesidade grau 1";
  } else if (imc >= 35 && imc < 40) {
    return "Obesidade grau 2 - Severa";
  } else if (imc >= 40) {
    return "Obesidade grau 3 - Morbida";
  } else {
    throw ArgumentError("Erro de calculo");
  }
}
