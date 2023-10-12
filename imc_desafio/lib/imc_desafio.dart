import 'dart:convert';
import 'dart:io';

void execute(){

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


  print('Digite seu nome: ');
  String? userInput = stdin.readLineSync();

  if (isAlpha(userInput!)) {
    String nome;
    nome = userInput;
    print("Obrigado por digitar seu nome");
  } else {
    print('Nome invalido');
    return;
  }

    print('Digite seu peso em Kg: ');
  String? userInput2 = stdin.readLineSync();

     var peso = double.tryParse(userInput2  == null ? "0" : userInput2);
    if(peso == null || peso.isNaN || peso == 0 ){
      print("Peso invalido");
      return;
}
    print("Obrigado por digitar seu peso em Kg");

    print('Digite sua altura em metros: ');
  String? userInput3 = stdin.readLineSync();

     var altura = double.tryParse(userInput3  == null ? "0" : userInput3);
if(altura == null || altura.isNaN || altura == 0 ){
      print("ALtura invalida");
      return;
}
    print("Obrigado por digitar sua altura em metros");

    double imc;

    imc = (peso! / (altura!*altura!))!;

  String imcFormatado = imc.toStringAsFixed(2); // Formata com duas casas decimais
 
  print("Seu IMC e igual a: $imcFormatado");

  if(imc < 16){
print("Magreza grave");
  }else if(imc >=16 && imc <17){
print("Magreza moderada");
 }else if(imc >=17 && imc <18.5){
  print("Magreza leve");
 }else if(imc >=18.5 && imc <25){
  print("Saudavel");
 }else if(imc >=25 && imc <30){
  print("SobrePeso");
 }else if(imc >=30 && imc <35){
  print("Obsidade grau 1");
 }else if(imc >=35 && imc <40){
  print("Obsidade grau 2 - Severa");
 }else if(imc >=40){
  print("Obsidade grau 3 - Morbida");
}
}

