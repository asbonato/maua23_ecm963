import 'dart:math';

void main(){
  var gerador = Random();

  //gera um inteiro entre 0 e 5
  var n1 = gerador.nextInt(6);
  print(n1);

  //gera um inteiro entre 1 e 10
  var n2 = gerador.nextInt(10) + 1;
  print(n2);

  //gera um inteiro entre 0 e 100
  var n3 = gerador.nextInt(101);
  print(n3);

  //gera um double entre 0 e 1 [0, 1)
  var n4 = gerador.nextDouble();
  print(n4);

  //gera um double entre 0 e 100 [0, 100)
  var n5 = gerador.nextDouble() * 100;
  print(n5);

  //gera um double entre 100 e 150 [100, 150)
  var n6 = gerador.nextDouble() * 50 + 100;
  print(n6);

  //gera um booleano
  var n7 = gerador.nextBool();
  print(n7);

}