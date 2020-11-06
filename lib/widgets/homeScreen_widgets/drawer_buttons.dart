import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final IconData iconData;
  final double textSize;
  final double height;

  MyButton({this.text, this.iconData, this.textSize, this.height});
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        padding: EdgeInsets.symmetric(vertical: 2),
        height: height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Icon(
              iconData,
              color: Color.fromARGB(0xff, 242, 96, 39),
              size: 40,
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: textSize,
                  fontFamily: 'Avenir',
                  fontWeight: FontWeight.w900,
                  color: Color.fromARGB(0xff, 242, 96, 39),
                ),
              ),
            )
          ],
        ),
        onPressed: () {});
  }
}
