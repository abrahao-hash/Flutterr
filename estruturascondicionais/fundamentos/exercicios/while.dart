import 'dart:io';
void main() {
    bool continuar = false;
    int tipoSaida = 0;

    while(!continuar){
        print('Repete enquanto a condição for verdadeira(pode n executar nenhuma vez).');
        if(true){
          print('Escolha a opção abaixo:');
          print('Digite 1 aprendi');
          print('Digite 2 n aprendi');
          print('Informe um valor:');
          String? entradaString = stdin.readLineSync();
          tipoSaida = int.parse(entradaString!);
          if(tipoSaida == 1);
            continuar = true;
        }
    }
}