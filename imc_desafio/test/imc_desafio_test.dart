import 'dart:convert';
import 'dart:io';

import 'package:test/test.dart';

void main() {
  test('Teste com valores válidos', () {
    final input = 'Alice\n70\n1.75\n';
    final expectedOutput = 'Seu IMC e igual a: 22.86\nSaudavel\n';

    final result = runCalculaIMC(input);
    expect(result, equals(expectedOutput));
  });
}

String runCalculaIMC(String input) {
  final process = Process.start('dart', ['calcula_imc.dart'], runInShell: true);
  process.stdin.write(input);
  process.stdin.close();

  return process.stdout.transform(utf8.decoder).join();
}