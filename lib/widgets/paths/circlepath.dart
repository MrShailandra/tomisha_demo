import 'package:flutter/material.dart';

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();

    // Path number 1

    paint.color = const Color(0xffffffff).withOpacity(0);
    path = Path();
    path.lineTo(0, size.height * 0.12);
    path.cubicTo(0, size.height * 0.12, size.width * 0.62, size.height * 0.12,
        size.width * 0.62, size.height * 0.12);
    path.cubicTo(size.width * 0.62, size.height * 0.12, size.width * 0.62,
        size.height * 0.77, size.width * 0.62, size.height * 0.77);
    path.cubicTo(size.width * 0.62, size.height * 0.77, 0, size.height * 0.77,
        0, size.height * 0.77);
    path.cubicTo(
        0, size.height * 0.77, 0, size.height * 0.12, 0, size.height * 0.12);
    path.lineTo(0, size.height * 0.12);
    canvas.drawPath(path, paint);

    // Path number 2

    paint.color = const Color(0xffffffff);
    path = Path();
    path.lineTo(-0.08, -0.08);
    path.cubicTo(
        -0.08, -0.08, size.width * 0.92, -0.08, size.width * 0.92, -0.08);
    path.cubicTo(size.width * 0.92, -0.08, size.width * 0.92,
        size.height * 0.92, size.width * 0.92, size.height * 0.92);
    path.cubicTo(size.width * 0.92, size.height * 0.92, -0.08,
        size.height * 0.92, -0.08, size.height * 0.92);
    path.cubicTo(-0.08, size.height * 0.92, -0.08, -0.08, -0.08, -0.08);
    canvas.drawPath(path, paint);

    // Path number 3

    paint.color = const Color(0xffffffff);
    path = Path();
    path.lineTo(-0.08, -0.08);
    path.cubicTo(
        -0.08, -0.08, size.width * 0.92, -0.08, size.width * 0.92, -0.08);
    path.cubicTo(size.width * 0.92, -0.08, size.width * 0.92,
        size.height * 0.92, size.width * 0.92, size.height * 0.92);
    path.cubicTo(size.width * 0.92, size.height * 0.92, -0.08,
        size.height * 0.92, -0.08, size.height * 0.92);
    path.cubicTo(-0.08, size.height * 0.92, -0.08, -0.08, -0.08, -0.08);
    canvas.drawPath(path, paint);

    // Path number 4

    paint.color = const Color(0xffffffff);
    path = Path();
    path.lineTo(-0.08, -0.08);
    path.cubicTo(
        -0.08, -0.08, size.width * 0.92, -0.08, size.width * 0.92, -0.08);
    path.cubicTo(size.width * 0.92, -0.08, size.width * 0.92,
        size.height * 0.92, size.width * 0.92, size.height * 0.92);
    path.cubicTo(size.width * 0.92, size.height * 0.92, -0.08,
        size.height * 0.92, -0.08, size.height * 0.92);
    path.cubicTo(-0.08, size.height * 0.92, -0.08, -0.08, -0.08, -0.08);
    canvas.drawPath(path, paint);

    // Path number 5

    paint.color = const Color(0xffffffff);
    path = Path();
    path.lineTo(-0.08, -0.08);
    path.cubicTo(
        -0.08, -0.08, size.width * 0.92, -0.08, size.width * 0.92, -0.08);
    path.cubicTo(size.width * 0.92, -0.08, size.width * 0.92,
        size.height * 0.92, size.width * 0.92, size.height * 0.92);
    path.cubicTo(size.width * 0.92, size.height * 0.92, -0.08,
        size.height * 0.92, -0.08, size.height * 0.92);
    path.cubicTo(-0.08, size.height * 0.92, -0.08, -0.08, -0.08, -0.08);
    canvas.drawPath(path, paint);

    // Path number 6

    paint.color = const Color(0xfffbfcfd);
    path = Path();
    path.lineTo(size.width / 4, size.height * 0.12);
    path.cubicTo(size.width * 0.05, size.height * 0.12, -0.12,
        size.height * 0.29, -0.12, size.height * 0.49);
    path.cubicTo(-0.12, size.height * 0.7, size.width * 0.05,
        size.height * 0.87, size.width / 4, size.height * 0.87);
    path.cubicTo(size.width * 0.46, size.height * 0.87, size.width * 0.62,
        size.height * 0.7, size.width * 0.62, size.height * 0.49);
    path.cubicTo(size.width * 0.62, size.height * 0.29, size.width * 0.46,
        size.height * 0.12, size.width / 4, size.height * 0.12);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
