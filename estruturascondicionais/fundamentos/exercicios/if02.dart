
void main (){
  const double niveldeus = 10.0;
  const double aprovado = 8.5;
  const double arrastado = 6.0;
  const double pendurado = 3.0;
  // const double reprovado = 0.0

  const double nota = 6.0;

  if(nota == niveldeus){
  print("brabo");
  }else if (nota >= aprovado && nota < niveldeus){
  print("vc é bom");
  }else if (nota >= arrastado && nota < aprovado){
    print("médio");
  }else if(nota >= pendurado && nota < arrastado){
    print("ruim");
  }else{
    print("reprovado");
  }
}