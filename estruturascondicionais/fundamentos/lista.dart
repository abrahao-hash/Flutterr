void main () {
  List<int> numeros = [1, 2, 3, 4, 5];
  List<String> nomes = ["Ana", "Maria", "José", "Carlos", "Joao"];
  List<double> notas = [1.4, 2.3, 7.3, 4.5, 8.4];
  List<bool> aprovados = [false, true];
  List<dynamic> lista = [1, "Lucas", 7.5, true];

  print(lista is List);
  print(lista.length);
  print(lista.first);
  print(lista.last);

  try{
    print(numeros[5]);
  }catch(erro){
    print ("indice invalido: ");
  }

}