import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CurvesCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    var shadowPaint = Paint()
      ..color = Colors.black.withOpacity(0.15)
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, 10);

    var path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, size.height * 0.90);
    path.quadraticBezierTo(size.width * 0.36, size.height * 0.70, size.width * 0.57, size.height * 0.88);
    path.cubicTo(size.width * 0.75, size.height * 1.03, size.width * 1.00, size.height * 1.03, size.width, size.height * 0.92);
    path.quadraticBezierTo(size.width * 1.00, size.height * 0.62, size.width, 0);
    path.lineTo(0, 0);
    path.close();

    canvas.drawPath(path, shadowPaint);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
