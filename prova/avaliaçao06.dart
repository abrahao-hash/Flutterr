import 'dart:io';

void main() {
 int? nota = 0;
  
  do {
    stdout.write("digite um numero de 1 a 10: ");
    nota = int.parse(stdin.readLineSync()!);
    if(nota < 0 || nota > 10)
      print("nota inválida");
  }while (nota < 0 || nota > 10);
  
  print("Nota válida: $nota");
}