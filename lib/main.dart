import 'package:flutter/material.dart';
import 'package:navigation_flutter/calulator.dart';
import 'package:navigation_flutter/home.dart';
import 'package:navigation_flutter/about.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  //final appTitle = 'MENU';

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     // title: appTitle,
     // home: MyHomePage(title: appTitle),
      initialRoute: '/',
      routes: {
         '/': (context) => const  MyHomePage(),
         '/calculator': (context) => const CalculatorScreen (),
        '/about': (context) => const AboutUsPage(),
    },
    );
  }
}
