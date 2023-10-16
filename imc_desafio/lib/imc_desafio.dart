import 'dart:io';

import 'package:imc_desafio/calculaImc.dart';
import 'package:imc_desafio/console_util.dart';
import 'package:imc_desafio/exception/nome_invalido_exception.dart';
import 'package:imc_desafio/pessoa.dart';

void execute() {
  print("Bem vindo a calculadora!");
  String nome = ConsoleUtils.lerStringComTexto("Digite o seu nome:");
  try {
    if (nome.trim() == "") {
throw ArgumentError("Nome vazio");
    } 
  } on NomeInvalidoException {
    print(NomeInvalidoException);
    exit(0);
  } catch (e) {
    print(e);
    exit(0);
  }

  double? peso;
  double? altura;

  print("Qual e o seu peso:");
  peso = ConsoleUtils.lerDouble();
  var pessoa = Pessoa(nome);
  pessoa.setPeso(peso!);

  print("Qual e sua altura:");
  altura = ConsoleUtils.lerDouble();
  pessoa.setAltura(altura!);

  print("Seu nome: ${pessoa.getNome()}");
  print("Seu peso: ${pessoa.getPeso()}");
  print("Sua altura: ${pessoa.getAltura()}");

  try {
    final imc = calculaIMC(peso, altura);

    final resultado = avaliacaoIMC(imc);
    print(
        "Seu imc: ${imc.toStringAsFixed(2)} e segundo a tabela vc esta: $resultado");
  } catch (e) {
    print("Erro $e");
  }
}
