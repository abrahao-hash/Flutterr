import 'dart:io';

double celsius2fahr (double C){
  return (C * 9/5) + 32;
}
double fahr2celsius (double F){
  return (F - 32) * 5/9;
}
double celsius2kelvin (double C){
  return C + 273.15;
}
double kelvin2celsius (double K){
  return K - 273.15;
}

void main(){
  int opcao = 0;
  do{

    print ("===Conversos de Temperaturas");
    print ("1. Celsius para Fahrenheit");
    print ("2. Fahrenheit para Celsius");
    print ("3. Celsius para Kelvin");
    print ("4. Kelvin para Celsius");
    print ("5. Sair");
  try{
    stdout.write("escolha uma opção: ");
    int opcao = int.parse(stdin.readLineSync()!);
    switch(opcao){
      case 1:
          stdout.write("digite a temperatura em celsius: ");
          double celsius = double.parse(stdin.readLineSync()!);
          double resultado = celsius2fahr(celsius);
          print('Resultado: $resultado °F');
          break;

        case 2:
          stdout.write("digite a temperatura em fahrenheit: ");
          double fahrenheit = double.parse(stdin.readLineSync()!);
          double resultado = fahr2celsius(fahrenheit);
          print('Resultado: $resultado °C');
          break;

        case 3:
          stdout.write("digite a temperatura em celsius: ");
          double celsius = double.parse(stdin.readLineSync()!);
          double resultado = celsius2kelvin(celsius);
          print("Resultado: $resultado K");
          break;

        case 4:
          stdout.write("digite a temperatura em kelvin: ");
          double kelvin = double.parse(stdin.readLineSync()!);
          double resultado = kelvin2celsius(kelvin);
          print("Resultado: $resultado °C");
          break;

        case 5: exit(1) ;
    }
      print("deseja sair? 0 - Sim / 1 - Não");
      opcao = int.parse(stdin.readLineSync()!);
    }catch(e){
      print("digite apenas numeros");
    }
  }while(opcao != 0);
}

