import 'package:flutter/material.dart';

import 'bloc.dart';

class Provider extends InheritedWidget {
  Provider({Key? key, required Widget child}): super(key: key, child: child);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;

  final bloc = Bloc();

  static Bloc of (BuildContext context){
    //o operador ! garante que a expressão que o antecede
    //(context.dependOnInheritedWidgetOfExactType<Provider>(), neste caso)
    //é difierente de null; podemos acessar a propriedade sem casting pois
    //a classe é genéricas (informamos o tipo <Provider>)
    return context.dependOnInheritedWidgetOfExactType<Provider>()!.bloc;
  }

}