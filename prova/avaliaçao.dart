import 'dart:io';

void main() {

  stdout.write('Digite um número: ');
  String? input = stdin.readLineSync();

  if (input != null) {
    int? numero = int.tryParse(input);

    if (numero != null) {
      if (numero % 2 == 0) {
        print('$numero é par.');
      } else {
        print('$numero é ímpar.');
      }
    }
  }
}
