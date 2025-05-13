import 'dart:io';

void main() {

  stdout.write('Digite um número: ');
  String? input = stdin.readLineSync();

  if (input != null) {
    int? n = int.tryParse(input);

    if (n != null && n > 0) {
      int soma = 0;

      for (int i = 1; i <= n; i++) {
        soma += i;
      }

      print('a soma dos números de 1 até $n é: $soma');
    } else {
      print('numero invalido');
    }
  }
}
