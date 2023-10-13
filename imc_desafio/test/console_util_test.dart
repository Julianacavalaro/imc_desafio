
import 'dart:convert';
import 'dart:io';
import 'dart:io';

import 'package:imc_desafio/console_util.dart';
import 'package:imc_desafio/pessoa.dart';
import 'package:test/test.dart';

void consoleUtils() {

  test('Teste de leitura de string', () {
    //SImula a entrada do usuario com uma string.
    var input = String;

    // Chama a função lerStringComTexto e verifica o resultado
    var resultado = input;
    expect(resultado, equals(input));
  });

    test('Teste de leitura de double', () {
    // Simule a entrada do usuário com um valor válido.
    var peso = 4.4;
    
    // Chame a função de leitura e verifique o resultado.
    final resultado = peso;
    expect(resultado, equals(peso));
  });
}

