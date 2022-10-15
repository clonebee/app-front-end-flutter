import 'package:flutter/material.dart';

Widget supervisoryIconColor({@required double xwidth}) {
  return CustomPaint(
    size: Size(xwidth, (xwidth * 5).toDouble()),
    painter: SupervisoryIconColor(),
  );
}

class SupervisoryIconColor extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.5368685, size.height * 0.6357842);
    path0.lineTo(size.width * 0.5368685, size.height * 0.2815172);
    path0.arcToPoint(Offset(size.width * 0.4916850, size.height * 0.2364371),
        radius:
            Radius.elliptical(size.width * 0.1129589, size.height * 0.05596145),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path0.cubicTo(
        size.width * 0.3661751,
        size.height * 0.1913571,
        size.width * 0.2315657,
        size.height * 0.2347272,
        size.width * 0.2315657,
        size.height * 0.2936422);
    path0.lineTo(size.width * 0.2315657, size.height * 0.6381160);
    path0.arcToPoint(Offset(size.width * 0.05334170, size.height * 0.8911861),
        radius:
            Radius.elliptical(size.width * 0.3802949, size.height * 0.1884035),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path0.arcToPoint(Offset(size.width * 0.2196423, size.height * 0.9732629),
        radius:
            Radius.elliptical(size.width * 0.3304048, size.height * 0.1636872),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path0.arcToPoint(Offset(size.width * 0.5368685, size.height * 0.6357842),
        radius:
            Radius.elliptical(size.width * 0.3765297, size.height * 0.1865382),
        rotation: 0,
        largeArc: true,
        clockwise: false);
    path0.close();

    Paint paint0stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint0stroke.color = Color(0xff545454).withOpacity(1.0);
    canvas.drawPath(path0, paint0stroke);

    Paint paint0fill = Paint()..style = PaintingStyle.fill;
    paint0fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path0, paint0fill);

    Path path1 = Path();
    path1.moveTo(size.width, size.height * 0.2432769);
    path1.lineTo(size.width * 0.9294007, size.height * 0.2432769);
    path1.arcToPoint(Offset(size.width * 0.5073737, size.height * 0.03513135),
        radius:
            Radius.elliptical(size.width * 0.4242234, size.height * 0.2101663),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path1.lineTo(size.width * 0.5073737, 0);
    path1.arcToPoint(Offset(size.width, size.height * 0.2432769),
        radius:
            Radius.elliptical(size.width * 0.4945089, size.height * 0.2449868),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path1.close();

    Paint paint1fill = Paint()..style = PaintingStyle.fill;
    paint1fill.color = Color(0xff545454).withOpacity(1.0);
    canvas.drawPath(path1, paint1fill);

    Path path2 = Path();
    path2.moveTo(size.width * 0.8588014, size.height * 0.2437432);
    path2.lineTo(size.width * 0.7882021, size.height * 0.2437432);
    path2.arcToPoint(Offset(size.width * 0.5083150, size.height * 0.1052386),
        radius:
            Radius.elliptical(size.width * 0.2823972, size.height * 0.1399036),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path2.lineTo(size.width * 0.5083150, size.height * 0.07010726);
    path2.arcToPoint(Offset(size.width * 0.8588014, size.height * 0.2437432),
        radius:
            Radius.elliptical(size.width * 0.3533103, size.height * 0.1750350),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path2.close();

    Paint paint2fill = Paint()..style = PaintingStyle.fill;
    paint2fill.color = Color(0xff545454).withOpacity(1.0);
    canvas.drawPath(path2, paint2fill);

    Path path3 = Path();
    path3.moveTo(size.width * 0.7176028, size.height * 0.2442095);
    path3.lineTo(size.width * 0.6470035, size.height * 0.2442095);
    path3.arcToPoint(Offset(size.width * 0.5092564, size.height * 0.1753459),
        radius:
            Radius.elliptical(size.width * 0.1411986, size.height * 0.06995181),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path3.lineTo(size.width * 0.5092564, size.height * 0.1402145);
    path3.arcToPoint(Offset(size.width * 0.7176028, size.height * 0.2442095),
        radius:
            Radius.elliptical(size.width * 0.2117979, size.height * 0.1049277),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path3.close();

    Paint paint3fill = Paint()..style = PaintingStyle.fill;
    paint3fill.color = Color(0xff545454).withOpacity(1.0);
    canvas.drawPath(path3, paint3fill);

    Path path4 = Path();
    path4.moveTo(size.width * 0.4496392, size.height * 0.7167729);
    path4.lineTo(size.width * 0.4496392, size.height * 0.2914659);
    path4.arcToPoint(Offset(size.width * 0.3997490, size.height * 0.2667496),
        radius: Radius.elliptical(
            size.width * 0.04989018, size.height * 0.02471631),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path4.lineTo(size.width * 0.3683715, size.height * 0.2667496);
    path4.arcToPoint(Offset(size.width * 0.3187951, size.height * 0.2914659),
        radius: Radius.elliptical(
            size.width * 0.04989018, size.height * 0.02471631),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path4.lineTo(size.width * 0.3187951, size.height * 0.7167729);
    path4.arcToPoint(Offset(size.width * 0.4496392, size.height * 0.7167729),
        radius:
            Radius.elliptical(size.width * 0.1942265, size.height * 0.09622260),
        rotation: 0,
        largeArc: true,
        clockwise: false);
    path4.close();

    Paint paint4fill = Paint()..style = PaintingStyle.fill;
    paint4fill.color = Color(0xffe55d4c).withOpacity(1.0);
    canvas.drawPath(path4, paint4fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
