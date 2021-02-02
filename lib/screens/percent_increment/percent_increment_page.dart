import 'dart:ui';

import 'package:custom_paint_flutter/screens/percent_increment/utilities/bg_shape_clipper.dart';
import 'package:custom_paint_flutter/screens/percent_increment/utilities/button_painter.dart';
import 'package:flutter/material.dart';

class PercentIncrementPage extends StatefulWidget {
  @override
  _PercentIncrementPageState createState() => _PercentIncrementPageState();
}

class _PercentIncrementPageState extends State<PercentIncrementPage>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  double percent = 0;
  double newPercent = 0;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1))
          ..addListener(() {
            setState(() {
              percent = lerpDouble(percent, newPercent, _controller.value);
            });
          });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            ClipPath(
              clipper: BgShapeClipper(),
              child: Container(
                color: Colors.green[400],
              ),
            ),
            Center(
              child: Container(
                height: 150,
                width: 150,
                child: CustomPaint(
                  painter: ButtonPainter(percent: percent),
                  foregroundPainter: ButtonPainter(
                    percent: percent,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: RaisedButton(
                      color: Colors.cyanAccent,
                      splashColor: Colors.tealAccent,
                      shape: CircleBorder(),
                      child: Text(
                        "Press\n  ${percent.toInt()}%",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      onPressed: () {
                        setState(() {
                          percent = newPercent;
                          newPercent += 10;
                          if (newPercent > 100.0) {
                            percent = 0.0;
                            newPercent = 0.0;
                          }
                          _controller.forward(from: 0.0);
                        });
                      },
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
