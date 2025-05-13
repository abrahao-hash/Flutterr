import 'dart:io';

void main() {

  stdout.write('digite um número: ');
  String? top = stdin.readLineSync();

  if (top != null) {
    int? n = int.tryParse(top);

    if (n != null && n >= 0) {
      int fatorial = 1;
      int contador = n;

      while (contador > 1) {
        fatorial *= contador;
        contador--;
      }

      print('$fatorial');
    } else {
      print('inválida.');
    }
  }
}
