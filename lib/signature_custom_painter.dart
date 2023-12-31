import 'package:flutter/material.dart';

class Signature extends CustomPainter {
  List<Offset> points;

  Signature({required this.points});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint =  Paint()
      ..color = Colors.white
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 5.0;

    for (int i = 0; i < points.length - 1; i++) {
      if (points[i] != null && points[i + 1] != null) {
        canvas.drawLine(points[i], points[i + 1], paint);
      }
    }
  }

  @override
  bool shouldRepaint(Signature oldDelegate) => oldDelegate.points != points;
}