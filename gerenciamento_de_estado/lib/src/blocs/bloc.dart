import 'dart:async';

class Bloc{
  //StreamController vem do pacote dart:async
  final emailController = StreamController <String>();
  final passwordController = StreamController <String>();
}