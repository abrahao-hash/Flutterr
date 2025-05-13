import 'dart:io';
import 'dart:math';

void main() {
  stdout.write('Digite o raio do círculo:');
  double? raio = double.tryParse(stdin.readLineSync()!);

  if (raio != null) {
    double area = calcularAreaCirculo(raio);
    print('A área do círculo de raio $raio é ${area.toStringAsFixed(2)}');
  } else {
    print('Valor inválido! Por favor, digite um número.');
  }
}

double calcularAreaCirculo(double raio) {
  return pi * pow(raio, 2);
}
