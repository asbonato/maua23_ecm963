import 'dart:convert';
import 'package:exibe_imagens/src/models/image_model.dart';
import 'package:exibe_imagens/src/widgets/image_list.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class App extends StatefulWidget {
  @override
  State<App> createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int numeroImagens = 1;
  List<ImageModel> imagens = [];

  void obterImagem () async{
    var url = Uri.https(
      'api.pexels.com',
      'v1/search',
      {'query': 'people', 'page': '$numeroImagens', 'per_page': '1'},
    );
    var req = http.Request('get', url);
    req.headers.addAll(
      { 
        'Authorization':
        'cole_aqui_sua_chave_de_api_do_pexels',
      },
    );
    final result = await req.send();
    
    if (result.statusCode == 200) {
      final response = await http.Response.fromStream(result);
      var decodedJSON = json.decode(response.body);
      var imagem = ImageModel.fromJSON(decodedJSON);
      setState(() {
        numeroImagens++;  
        imagens.add(imagem);
      });
    } else {
      print('Falhou');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Minhas Imagens"),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: obterImagem,
          child: const Icon(Icons.add),
          ),
          body: ImageList(imagens),
    ));
  }
}
