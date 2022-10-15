// import 'dart:ui' as ui;
import 'package:flutter/material.dart';

Widget iconBarCode({@required double widthx, @required Color colorx}) {
  return CustomPaint(
    size: Size(widthx, (widthx * 1).toDouble()),
    painter: IconBarCode(colorx: colorx),
  );
}

class IconBarCode extends CustomPainter {
  final Color colorx;

  IconBarCode({@required this.colorx});
  @override
  void paint(Canvas canvas, Size size) {
    Path path0 = Path();
    path0.moveTo(0, size.height * 0.1250000);
    path0.lineTo(size.width * 0.1250000, size.height * 0.1250000);
    path0.lineTo(size.width * 0.1250000, size.height * 0.7500000);
    path0.lineTo(0, size.height * 0.7500000);
    path0.close();
    path0.moveTo(size.width * 0.1875000, size.height * 0.1250000);
    path0.lineTo(size.width * 0.2500000, size.height * 0.1250000);
    path0.lineTo(size.width * 0.2500000, size.height * 0.7500000);
    path0.lineTo(size.width * 0.1875000, size.height * 0.7500000);
    path0.close();
    path0.moveTo(size.width * 0.3125000, size.height * 0.1250000);
    path0.lineTo(size.width * 0.3750000, size.height * 0.1250000);
    path0.lineTo(size.width * 0.3750000, size.height * 0.7500000);
    path0.lineTo(size.width * 0.3125000, size.height * 0.7500000);
    path0.close();
    path0.moveTo(size.width * 0.5000000, size.height * 0.1250000);
    path0.lineTo(size.width * 0.5625000, size.height * 0.1250000);
    path0.lineTo(size.width * 0.5625000, size.height * 0.7500000);
    path0.lineTo(size.width * 0.5000000, size.height * 0.7500000);
    path0.close();
    path0.moveTo(size.width * 0.7500000, size.height * 0.1250000);
    path0.lineTo(size.width * 0.8125000, size.height * 0.1250000);
    path0.lineTo(size.width * 0.8125000, size.height * 0.7500000);
    path0.lineTo(size.width * 0.7500000, size.height * 0.7500000);
    path0.close();
    path0.moveTo(size.width * 0.9375000, size.height * 0.1250000);
    path0.lineTo(size.width, size.height * 0.1250000);
    path0.lineTo(size.width, size.height * 0.7500000);
    path0.lineTo(size.width * 0.9375000, size.height * 0.7500000);
    path0.close();
    path0.moveTo(size.width * 0.6250000, size.height * 0.1250000);
    path0.lineTo(size.width * 0.6562500, size.height * 0.1250000);
    path0.lineTo(size.width * 0.6562500, size.height * 0.7500000);
    path0.lineTo(size.width * 0.6250000, size.height * 0.7500000);
    path0.close();
    path0.moveTo(size.width * 0.4375000, size.height * 0.1250000);
    path0.lineTo(size.width * 0.4687500, size.height * 0.1250000);
    path0.lineTo(size.width * 0.4687500, size.height * 0.7500000);
    path0.lineTo(size.width * 0.4375000, size.height * 0.7500000);
    path0.close();
    path0.moveTo(size.width * 0.8437500, size.height * 0.1250000);
    path0.lineTo(size.width * 0.8750000, size.height * 0.1250000);
    path0.lineTo(size.width * 0.8750000, size.height * 0.7500000);
    path0.lineTo(size.width * 0.8437500, size.height * 0.7500000);
    path0.close();
    path0.moveTo(0, size.height * 0.8125000);
    path0.lineTo(size.width * 0.06250000, size.height * 0.8125000);
    path0.lineTo(size.width * 0.06250000, size.height * 0.8750000);
    path0.lineTo(0, size.height * 0.8750000);
    path0.close();
    path0.moveTo(size.width * 0.1875000, size.height * 0.8125000);
    path0.lineTo(size.width * 0.2500000, size.height * 0.8125000);
    path0.lineTo(size.width * 0.2500000, size.height * 0.8750000);
    path0.lineTo(size.width * 0.1875000, size.height * 0.8750000);
    path0.close();
    path0.moveTo(size.width * 0.3125000, size.height * 0.8125000);
    path0.lineTo(size.width * 0.3750000, size.height * 0.8125000);
    path0.lineTo(size.width * 0.3750000, size.height * 0.8750000);
    path0.lineTo(size.width * 0.3125000, size.height * 0.8750000);
    path0.close();
    path0.moveTo(size.width * 0.6250000, size.height * 0.8125000);
    path0.lineTo(size.width * 0.6875000, size.height * 0.8125000);
    path0.lineTo(size.width * 0.6875000, size.height * 0.8750000);
    path0.lineTo(size.width * 0.6250000, size.height * 0.8750000);
    path0.close();
    path0.moveTo(size.width * 0.9375000, size.height * 0.8125000);
    path0.lineTo(size.width, size.height * 0.8125000);
    path0.lineTo(size.width, size.height * 0.8750000);
    path0.lineTo(size.width * 0.9375000, size.height * 0.8750000);
    path0.close();
    path0.moveTo(size.width * 0.7500000, size.height * 0.8125000);
    path0.lineTo(size.width * 0.8750000, size.height * 0.8125000);
    path0.lineTo(size.width * 0.8750000, size.height * 0.8750000);
    path0.lineTo(size.width * 0.7500000, size.height * 0.8750000);
    path0.close();
    path0.moveTo(size.width * 0.4375000, size.height * 0.8125000);
    path0.lineTo(size.width * 0.5625000, size.height * 0.8125000);
    path0.lineTo(size.width * 0.5625000, size.height * 0.8750000);
    path0.lineTo(size.width * 0.4375000, size.height * 0.8750000);
    path0.close();

    Paint paint0fill = Paint()..style = PaintingStyle.fill;
    paint0fill.color = colorx;
    canvas.drawPath(path0, paint0fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
