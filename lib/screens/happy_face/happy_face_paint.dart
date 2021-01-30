import 'package:custom_paint_flutter/screens/happy_face/happy_face_painter.dart';
import 'package:flutter/material.dart';

class HappyFacePaint extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 100.0, horizontal: 20.0),
        child: LayoutBuilder(builder: (context, constraints) {
          return Container(
            width: constraints.widthConstraints().maxWidth,
            height: constraints.heightConstraints().maxHeight,
            color: Colors.yellow,
            child: CustomPaint(
              painter: HappyFacePainter(),
            ),
          );
        }),
      ),
    );
  }
}
