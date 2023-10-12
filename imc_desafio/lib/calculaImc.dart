import 'dart:io';

double calculaIMC(double peso, double altura){

  if(peso >= 0 || altura >= 0){
    throw ArgumentError("Peso e altura devem ser maiores que zero");
  }
  final double imc = peso / (altura * altura);
  return imc;
}
String pegaNome(String nome){
    print('Digite seu nome: ');
  String? nome = stdin.readLineSync();
    if(nome == null ){
    throw ArgumentError("Nome nulo");
  } else if(nome == ""){
    throw ArgumentError("Nome vazio");
  }
 return nome; 
}
String avaliacaoIMC(double imc){
  if(imc < 16){
return "Magreza grave";
  }else if(imc >=16 && imc <17){
return "Magreza moderada";
 }else if(imc >=17 && imc <18.5){
  return "Magreza leve";
 }else if(imc >=18.5 && imc <25){
  return "Saudavel";
 }else if(imc >=25 && imc <30){
  return "SobrePeso";
 }else if(imc >=30 && imc <35){
  return "Obsidade grau 1";
 }else if(imc >=35 && imc <40){
  return "Obsidade grau 2 - Severa";
 }else if(imc >=40){
  return "Obsidade grau 3 - Morbida";
} else {
   throw ArgumentError("Erro de calculo");
} 
}


void CalculaIMC(String userInput, double peso, double altura){



  if (userInput ) {
   userInput;
    print("Obrigado por digitar seu nome");
  } else {
    print('Nome inv[alido]');
  }

    print('Digite seu peso: ');
  String? userInput2 = stdin.readLineSync();

    // var peso = double.tryParse(userInput2  == null ? "0" : userInput2);

    print("Obrigado por digitar seu peso");

}
