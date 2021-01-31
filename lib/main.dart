import 'package:custom_paint_flutter/screens/percent_increment/percent_increment_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(CustomPaintApp());


class CustomPaintApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Custom Paint",
      home: PercentIncrementPage(),
    );
  }
}