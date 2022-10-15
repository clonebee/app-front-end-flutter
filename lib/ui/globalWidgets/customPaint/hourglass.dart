// import 'dart:ui' as ui;
import 'package:flutter/material.dart';

Widget iconHourGlass({@required double widthx, @required Color colorx}) {
  return CustomPaint(
    size: Size(widthx, (widthx * 1.3847453327648276).toDouble()),
    painter: IconHourGlass(colorx: colorx),
  );
}

class IconHourGlass extends CustomPainter {
  final Color colorx;

  IconHourGlass({@required this.colorx});
  @override
  void paint(Canvas canvas, Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.4929000, size.height * 0.5135384);
    path0.arcToPoint(Offset(size.width * 0.4743417, size.height * 0.5001306),
        radius: Radius.elliptical(size.width * 0.01855020, size.height * 0.01339611), rotation: 0, largeArc: true, clockwise: false);
    path0.arcToPoint(Offset(size.width * 0.4929000, size.height * 0.5135384),
        radius: Radius.elliptical(size.width * 0.01855290, size.height * 0.01339806), rotation: 0, largeArc: false, clockwise: false);
    path0.close();

    Paint paint0fill = Paint()..style = PaintingStyle.fill;
    paint0fill.color = colorx;
    canvas.drawPath(path0, paint0fill);

    Path path1 = Path();
    path1.moveTo(size.width * 0.4929000, size.height * 0.4618677);
    path1.arcToPoint(Offset(size.width * 0.4743417, size.height * 0.4484482),
        radius: Radius.elliptical(size.width * 0.01855020, size.height * 0.01339611), rotation: 0, largeArc: true, clockwise: false);
    path1.arcToPoint(Offset(size.width * 0.4929000, size.height * 0.4618677),
        radius: Radius.elliptical(size.width * 0.01855560, size.height * 0.01340001), rotation: 0, largeArc: false, clockwise: false);
    path1.close();

    Paint paint1fill = Paint()..style = PaintingStyle.fill;
    paint1fill.color = colorx;
    canvas.drawPath(path1, paint1fill);

    Path path2 = Path();
    path2.moveTo(size.width * 0.9276315, size.height * 0.09876173);
    path2.lineTo(size.width, size.height * 0.09876173);
    path2.lineTo(size.width, 0);
    path2.lineTo(0, 0);
    path2.lineTo(0, size.height * 0.09876173);
    path2.lineTo(size.width * 0.08654152, size.height * 0.09876173);
    path2.cubicTo(size.width * 0.09735483, size.height * 0.2873713, size.width * 0.1928665, size.height * 0.4107660, size.width * 0.3590222, size.height * 0.4506698);
    path2.lineTo(size.width * 0.3590222, size.height * 0.5555313);
    path2.cubicTo(size.width * 0.1947232, size.height * 0.5949713, size.width * 0.09954609, size.height * 0.7161872, size.width * 0.08703807, size.height * 0.9012383);
    path2.lineTo(0, size.height * 0.9012383);
    path2.lineTo(0, size.height);
    path2.lineTo(size.width, size.height);
    path2.lineTo(size.width, size.height * 0.9012383);
    path2.lineTo(size.width * 0.9273023, size.height * 0.9012383);
    path2.cubicTo(size.width * 0.9146351, size.height * 0.7161872, size.width * 0.8194769, size.height * 0.5949713, size.width * 0.6553235, size.height * 0.5555313);
    path2.lineTo(size.width * 0.6553235, size.height * 0.4506698);
    path2.cubicTo(size.width * 0.8213281, size.height * 0.4107640, size.width * 0.9168263, size.height * 0.2873713, size.width * 0.9276315, size.height * 0.09876173);
    path2.close();
    path2.moveTo(size.width * 0.6056234, size.height * 0.5980134);
    path2.cubicTo(size.width * 0.7893713, size.height * 0.6312289, size.width * 0.8427686, size.height * 0.7730534, size.width * 0.8517360, size.height * 0.9012480);
    path2.lineTo(size.width * 0.7831348, size.height * 0.9012480);
    path2.lineTo(size.width * 0.6609042, size.height * 0.7978423);
    path2.lineTo(size.width * 0.5057345, size.height * 0.6666329);
    path2.lineTo(size.width * 0.3505648, size.height * 0.7978423);
    path2.lineTo(size.width * 0.2281831, size.height * 0.9012383);
    path2.lineTo(size.width * 0.1483935, size.height * 0.9012383);
    path2.cubicTo(size.width * 0.1573610, size.height * 0.7730534, size.width * 0.2106044, size.height * 0.6312289, size.width * 0.3943497, size.height * 0.5980036);
    path2.lineTo(size.width * 0.4202104, size.height * 0.5933752);
    path2.lineTo(size.width * 0.4202104, size.height * 0.4128376);
    path2.lineTo(size.width * 0.3943497, size.height * 0.4082092);
    path2.cubicTo(size.width * 0.2077358, size.height * 0.3743915, size.width * 0.1556771, size.height * 0.2286362, size.width * 0.1479078, size.height * 0.09876173);
    path2.lineTo(size.width * 0.8520868, size.height * 0.09876173);
    path2.cubicTo(size.width * 0.8442933, size.height * 0.2286362, size.width * 0.7924234, size.height * 0.3743915, size.width * 0.6056234, size.height * 0.4082092);
    path2.lineTo(size.width * 0.5797815, size.height * 0.4128376);
    path2.lineTo(size.width * 0.5797815, size.height * 0.5933850);
    path2.close();

    Paint paint2fill = Paint()..style = PaintingStyle.fill;
    paint2fill.color = colorx;
    canvas.drawPath(path2, paint2fill);

    Path path3 = Path();
    path3.moveTo(size.width * 0.4929000, size.height * 0.5518266);
    path3.arcToPoint(Offset(size.width * 0.5127752, size.height * 0.5661835),
        radius: Radius.elliptical(size.width * 0.01987522, size.height * 0.01435298), rotation: 0, largeArc: true, clockwise: false);
    path3.arcToPoint(Offset(size.width * 0.4929000, size.height * 0.5518266),
        radius: Radius.elliptical(size.width * 0.01988871, size.height * 0.01436272), rotation: 0, largeArc: false, clockwise: false);
    path3.close();

    Paint paint3fill = Paint()..style = PaintingStyle.fill;
    paint3fill.color = colorx;
    canvas.drawPath(path3, paint3fill);

    Path path4 = Path();
    path4.moveTo(size.width * 0.7359821, size.height * 0.2972479);
    path4.lineTo(size.width * 0.2906963, size.height * 0.2972479);
    path4.cubicTo(size.width * 0.2906963, size.height * 0.2972479, size.width * 0.3178955, size.height * 0.3986892, size.width * 0.4929000, size.height * 0.3986892);
    path4.arcToPoint(Offset(size.width * 0.7359821, size.height * 0.2972479),
        radius: Radius.elliptical(size.width * 0.2732849, size.height * 0.1973539), rotation: 0, largeArc: false, clockwise: false);
    path4.close();

    Paint paint4fill = Paint()..style = PaintingStyle.fill;
    paint4fill.color = colorx;
    canvas.drawPath(path4, paint4fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
