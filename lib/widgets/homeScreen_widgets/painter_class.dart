import 'package:flutter/material.dart';

class DrawerPainter extends CustomPainter {
  final Offset offset;
  DrawerPainter({this.offset});
  double getControlPointx(double width) {
    if (offset.dx == 0) {
      return width;
    } else {
      return offset.dx > width ? offset.dx : width + 30;
    }
  }

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Color.fromARGB(0xff, 36, 35, 33)
      ..style = PaintingStyle.fill;
    Path path = Path();
    path.moveTo(-size.width, 0);
    path.lineTo(size.width, 0);
    path.quadraticBezierTo(
        getControlPointx(size.width), offset.dy, size.width, size.height);

    path.lineTo(-size.width, size.height);

    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
