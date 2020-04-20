import 'package:flutter/material.dart';
import 'screen/login_screen.dart';
import 'blocs/provider.dart';

class App extends StatelessWidget {
  Widget build(context) {
    return Provider(
        child: MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Log Me In'),
        ),
        body: LoginScreen(),
      ),
    ));
  }
}
