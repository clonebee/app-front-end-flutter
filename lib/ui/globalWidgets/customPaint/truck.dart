// import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class TruckPainter extends CustomPainter {
  BuildContext context;

  TruckPainter({@required this.context});

  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.7553846, size.height * 0.01131222);
    path_0.lineTo(size.width * 0.7553846, size.height * 0.8420814);
    path_0.lineTo(size.width * 0.4687912, size.height * 0.8420814);
    path_0.arcToPoint(Offset(size.width * 0.3259341, size.height * 0.8420814),
        radius: Radius.elliptical(size.width * 0.07175824, size.height * 0.1477376), rotation: 0, largeArc: false, clockwise: false);
    path_0.lineTo(size.width * 0.2527473, size.height * 0.8420814);
    path_0.lineTo(size.width * 0.2527473, size.height * 0.01131222);
    path_0.close();

    // ignore: non_constant_identifier_names
    Paint paint_0_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint_0_stroke.color = Color(0xff3c4044).withOpacity(1.0);
    paint_0_stroke.strokeCap = StrokeCap.round;
    paint_0_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_0, paint_0_stroke);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.9945055, size.height * 0.5488688);
    path_1.lineTo(size.width * 0.9945055, size.height * 0.8429864);
    path_1.lineTo(size.width * 0.9467033, size.height * 0.8429864);
    path_1.arcToPoint(Offset(size.width * 0.8038462, size.height * 0.8429864),
        radius: Radius.elliptical(size.width * 0.07175824, size.height * 0.1477376), rotation: 0, largeArc: false, clockwise: false);
    path_1.lineTo(size.width * 0.7553846, size.height * 0.8429864);
    path_1.lineTo(size.width * 0.7553846, size.height * 0.2556561);
    path_1.lineTo(size.width * 0.8553846, size.height * 0.2556561);
    path_1.close();

    // ignore: non_constant_identifier_names
    Paint paint_1_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint_1_stroke.color = Color(0xff3c4044).withOpacity(1.0);
    paint_1_stroke.strokeCap = StrokeCap.round;
    paint_1_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_1, paint_1_stroke);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.9945055, size.height * 0.5488688);
    path_2.lineTo(size.width * 0.9945055, size.height * 0.8429864);
    path_2.lineTo(size.width * 0.9467033, size.height * 0.8429864);
    path_2.arcToPoint(Offset(size.width * 0.8038462, size.height * 0.8429864),
        radius: Radius.elliptical(size.width * 0.07175824, size.height * 0.1477376), rotation: 0, largeArc: false, clockwise: false);
    path_2.lineTo(size.width * 0.7553846, size.height * 0.8429864);
    path_2.lineTo(size.width * 0.7553846, size.height * 0.5488688);
    path_2.close();

    // ignore: non_constant_identifier_names
    Paint paint_2_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint_2_stroke.color = Color(0xff3c4044).withOpacity(1.0);
    paint_2_stroke.strokeCap = StrokeCap.round;
    paint_2_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_2, paint_2_stroke);

    // ignore: non_constant_identifier_names
    Paint paint_3_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint_3_stroke.color = Color(0xff3c4044).withOpacity(1.0);
    paint_3_stroke.strokeCap = StrokeCap.round;
    paint_3_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawOval(Rect.fromCenter(center: Offset(size.width * 0.3969231, size.height * 0.8420814), width: size.width * 0.1435165, height: size.height * 0.2932127), paint_3_stroke);

    // ignore: non_constant_identifier_names
    Paint paint_4_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint_4_stroke.color = Color(0xff3c4044).withOpacity(1.0);
    paint_4_stroke.strokeCap = StrokeCap.round;
    paint_4_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawOval(Rect.fromCenter(center: Offset(size.width * 0.8749451, size.height * 0.8420814), width: size.width * 0.1435165, height: size.height * 0.2932127), paint_4_stroke);

    // ignore: non_constant_identifier_names
    Paint paint_5_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint_5_stroke.color = Color(0xff3c4044).withOpacity(1.0);
    paint_5_stroke.strokeCap = StrokeCap.round;
    paint_5_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawLine(Offset(size.width * 0.005494505, size.height * 0.1090498), Offset(size.width * 0.1818681, size.height * 0.1090498), paint_5_stroke);

    // ignore: non_constant_identifier_names
    Paint paint_6_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint_6_stroke.color = Color(0xff3c4044).withOpacity(1.0);
    paint_6_stroke.strokeCap = StrokeCap.round;
    paint_6_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawLine(Offset(size.width * 0.07472527, size.height * 0.3045249), Offset(size.width * 0.1818681, size.height * 0.3045249), paint_6_stroke);

    // ignore: non_constant_identifier_names
    Paint paint_7_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint_7_stroke.color = Theme.of(context).colorScheme.secondary.withOpacity(1.0);
    paint_7_stroke.strokeCap = StrokeCap.round;
    paint_7_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawLine(Offset(size.width * 0.1043956, size.height * 0.5000000), Offset(size.width * 0.1818681, size.height * 0.5000000), paint_7_stroke);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
