import 'package:flutter/material.dart';

class DrinksPage extends StatefulWidget {
  @override
  _DrinksPageState createState() => _DrinksPageState();
}

class _DrinksPageState extends State<DrinksPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'DRINKS',
          style: TextStyle(
            fontFamily: 'Avenir Next',
            fontSize: 30,
            color: const Color(0xff000000),
            letterSpacing: 0.6176470470428467,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
