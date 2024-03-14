import 'package:flutter/material.dart';

class MasterPainterBlue extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.color = const Color.fromRGBO(103, 139, 210, 1);
    canvas.drawOval(
      const Rect.fromLTRB(-110.0, -96.0, 590.0, 145.0),
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}