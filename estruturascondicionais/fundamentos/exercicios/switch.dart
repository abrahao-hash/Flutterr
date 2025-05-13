import 'dart:math';

void main()  {
 final int mes = Random().nextInt(12) + 1;
 print("Mês gerado: $mes");

 switch (mes) {
   case 12: print("Dezembro Férias"); break;
   case 1: print('Janeiro: ano novo'); break;
   case 2: print('Fevereiro'); break;
   case 3: print('Março'); break;
   case 4: print('Abril'); break;
   case 5: print('Maio'); break;
   case 6: print('Junho'); break;
   case 7: print('Julho'); break;
   case 8: print('Agosto'); break;
   case 9: print('Setembro'); break;
   case 10: print('Outubro'); break;
   case 11: print('Novembro'); break;
   default: print('Mês Intermediario');
 }
}