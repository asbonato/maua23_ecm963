import 'dart:io';

void main() {
  stdout.write('Digite o seu nome: ');
  var nome = stdin.readLineSync();
  stdout.writeln('Olá, $nome');

  stdout.write('Digite a sua idade: ');
  int idade = int.parse(stdin.readLineSync()!);
  print('Sua idade é $idade anos.');
}
