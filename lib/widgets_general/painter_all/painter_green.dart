import 'package:flutter/material.dart';

class MasterPainterGreen extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.color = const Color.fromRGBO(113, 165, 159, 1);
    canvas.drawOval(
      const Rect.fromLTRB(-110.0, -96.0, 724.0, 345.0),
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}