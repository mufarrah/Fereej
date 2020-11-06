import 'package:flutter/material.dart';

class LikesPage extends StatefulWidget {
  @override
  _LikesPageState createState() => _LikesPageState();
}

class _LikesPageState extends State<LikesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'LIKES',
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
