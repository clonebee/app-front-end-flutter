import 'dart:ui' as ui;
import 'package:flutter/material.dart';

class MenuPainter extends CustomPainter {
  BuildContext context;

  MenuPainter({@required this.context});

  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.1301370, size.height * 0.2631579);
    path_0.lineTo(size.width * 0.8698630, size.height * 0.2631579);
    path_0.cubicTo(
        size.width * 0.9041096,
        size.height * 0.2631579,
        size.width * 0.9315068,
        size.height * 0.2280702,
        size.width * 0.9315068,
        size.height * 0.1842105);
    path_0.cubicTo(
        size.width * 0.9315068,
        size.height * 0.1403509,
        size.width * 0.9041096,
        size.height * 0.1052632,
        size.width * 0.8698630,
        size.height * 0.1052632);
    path_0.lineTo(size.width * 0.1301370, size.height * 0.1052632);
    path_0.cubicTo(
        size.width * 0.09589041,
        size.height * 0.1052632,
        size.width * 0.06849315,
        size.height * 0.1403509,
        size.width * 0.06849315,
        size.height * 0.1842105);
    path_0.cubicTo(
        size.width * 0.06849315,
        size.height * 0.2280702,
        size.width * 0.09589041,
        size.height * 0.2631579,
        size.width * 0.1301370,
        size.height * 0.2631579);
    path_0.close();
    path_0.moveTo(size.width * 0.8698630, size.height * 0.4210526);
    path_0.lineTo(size.width * 0.1301370, size.height * 0.4210526);
    path_0.cubicTo(
        size.width * 0.09589041,
        size.height * 0.4210526,
        size.width * 0.06849315,
        size.height * 0.4561404,
        size.width * 0.06849315,
        size.height * 0.5000000);
    path_0.cubicTo(
        size.width * 0.06849315,
        size.height * 0.5438596,
        size.width * 0.09589041,
        size.height * 0.5789474,
        size.width * 0.1301370,
        size.height * 0.5789474);
    path_0.lineTo(size.width * 0.8698630, size.height * 0.5789474);
    path_0.cubicTo(
        size.width * 0.9041096,
        size.height * 0.5789474,
        size.width * 0.9315068,
        size.height * 0.5438596,
        size.width * 0.9315068,
        size.height * 0.5000000);
    path_0.cubicTo(
        size.width * 0.9315068,
        size.height * 0.4561404,
        size.width * 0.9041096,
        size.height * 0.4210526,
        size.width * 0.8698630,
        size.height * 0.4210526);
    path_0.close();
    path_0.moveTo(size.width * 0.8698630, size.height * 0.7368421);
    path_0.lineTo(size.width * 0.1301370, size.height * 0.7368421);
    path_0.cubicTo(
        size.width * 0.09589041,
        size.height * 0.7368421,
        size.width * 0.06849315,
        size.height * 0.7719298,
        size.width * 0.06849315,
        size.height * 0.8157895);
    path_0.cubicTo(
        size.width * 0.06849315,
        size.height * 0.8596491,
        size.width * 0.09589041,
        size.height * 0.8947368,
        size.width * 0.1301370,
        size.height * 0.8947368);
    path_0.lineTo(size.width * 0.8698630, size.height * 0.8947368);
    path_0.cubicTo(
        size.width * 0.9041096,
        size.height * 0.8947368,
        size.width * 0.9315068,
        size.height * 0.8596491,
        size.width * 0.9315068,
        size.height * 0.8157895);
    path_0.cubicTo(
        size.width * 0.9315068,
        size.height * 0.7719298,
        size.width * 0.9041096,
        size.height * 0.7368421,
        size.width * 0.8698630,
        size.height * 0.7368421);
    path_0.close();

    // ignore: non_constant_identifier_names
    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.shader = ui.Gradient.linear(
        Offset(size.width * 0.06849315, size.height * 0.5000000),
        Offset(size.width * 0.9315068, size.height * 0.5000000), [
      Color(0xffFF6800).withOpacity(1.0),
      Color(0xffFF0004).withOpacity(1.0)
    ], [
      0.3644,
      0.7553
    ]);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
