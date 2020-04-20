import 'dart:async';
import 'validator.dart';
import 'package:rxdart/rxdart.dart';

class Bloc with Validators {
  final _emailController = BehaviorSubject<String>();
  final _passwordControler = BehaviorSubject<String>();

  //Add data to Stream
  Stream<String> get email => _emailController.stream.transform(validateEmail);
  Stream<String> get password =>
      _passwordControler.stream.transform(validatePassword);
  Stream<bool> get submitValid =>
      Rx.combineLatest2(email, password, (e, p) => true);
  // we don't care the values so e and p is just a random variable.

  //Change Data
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordControler.sink.add;

  submit() {
    final validEmail = _emailController.value;
    final validPassword = _passwordControler.value;

    print('Email is $validEmail');
    print('Password is $validPassword');
  }

  dispose() {
    _emailController.close();
    _passwordControler.close();
  }
}

// final bloc = new Bloc();
