import 'package:legendeone/ListeDeux.dart';
import 'package:flutter/material.dart';
import 'package:legendeone/NavBar.dart';
import 'package:legendeone/forms.dart';
import 'package:legendeone/home.dart';
import 'package:legendeone/liste.dart';
import 'package:legendeone/navigation.dart';


void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        "/":(context)=>NavBar(),
        "/forms":(context) => Forms(),
        "/liste":(context) => List(),
      },
      // home: Navigation(),
    );
  }
}
