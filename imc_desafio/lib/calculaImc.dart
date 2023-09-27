import 'dart:convert';
import 'dart:io';

void CalculaIMC(String nome, double peso, double altura){

bool isAlpha(String input) {
  if (input == null || input.isEmpty) {
    print('Input null ou inv[alido]');
    return false;
  }

  for (int i = 0; i < input.length; i++) {
    if (!input[i].contains(RegExp(r'[a-zA-Z]'))) {
      return false;
    }
  }

  return true;
}

void CalculaIMC(String userInput, double peso, double altura){
  print('Digite seu nome: ');
  String? userInput = stdin.readLineSync();

  if (isAlpha(userInput!)) {
    userInput = nome;
    print("Obrigado por digitar seu nome");
  } else {
    print('Nome inv[alido]');
  }

    print('Digite seu peso: ');
  String? userInput2 = stdin.readLineSync();

     var peso = double.tryParse(userInput2  == null ? "0" : userInput2);

    print("Obrigado por digitar seu peso");

}

}