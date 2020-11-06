import 'package:flutter/material.dart';

class MainCartPage extends StatefulWidget {
  @override
  _MainCartPageState createState() => _MainCartPageState();
}

class _MainCartPageState extends State<MainCartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'CART',
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
