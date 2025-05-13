import 'dart:io';

void main() {

  stdout.write('numero: ');
  String? kiri = stdin.readLineSync();

  if (kiri != null) {
    int? numero = int.tryParse(kiri);

    if (numero != null && numero >= 1 && numero <= 7) {
      String dia;

      switch (numero) {
        case 1:
          dia = 'Domingo';
          break;
        case 2:
          dia = 'Segunda-feira';
          break;
        case 3:
          dia = 'Terça-feira';
          break;
        case 4:
          dia = 'Quarta-feira';
          break;
        case 5:
          dia = 'Quinta-feira';
          break;
        case 6:
          dia = 'Sexta-feira';
          break;
        case 7:
          dia = 'Sábado';
          break;
        default:
          dia = 'Inválido';
      }

      print('O dia correspondente é: $dia');
    } else {
      print('valor invalido');
    }
  }
}
