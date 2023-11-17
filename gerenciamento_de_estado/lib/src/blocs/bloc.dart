import 'dart:async';
import 'package:rxdart/rxdart.dart';
import 'package:gerenciamento_de_estado/src/blocs/validators.dart';

class Bloc with Validators{
  //StreamController vem do pacote dart:async
  final _emailController = BehaviorSubject <String>();
  final _passwordController = BehaviorSubject <String>();

  Stream<String> get email => _emailController.stream.transform(validateEmail);
  Stream<String> get password => _passwordController.stream.transform(validatePassword);

  Stream<bool> get emailPasswordAreOk => CombineLatestStream.combine2(email, password, (e, p) => true);

  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  void submitForm(){
    final email = _emailController.value;
    final password = _passwordController.value;
    print('$email, $password');
  }

  void dispose() {
    _emailController.close();
    _passwordController.close();
  }
}

//essa é a instância global que não será mais usada
//final bloc = Bloc();