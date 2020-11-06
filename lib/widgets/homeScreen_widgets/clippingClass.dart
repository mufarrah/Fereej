import 'package:flutter/material.dart';

class ClippingClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 110);
    path.quadraticBezierTo(
        size.width / 5, size.height, size.width / 2, size.height);
    path.quadraticBezierTo(size.width - (size.width / 5), size.height,
        size.width, size.height - 100);
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
