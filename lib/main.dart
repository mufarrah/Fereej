import 'package:Fereej_test3/pages/homeScreen.dart';
import 'package:Fereej_test3/pages/homeScreen1.dart';
import 'package:Fereej_test3/pages/homeScreen2.dart';
import 'package:Fereej_test3/pages/main_page.dart';
import 'package:Fereej_test3/pages/sweets_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Freej App',
      theme: ThemeData(
        primaryColor: Color.fromARGB(0xff, 255, 240, 216),
        accentColor: Colors.black,
      ),
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
