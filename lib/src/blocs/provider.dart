import 'package:flutter/material.dart';
import 'bloc.dart';

class Provider extends InheritedWidget {
  final bloc = Bloc();
  Provider({Key key, Widget child}) : super(key: key, child: child);

  bool updateShouldNotify(_) => true;

  static Bloc of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<Provider>()).bloc;
    // return (context.inheritFromWidgetOfExactType(Provider) as Provider).bloc;
    //in case you don't understand visit link https://stackoverflow.com/questions/59304242/inheritfromwidgetofexacttype-is-deprecated-use-dependoninheritedwidgetofexacttyp
  }
}
