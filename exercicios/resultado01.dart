import 'dart:io';

// Funções de conversão
double celsius2fahr(double C) {
  return (C * 9 / 5) + 32;
}

double fahr2celsius(double F) {
  return (F - 32) * 5 / 9;
}

double celsius2kelvin(double C) {
  return C + 273.15;
}

double kelvin2celsius(double K) {
  return K - 273.15;
}

void main() {
  int opcao = 1;

  do {
    print("\n=== Conversor de Temperaturas ===");
    print("1. Celsius para Fahrenheit");
    print("2. Fahrenheit para Celsius");
    print("3. Celsius para Kelvin");
    print("4. Kelvin para Celsius");
    print("5. Sair");

    try {
      stdout.write("Escolha uma opção: ");
      opcao = int.parse(stdin.readLineSync()!);

      switch (opcao) {
        case 1:
          stdout.write('Digite a temperatura em Celsius: ');
          double celsius = double.parse(stdin.readLineSync()!);
          double resultado = celsius2fahr(celsius);
          print('Resultado: $celsius °C = $resultado °F');
          break;

        case 2:
          stdout.write('Digite a temperatura em Fahrenheit: ');
          double fahrenheit = double.parse(stdin.readLineSync()!);
          double resultado = fahr2celsius(fahrenheit);
          print('Resultado: $fahrenheit °F = $resultado °C');
          break;

        case 3:
          stdout.write('Digite a temperatura em Celsius: ');
          double celsius = double.parse(stdin.readLineSync()!);
          double resultado = celsius2kelvin(celsius);
          print('Resultado: $celsius °C = $resultado K');
          break;

        case 4:
          stdout.write('Digite a temperatura em Kelvin: ');
          double kelvin = double.parse(stdin.readLineSync()!);
          double resultado = kelvin2celsius(kelvin);
          print('Resultado: $kelvin K = $resultado °C');
          break;

        case 5:
          print("Saindo do programa.");
          break;

        default:
          print("Opção inválida.");
      }

    } catch (e) {
      print("Erro: digite apenas números válidos.");
    }

  } while (opcao != 5);
}
