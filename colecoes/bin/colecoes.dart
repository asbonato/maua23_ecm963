
void main(List<String> arguments) {
  var nomes = ['Ana', 'Pedro'];
  var copia = nomes;
  var copiaComCollectionFor = [
    for(var nome in nomes) nome
  ];
  var copiaComOperadorSpread = [
    ...nomes
  ];
  print(copia);
  print(copiaComCollectionFor);
  print(copiaComOperadorSpread);
  nomes[0] = 'João';
  print(copia); 
  print(copiaComCollectionFor);
  print(copiaComOperadorSpread);
}
