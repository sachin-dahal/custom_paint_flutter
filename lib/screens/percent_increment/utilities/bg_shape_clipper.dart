import 'package:flutter/widgets.dart';

class BgShapeClipper extends CustomClipper<Path> {
  
  @override
  Path getClip(Size size) {
    var firstControlPoint = Offset(size.width / 4, size.height / 3);
    var firstEndPoint = Offset(size.width / 2, size.height / 3 - 60);
    var secondControlPoint =
        Offset(size.width - (size.width / 4), size.height / 4 - 60);
    var secondEndPoint = Offset(size.width, size.height / 3 - 40);

    final path = Path()
      ..lineTo(0, size.height / 4.25)
      ..quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
          firstEndPoint.dx, firstEndPoint.dy)
      ..quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
          secondEndPoint.dx, secondEndPoint.dy)
      ..lineTo(size.height, 0)
      ..lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

// 90.0
// 120.0
// 180.0
// 60.0
