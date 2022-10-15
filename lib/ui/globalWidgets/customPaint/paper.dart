// import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class PaperPainter extends CustomPainter {
  BuildContext context;

  PaperPainter({@required this.context});

  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.9028986, size.height * 0.3041916);
    path_0.lineTo(size.width * 0.6536232, size.height * 0.09820359);
    path_0.cubicTo(size.width * 0.6456522, size.height * 0.09161677, size.width * 0.6355072, size.height * 0.08802395, size.width * 0.6239130, size.height * 0.08802395);
    path_0.lineTo(size.width * 0.1268116, size.height * 0.08802395);
    path_0.cubicTo(size.width * 0.1036232, size.height * 0.08802395, size.width * 0.08550725, size.height * 0.1035928, size.width * 0.08550725, size.height * 0.1221557);
    path_0.lineTo(size.width * 0.08550725, size.height * 0.8766467);
    path_0.cubicTo(size.width * 0.08550725, size.height * 0.8958084, size.width * 0.1043478, size.height * 0.9107784, size.width * 0.1268116, size.height * 0.9107784);
    path_0.lineTo(size.width * 0.8739130, size.height * 0.9107784);
    path_0.cubicTo(size.width * 0.8971014, size.height * 0.9107784, size.width * 0.9152174, size.height * 0.8952096, size.width * 0.9152174, size.height * 0.8766467);
    path_0.lineTo(size.width * 0.9152174, size.height * 0.3287425);
    path_0.cubicTo(size.width * 0.9152174, size.height * 0.3191617, size.width * 0.9108696, size.height * 0.3107784, size.width * 0.9028986, size.height * 0.3041916);
    path_0.close();

    // ignore: non_constant_identifier_names
    Paint paint_0_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    paint_0_stroke.color = Theme.of(context).colorScheme.secondary.withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_stroke);

    // ignore: non_constant_identifier_names
    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Theme.of(context).primaryColor.withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.9152174, size.height * 0.3287425);
    path_1.lineTo(size.width * 0.6659420, size.height * 0.3287425);
    path_1.cubicTo(size.width * 0.6427536, size.height * 0.3287425, size.width * 0.6246377, size.height * 0.3131737, size.width * 0.6246377, size.height * 0.2946108);
    path_1.lineTo(size.width * 0.6246377, size.height * 0.08862275);
    path_1.cubicTo(size.width * 0.6355072, size.height * 0.08862275, size.width * 0.6463768, size.height * 0.09221557, size.width * 0.6543478, size.height * 0.09880240);
    path_1.lineTo(size.width * 0.9036232, size.height * 0.3047904);
    path_1.cubicTo(size.width * 0.9108696, size.height * 0.3107784, size.width * 0.9152174, size.height * 0.3191617, size.width * 0.9152174, size.height * 0.3287425);
    path_1.close();

    // ignore: non_constant_identifier_names
    Paint paint_1_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint_1_stroke.color = Theme.of(context).colorScheme.secondary.withOpacity(1.0);
    canvas.drawPath(path_1, paint_1_stroke);

    // ignore: non_constant_identifier_names
    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = Theme.of(context).primaryColor.withOpacity(1.0);
    canvas.drawPath(path_1, paint_1_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
