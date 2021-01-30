import 'package:custom_paint_flutter/screens/happy_face/happy_face_paint.dart';
import 'package:flutter/material.dart';

void main() => runApp(CustomPaintApp());


class CustomPaintApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Custom Paint",
      home: HappyFacePaint(),
    );
  }
}