import 'package:flutter/material.dart';

class MyOdrdersPage extends StatefulWidget {
  @override
  _MyOdrdersPageState createState() => _MyOdrdersPageState();
}

class _MyOdrdersPageState extends State<MyOdrdersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'ORDERS',
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
