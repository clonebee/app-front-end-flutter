// import 'dart:ui' as ui;
import 'package:flutter/material.dart';

Widget iconBalance({@required double widthx, @required Color colorx}) {
  return CustomPaint(
    size: Size(widthx, (widthx * 0.7754713701932718).toDouble()),
    painter: IconBalance(colorx: colorx),
  );
}

class IconBalance extends CustomPainter {
  final Color colorx;

  IconBalance({@required this.colorx});
  @override
  void paint(Canvas canvas, Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.9988607, size.height * 0.6494000);
    path0.arcToPoint(Offset(size.width * 0.9975238, size.height * 0.6409543),
        radius: Radius.elliptical(size.width * 0.03193716, size.height * 0.04118419), rotation: 0, largeArc: false, clockwise: false);
    path0.lineTo(size.width * 0.9975238, size.height * 0.6409390);
    path0.lineTo(size.width * 0.8067223, size.height * 0.06091429);
    path0.cubicTo(size.width * 0.8065202, size.height * 0.06029748, size.width * 0.8061043, size.height * 0.05992012, size.width * 0.8058830, size.height * 0.05932247);
    path0.arcToPoint(Offset(size.width * 0.8027635, size.height * 0.05329234),
        radius: Radius.elliptical(size.width * 0.02990506, size.height * 0.03856373), rotation: 0, largeArc: false, clockwise: false);
    path0.arcToPoint(Offset(size.width * 0.8000600, size.height * 0.04830043),
        radius: Radius.elliptical(size.width * 0.03008480, size.height * 0.03879551), rotation: 0, largeArc: false, clockwise: false);
    path0.cubicTo(size.width * 0.7995891, size.height * 0.04768746, size.width * 0.7990499, size.height * 0.04725455, size.width * 0.7985523, size.height * 0.04668755);
    path0.arcToPoint(Offset(size.width * 0.7941568, size.height * 0.04298863),
        radius: Radius.elliptical(size.width * 0.03060026, size.height * 0.03946020), rotation: 0, largeArc: false, clockwise: false);
    path0.cubicTo(size.width * 0.7933592, size.height * 0.04234884, size.width * 0.7926372, size.height * 0.04154814, size.width * 0.7917979, size.height * 0.04100413);
    path0.cubicTo(size.width * 0.7911889, size.height * 0.04060953, size.width * 0.7907982, size.height * 0.03990461, size.width * 0.7901639, size.height * 0.03955789);
    path0.lineTo(size.width * 0.7900436, size.height * 0.03952533);
    path0.cubicTo(size.width * 0.7894866, size.height * 0.03922267, size.width * 0.7888969, size.height * 0.03915371, size.width * 0.7883279, size.height * 0.03889128);
    path0.arcToPoint(Offset(size.width * 0.7833665, size.height * 0.03765001),
        radius: Radius.elliptical(size.width * 0.03087358, size.height * 0.03981266), rotation: 0, largeArc: false, clockwise: false);
    path0.arcToPoint(Offset(size.width * 0.7763923, size.height * 0.03670373),
        radius: Radius.elliptical(size.width * 0.02999122, size.height * 0.03867483), rotation: 0, largeArc: false, clockwise: false);
    path0.cubicTo(size.width * 0.7759066, size.height * 0.03673438, size.width * 0.7754743, size.height * 0.03645471, size.width * 0.7749856, size.height * 0.03651218);
    path0.lineTo(size.width * 0.5748793, size.height * 0.06118247);
    path0.arcToPoint(Offset(size.width * 0.4196929, size.height * 0.08032449),
        radius: Radius.elliptical(size.width * 0.08286727, size.height * 0.1068605), rotation: 0, largeArc: false, clockwise: false);
    path0.lineTo(size.width * 0.2190755, size.height * 0.1050484);
    path0.arcToPoint(Offset(size.width * 0.2149787, size.height * 0.1066556),
        radius: Radius.elliptical(size.width * 0.02945646, size.height * 0.03798523), rotation: 0, largeArc: false, clockwise: false);
    path0.arcToPoint(Offset(size.width * 0.2101257, size.height * 0.1080616),
        radius: Radius.elliptical(size.width * 0.03113650, size.height * 0.04015171), rotation: 0, largeArc: false, clockwise: false);
    path0.cubicTo(size.width * 0.2099653, size.height * 0.1081478, size.width * 0.2097959, size.height * 0.1081075, size.width * 0.2096355, size.height * 0.1081957);
    path0.cubicTo(size.width * 0.2092077, size.height * 0.1084351, size.width * 0.2089507, size.height * 0.1089236, size.width * 0.2085348, size.height * 0.1091860);
    path0.arcToPoint(Offset(size.width * 0.2039388, size.height * 0.1131684),
        radius: Radius.elliptical(size.width * 0.03027494, size.height * 0.03904070), rotation: 0, largeArc: false, clockwise: false);
    path0.arcToPoint(Offset(size.width * 0.2000306, size.height * 0.1168175),
        radius: Radius.elliptical(size.width * 0.02957232, size.height * 0.03813464), rotation: 0, largeArc: false, clockwise: false);
    path0.cubicTo(size.width * 0.1995850, size.height * 0.1173922, size.width * 0.1992314, size.height * 0.1180052, size.width * 0.1988170, size.height * 0.1186085);
    path0.arcToPoint(Offset(size.width * 0.1957243, size.height * 0.1247996),
        radius: Radius.elliptical(size.width * 0.03063739, size.height * 0.03950809), rotation: 0, largeArc: false, clockwise: false);
    path0.arcToPoint(Offset(size.width * 0.1933594, size.height * 0.1291843),
        radius: Radius.elliptical(size.width * 0.02946389, size.height * 0.03799481), rotation: 0, largeArc: false, clockwise: false);
    path0.lineTo(size.width * 0.002563885, size.height * 0.6974495);
    path0.lineTo(size.width * 0.002535662, size.height * 0.6976199);
    path0.arcToPoint(Offset(size.width * 0.001429002, size.height * 0.7043377),
        radius: Radius.elliptical(size.width * 0.03200698, size.height * 0.04127422), rotation: 0, largeArc: false, clockwise: false);
    path0.arcToPoint(Offset(size.width * 0.00002079629, size.height * 0.7133408),
        radius: Radius.elliptical(size.width * 0.03166829, size.height * 0.04083748), rotation: 0, largeArc: false, clockwise: false);
    path0.lineTo(0, size.height * 0.7134538);
    path0.arcToPoint(Offset(size.width * 0.4441122, size.height * 0.7134538),
        radius: Radius.elliptical(size.width * 0.2220568, size.height * 0.2863508), rotation: 0, largeArc: true, clockwise: false);
    path0.lineTo(size.width * 0.4440914, size.height * 0.7133331);
    path0.arcToPoint(Offset(size.width * 0.4426832, size.height * 0.7043301),
        radius: Radius.elliptical(size.width * 0.03175445, size.height * 0.04094858), rotation: 0, largeArc: false, clockwise: false);
    path0.arcToPoint(Offset(size.width * 0.4415765, size.height * 0.6976123),
        radius: Radius.elliptical(size.width * 0.03200698, size.height * 0.04127422), rotation: 0, largeArc: false, clockwise: false);
    path0.lineTo(size.width * 0.4415483, size.height * 0.6974418);
    path0.lineTo(size.width * 0.2678146, size.height * 0.1800611);
    path0.lineTo(size.width * 0.4278941, size.height * 0.1603310);
    path0.arcToPoint(Offset(size.width * 0.5785855, size.height * 0.1417502),
        radius: Radius.elliptical(size.width * 0.08269051, size.height * 0.1066326), rotation: 0, largeArc: false, clockwise: false);
    path0.lineTo(size.width * 0.7286827, size.height * 0.1232499);
    path0.lineTo(size.width * 0.5583700, size.height * 0.6409409);
    path0.lineTo(size.width * 0.5583700, size.height * 0.6409562);
    path0.arcToPoint(Offset(size.width * 0.5570331, size.height * 0.6494019),
        radius: Radius.elliptical(size.width * 0.03203223, size.height * 0.04130678), rotation: 0, largeArc: false, clockwise: false);
    path0.arcToPoint(Offset(size.width * 0.5558967, size.height * 0.6566809),
        radius: Radius.elliptical(size.width * 0.03227584, size.height * 0.04162093), rotation: 0, largeArc: false, clockwise: false);
    path0.lineTo(size.width * 0.5558967, size.height * 0.6566809);
    path0.arcToPoint(Offset(size.width * 1.000009, size.height * 0.6566809), radius: Radius.elliptical(size.width * 0.2220568, size.height * 0.2863508), rotation: 0, largeArc: true, clockwise: false);
    path0.lineTo(size.width * 1.000009, size.height * 0.6566809);
    path0.arcToPoint(Offset(size.width * 0.9988607, size.height * 0.6494000),
        radius: Radius.elliptical(size.width * 0.03227584, size.height * 0.04162093), rotation: 0, largeArc: false, clockwise: false);
    path0.close();
    path0.moveTo(size.width * 0.9215460, size.height * 0.6163817);
    path0.lineTo(size.width * 0.6343403, size.height * 0.6163817);
    path0.lineTo(size.width * 0.7779506, size.height * 0.1798523);
    path0.close();
    path0.moveTo(size.width * 0.2220479, size.height * 0.2466282);
    path0.lineTo(size.width * 0.3652720, size.height * 0.6731565);
    path0.lineTo(size.width * 0.07884022, size.height * 0.6731565);
    path0.close();
    path0.moveTo(size.width * 0.2220479, size.height * 0.9194035);
    path0.arcToPoint(Offset(size.width * 0.06565686, size.height * 0.7537511),
        radius: Radius.elliptical(size.width * 0.1598002, size.height * 0.2060684), rotation: 0, largeArc: false, clockwise: true);
    path0.lineTo(size.width * 0.3784539, size.height * 0.7537511);
    path0.arcToPoint(Offset(size.width * 0.2220464, size.height * 0.9194035),
        radius: Radius.elliptical(size.width * 0.1598091, size.height * 0.2060799), rotation: 0, largeArc: false, clockwise: true);
    path0.close();
    path0.moveTo(size.width * 0.5000022, size.height * 0.1343275);
    path0.arcToPoint(Offset(size.width * 0.5208327, size.height * 0.1074620),
        radius: Radius.elliptical(size.width * 0.02083343, size.height * 0.02686550), rotation: 0, largeArc: true, clockwise: true);
    path0.arcToPoint(Offset(size.width * 0.5000022, size.height * 0.1343275),
        radius: Radius.elliptical(size.width * 0.02086165, size.height * 0.02690190), rotation: 0, largeArc: false, clockwise: true);
    path0.close();
    path0.moveTo(size.width * 0.7779536, size.height * 0.8625693);
    path0.arcToPoint(Offset(size.width * 0.6215461, size.height * 0.6969706),
        radius: Radius.elliptical(size.width * 0.1597794, size.height * 0.2060416), rotation: 0, largeArc: false, clockwise: true);
    path0.lineTo(size.width * 0.9343476, size.height * 0.6969706);
    path0.arcToPoint(Offset(size.width * 0.7779536, size.height * 0.8625693),
        radius: Radius.elliptical(size.width * 0.1597734, size.height * 0.2060340), rotation: 0, largeArc: false, clockwise: true);
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
