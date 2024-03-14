import 'package:flutter/material.dart';

class MasterPainterPurpleBig extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.color = const Color.fromRGBO(140, 132, 226, 1.0);
    canvas.drawOval(
      const Rect.fromLTRB(-110.0, -96.0, 624.0, 420.0),
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}