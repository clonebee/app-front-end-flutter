import 'package:flutter/material.dart';

Widget executionIconColor({@required double xwidth}) {
  return CustomPaint(
    size: Size(xwidth, (xwidth * 0.7887064817435607).toDouble()),
    painter: ExecutionIconColor(),
  );
}

class ExecutionIconColor extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.6851118, size.height * 0.9657276);
    path0.lineTo(size.width * 0.3150297, size.height * 0.9657276);
    path0.lineTo(size.width * 0.3457402, size.height * 0.5725821);
    path0.lineTo(size.width * 0.6542598, size.height * 0.5725821);
    path0.lineTo(size.width * 0.6851118, size.height * 0.9657276);
    path0.close();

    Paint paint0fill = Paint()..style = PaintingStyle.fill;
    paint0fill.color = Color(0xff545454).withOpacity(1.0);
    canvas.drawPath(path0, paint0fill);

    Paint paint1fill = Paint()..style = PaintingStyle.fill;
    paint1fill.color = Color(0xff545454).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.2698840, size.height * 0.9657276,
            size.width * 0.4602321, size.height * 0.03427238),
        paint1fill);

    Path path2 = Path();
    path2.moveTo(size.width * 0.9549958, 0);
    path2.lineTo(size.width * 0.04500425, 0);
    path2.arcToPoint(Offset(0, size.height * 0.05706083),
        radius: Radius.elliptical(
            size.width * 0.04514577, size.height * 0.05724027),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path2.lineTo(0, size.height * 0.7875471);
    path2.arcToPoint(Offset(size.width * 0.04500425, size.height * 0.8446079),
        radius: Radius.elliptical(
            size.width * 0.04514577, size.height * 0.05724027),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path2.lineTo(size.width * 0.9549958, size.height * 0.8446079);
    path2.arcToPoint(Offset(size.width * 1.000000, size.height * 0.7875471),
        radius: Radius.elliptical(
            size.width * 0.04514577, size.height * 0.05724027),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path2.lineTo(size.width * 1.000000, size.height * 0.05706083);
    path2.arcToPoint(Offset(size.width * 0.9549958, 0),
        radius: Radius.elliptical(
            size.width * 0.04514577, size.height * 0.05724027),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path2.close();

    Paint paint2fill = Paint()..style = PaintingStyle.fill;
    paint2fill.color = Color(0xff545454).withOpacity(1.0);
    canvas.drawPath(path2, paint2fill);

    Path path3 = Path();
    path3.moveTo(size.width * 0.3013020, size.height * 0.5334649);
    path3.lineTo(size.width * 0.5135862, size.height * 0.3247802);
    path3.lineTo(size.width * 0.7020945, size.height * 0.3813027);
    path3.cubicTo(
        size.width * 0.7020945,
        size.height * 0.3813027,
        size.width * 0.9138126,
        size.height * 0.1771039,
        size.width * 0.9639117,
        size.height * 0.1272205);
    path3.lineTo(size.width * 0.9639117, size.height * 0.09492195);
    path3.arcToPoint(Offset(size.width * 0.9368808, size.height * 0.06064956),
        radius: Radius.elliptical(
            size.width * 0.02717237, size.height * 0.03445182),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path3.lineTo(size.width * 0.06311916, size.height * 0.06064956);
    path3.arcToPoint(Offset(size.width * 0.03608831, size.height * 0.09492195),
        radius: Radius.elliptical(
            size.width * 0.02703085, size.height * 0.03427238),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path3.lineTo(size.width * 0.03608831, size.height * 0.5768886);
    path3.lineTo(size.width * 0.1471837, size.height * 0.4595371);
    path3.close();

    Paint paint3fill = Paint()..style = PaintingStyle.fill;
    paint3fill.color = Color(0xfffa7564).withOpacity(1.0);
    canvas.drawPath(path3, paint3fill);

    Path path4 = Path();
    path4.moveTo(size.width * 0.7023776, size.height * 0.3813027);
    path4.lineTo(size.width * 0.5138692, size.height * 0.3247802);
    path4.lineTo(size.width * 0.3015851, size.height * 0.5334649);
    path4.lineTo(size.width * 0.1471837, size.height * 0.4595371);
    path4.lineTo(size.width * 0.03608831, size.height * 0.5768886);
    path4.lineTo(size.width * 0.03608831, size.height * 0.7064418);
    path4.arcToPoint(Offset(size.width * 0.06311916, size.height * 0.7407142),
        radius: Radius.elliptical(
            size.width * 0.02717237, size.height * 0.03445182),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path4.lineTo(size.width * 0.9368808, size.height * 0.7407142);
    path4.arcToPoint(Offset(size.width * 0.9639117, size.height * 0.7064418),
        radius: Radius.elliptical(
            size.width * 0.02717237, size.height * 0.03445182),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path4.lineTo(size.width * 0.9639117, size.height * 0.1272205);
    path4.cubicTo(
        size.width * 0.9138126,
        size.height * 0.1771039,
        size.width * 0.7076139,
        size.height * 0.3832765,
        size.width * 0.7023776,
        size.height * 0.3813027);
    path4.close();

    Paint paint4fill = Paint()..style = PaintingStyle.fill;
    paint4fill.color = Color(0xffe55d4c).withOpacity(1.0);
    canvas.drawPath(path4, paint4fill);

    Path path5 = Path();
    path5.moveTo(size.width * 0.7291254, size.height * 0.3778934);
    path5.arcToPoint(Offset(size.width * 0.7008208, size.height * 0.4137807),
        radius: Radius.elliptical(
            size.width * 0.02830456, size.height * 0.03588731),
        rotation: 0,
        largeArc: true,
        clockwise: false);
    path5.arcToPoint(Offset(size.width * 0.7291254, size.height * 0.3778934),
        radius: Radius.elliptical(
            size.width * 0.02830456, size.height * 0.03588731),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path5.close();

    Paint paint5fill = Paint()..style = PaintingStyle.fill;
    paint5fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path5, paint5fill);

    Path path6 = Path();
    path6.moveTo(size.width * 0.5461364, size.height * 0.3289072);
    path6.arcToPoint(Offset(size.width * 0.5178319, size.height * 0.3647945),
        radius: Radius.elliptical(
            size.width * 0.02830456, size.height * 0.03588731),
        rotation: 0,
        largeArc: true,
        clockwise: false);
    path6.arcToPoint(Offset(size.width * 0.5461364, size.height * 0.3289072),
        radius: Radius.elliptical(
            size.width * 0.02830456, size.height * 0.03588731),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path6.close();

    Paint paint6fill = Paint()..style = PaintingStyle.fill;
    paint6fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path6, paint6fill);

    Path path7 = Path();
    path7.moveTo(size.width * 0.3279083, size.height * 0.5309528);
    path7.arcToPoint(Offset(size.width * 0.2996037, size.height * 0.5668401),
        radius: Radius.elliptical(
            size.width * 0.02830456, size.height * 0.03588731),
        rotation: 0,
        largeArc: true,
        clockwise: false);
    path7.arcToPoint(Offset(size.width * 0.3279083, size.height * 0.5309528),
        radius: Radius.elliptical(
            size.width * 0.02830456, size.height * 0.03588731),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path7.close();

    Paint paint7fill = Paint()..style = PaintingStyle.fill;
    paint7fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path7, paint7fill);

    Path path8 = Path();
    path8.moveTo(size.width * 0.1752052, size.height * 0.4683294);
    path8.arcToPoint(Offset(size.width * 0.1469007, size.height * 0.5042168),
        radius: Radius.elliptical(
            size.width * 0.02830456, size.height * 0.03588731),
        rotation: 0,
        largeArc: true,
        clockwise: false);
    path8.arcToPoint(Offset(size.width * 0.1752052, size.height * 0.4683294),
        radius: Radius.elliptical(
            size.width * 0.02830456, size.height * 0.03588731),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path8.close();

    Paint paint8fill = Paint()..style = PaintingStyle.fill;
    paint8fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path8, paint8fill);

    Path path9 = Path();
    path9.moveTo(size.width * 0.7009624, size.height * 0.3669478);
    path9.lineTo(size.width * 0.5162751, size.height * 0.3115019);
    path9.arcToPoint(Offset(size.width * 0.5072177, size.height * 0.3140140),
        radius: Radius.elliptical(
            size.width * 0.01089725, size.height * 0.01381662),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path9.lineTo(size.width * 0.2996037, size.height * 0.5178539);
    path9.lineTo(size.width * 0.1510048, size.height * 0.4460793);
    path9.arcToPoint(Offset(size.width * 0.1403906, size.height * 0.4482325),
        radius: Radius.elliptical(
            size.width * 0.01061421, size.height * 0.01345774),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path9.lineTo(size.width * 0.03608831, size.height * 0.5562534);
    path9.lineTo(size.width * 0.03608831, size.height * 0.5881931);
    path9.arcToPoint(Offset(size.width * 0.04245684, size.height * 0.5860398),
        radius: Radius.elliptical(
            size.width * 0.009906595, size.height * 0.01256056),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path9.lineTo(size.width * 0.1497311, size.height * 0.4749686);
    path9.lineTo(size.width * 0.2981885, size.height * 0.5467432);
    path9.arcToPoint(Offset(size.width * 0.3085197, size.height * 0.5447694),
        radius: Radius.elliptical(
            size.width * 0.01089725, size.height * 0.01381662),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path9.lineTo(size.width * 0.5169827, size.height * 0.3402117);
    path9.lineTo(size.width * 0.6995471, size.height * 0.3940427);
    path9.cubicTo(
        size.width * 0.7061987,
        size.height * 0.3969137,
        size.width * 0.7098783,
        size.height * 0.3981697,
        size.width * 0.9644778,
        size.height * 0.1496501);
    path9.lineTo(size.width * 0.9644778, size.height * 0.1153777);
    path9.cubicTo(
        size.width * 0.8593264,
        size.height * 0.2172977,
        size.width * 0.7236060,
        size.height * 0.3484658,
        size.width * 0.7009624,
        size.height * 0.3669478);
    path9.close();

    Paint paint9fill = Paint()..style = PaintingStyle.fill;
    paint9fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path9, paint9fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
