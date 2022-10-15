import 'dart:ui' as ui;
import 'package:flutter/material.dart';

Widget productScriptIconColor({@required double xwidth}) {
  return CustomPaint(
    size: Size(xwidth, (xwidth * 1.2541813898704357).toDouble()),
    painter: ProductScriptIconColor(),
  );
}

class ProductScriptIconColor extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.8749117, size.height * 0.7092412);
    path0.lineTo(size.width * 0.8749117, size.height * 0.6166416);
    path0.arcToPoint(Offset(size.width * 0.6563015, size.height * 0.4415853),
        radius:
            Radius.elliptical(size.width * 0.2193168, size.height * 0.1748685),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path0.arcToPoint(Offset(size.width * 0.5620730, size.height * 0.3664538),
        radius: Radius.elliptical(
            size.width * 0.09422850, size.height * 0.07513148),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path0.lineTo(size.width * 0.5620730, size.height * 0.2913223);
    path0.arcToPoint(Offset(size.width * 0.4369847, size.height * 0.2913223),
        radius:
            Radius.elliptical(size.width * 0.1884570, size.height * 0.1502630),
        rotation: 0,
        largeArc: true,
        clockwise: false);
    path0.lineTo(size.width * 0.4369847, size.height * 0.3664538);
    path0.arcToPoint(Offset(size.width * 0.3427562, size.height * 0.4415853),
        radius: Radius.elliptical(
            size.width * 0.09422850, size.height * 0.07513148),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path0.arcToPoint(Offset(size.width * 0.1241461, size.height * 0.6166416),
        radius:
            Radius.elliptical(size.width * 0.2193168, size.height * 0.1748685),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path0.lineTo(size.width * 0.1241461, size.height * 0.7092412);
    path0.arcToPoint(Offset(size.width * 0.2489988, size.height * 0.7092412),
        radius:
            Radius.elliptical(size.width * 0.1884570, size.height * 0.1502630),
        rotation: 0,
        largeArc: true,
        clockwise: false);
    path0.lineTo(size.width * 0.2489988, size.height * 0.6166416);
    path0.arcToPoint(Offset(size.width * 0.3432273, size.height * 0.5415101),
        radius: Radius.elliptical(
            size.width * 0.09422850, size.height * 0.07513148),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path0.arcToPoint(Offset(size.width * 0.4998822, size.height * 0.4883546),
        radius:
            Radius.elliptical(size.width * 0.2174323, size.height * 0.1733659),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path0.arcToPoint(Offset(size.width * 0.6563015, size.height * 0.5413223),
        radius:
            Radius.elliptical(size.width * 0.2183746, size.height * 0.1741172),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path0.arcToPoint(Offset(size.width * 0.7505300, size.height * 0.6164538),
        radius: Radius.elliptical(
            size.width * 0.09422850, size.height * 0.07513148),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path0.lineTo(size.width * 0.7505300, size.height * 0.7090533);
    path0.arcToPoint(Offset(size.width * 0.8753828, size.height * 0.7090533),
        radius:
            Radius.elliptical(size.width * 0.1884570, size.height * 0.1502630),
        rotation: 0,
        largeArc: true,
        clockwise: false);
    path0.close();
    path0.moveTo(size.width * 0.1884570, size.height * 0.9000751);
    path0.arcToPoint(Offset(size.width * 0.2508834, size.height * 0.8499249),
        radius: Radius.elliptical(
            size.width * 0.06289753, size.height * 0.05015026),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path0.arcToPoint(Offset(size.width * 0.1884570, size.height * 0.9000751),
        radius: Radius.elliptical(
            size.width * 0.06266196, size.height * 0.04996243),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path0.close();
    path0.moveTo(size.width * 0.4998822, size.height * 0.09992487);
    path0.arcToPoint(Offset(size.width * 0.4374558, size.height * 0.1502630),
        radius: Radius.elliptical(
            size.width * 0.06289753, size.height * 0.05015026),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path0.arcToPoint(Offset(size.width * 0.4998822, size.height * 0.09992487),
        radius: Radius.elliptical(
            size.width * 0.06289753, size.height * 0.05015026),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path0.close();
    path0.moveTo(size.width * 0.8124853, size.height * 0.9000751);
    path0.arcToPoint(Offset(size.width * 0.8749117, size.height * 0.8499249),
        radius: Radius.elliptical(
            size.width * 0.06289753, size.height * 0.05015026),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path0.arcToPoint(Offset(size.width * 0.8124853, size.height * 0.9000751),
        radius: Radius.elliptical(
            size.width * 0.06266196, size.height * 0.04996243),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path0.close();

    Paint paint0fill = Paint()..style = PaintingStyle.fill;
    paint0fill.shader = ui.Gradient.linear(
        Offset(0, size.height * 0.5000000),
        Offset(size.width, size.height * 0.5000000),
        [Color(0xfff9a846).withOpacity(1), Color(0xffed2524).withOpacity(1)],
        [0, 1]);
    canvas.drawPath(path0, paint0fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
