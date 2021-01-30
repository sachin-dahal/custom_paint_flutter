import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HappyFacePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..color = Colors.black
      ..strokeWidth = 4.0;
    canvas.drawCircle(Offset(size.width / 4, size.height / 3), 20.0, paint);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width / 1.4, size.height / 3),
            height: 40.0,
            width: 40.0),
        paint);
    print(size.height * 0.3);
    // mouth part
    final mouth = Path();
    mouth.moveTo(size.width * 0.75, size.height * 0.6);
    mouth.arcToPoint(
      Offset(size.width * 0.2, size.height * 0.6),
      radius: Radius.circular(150.0),
    );
    mouth.arcToPoint(
      Offset(size.width * 0.75, size.height * 0.6),
      clockwise: false,
      radius: Radius.circular(100.0),
    );

    canvas.drawPath(mouth, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
