import 'package:flutter/cupertino.dart';

class CurvesClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, size.height * 0.84);
    path.quadraticBezierTo(size.width * 0.36, size.height * 0.70, size.width * 0.57, size.height * 0.85);
    path.cubicTo(size.width * 0.75, size.height * 0.99, size.width * 1.00, size.height * 0.99, size.width, size.height * 0.83);
    path.quadraticBezierTo(size.width * 1.00, size.height * 0.62, size.width, 0);
    path.lineTo(0, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
