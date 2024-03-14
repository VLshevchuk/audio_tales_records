import 'package:flutter/material.dart';

class MasterSmallPainterGreen extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.color = const Color.fromRGBO(113, 165, 159, 1);
    canvas.drawOval(
      const Rect.fromLTRB(-110.0, -96.0, 600.0, 290.0),
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}