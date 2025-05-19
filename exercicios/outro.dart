import 'dart:io';
double celsiusParaFahrenheit(double celsius) {
  return (celsius * 9 / 5) + 32;
}
double fahrenheitParaCelsius(double fahrenheit) {
  return (fahrenheit - 32) * 5 / 9;
}

double celsiusParaKelvin(double celsius) {
  return celsius + 273.15;
}

double kelvinParaCelsius(double kelvin) {
  return kelvin - 273.15;
}

void main() {
  int opcao = 0;

  while (opcao != 5) {
    print('\=== Conversor de Temperaturas ===');
    print('1. Converter Celsius para Fahrenheit');
    print('2. Converter Fahrenheit para Celsius');
    print('3. Converter Celsius para Kelvin');
    print('4. Converter Kelvin para Celsius');
    print('5. Sair do programa');
    stdout.write('Escolha uma opção: ');
    
    opcao = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

    switch (opcao) {
      case 1:
        stdout.write('Digite a temperatura em Celsius: ');
        double celsius = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
        double resultado = celsiusParaFahrenheit(celsius);
        print('Resultado: $celsius °C = $resultado °F');
        break;

      case 2:
        stdout.write('Digite a temperatura em Fahrenheit: ');
        double fahrenheit = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
        double resultado = fahrenheitParaCelsius(fahrenheit);
        print('Resultado: $fahrenheit °F = $resultado °C');
        break;

      case 3:
        stdout.write('Digite a temperatura em Celsius: ');
        double celsius = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
        double resultado = celsiusParaKelvin(celsius);
        print('Resultado: $celsius °C = $resultado K');
        break;

      case 4:
        stdout.write('Digite a temperatura em Kelvin: ');
        double kelvin = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
        double resultado = kelvinParaCelsius(kelvin);
        print('Resultado: $kelvin K = $resultado °C');
        break;

      case 5:
        print('Encerrando o programa. Até mais!');
        break;

      default:
        print('Opção inválida. Tente novamente.');
    }
  }
}
