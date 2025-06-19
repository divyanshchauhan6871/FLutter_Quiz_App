import 'package:flutter/material.dart';
import 'package:quiz_app/HomeScreen.dart';
import 'package:quiz_app/cricket.dart';
import 'package:quiz_app/aboutIndia.dart';
import 'package:quiz_app/mahabharat.dart';
import 'package:quiz_app/ramayan.dart';
import 'package:quiz_app/resultpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/ramayan': (context) => Ramayan(),
        '/mahabharat': (context) => Mahabharat(),
        '/cricket': (context) => Cricket(),
        '/aboutIndia': (context) => AboutIndia(),
        '/resultpage': (context) => Resultpage(),
      },
    );
  }
}
