import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ButtonPainter extends CustomPainter {
  double percent;
  ButtonPainter({this.percent});

  @override
  void paint(Canvas canvas, Size size) {
    final line = Paint()
      ..color = Colors.grey[300]
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 8.0;

    final loader = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 8.0;

    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2);

    canvas.drawCircle(center, radius, line);

    double arcAngle = 2 * pi * (percent / 100);
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), -pi / 2,
        arcAngle, false, loader);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

// arc -> startAngle + sweepAngle
