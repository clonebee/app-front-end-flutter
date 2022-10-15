import 'dart:ui' as ui;
import 'package:flutter/material.dart';

Widget sensorsIconColor({@required double xwidth}) {
  return CustomPaint(
    size: Size(xwidth, (xwidth * 4.427406832298137).toDouble()),
    painter: SensorsIconColor(),
  );
}

class SensorsIconColor extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.7682453, size.height * 0.7978957);
    path0.lineTo(size.width * 0.7682453, size.height * 0.06348093);
    path0.arcToPoint(Offset(size.width * 0.2177795, size.height * 0.06348093),
        radius:
            Radius.elliptical(size.width * 0.2752329, size.height * 0.06216572),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path0.lineTo(size.width * 0.2177795, size.height * 0.7978957);
    path0.arcToPoint(Offset(size.width * 0.7682453, size.height * 0.7978957),
        radius:
            Radius.elliptical(size.width * 0.4871894, size.height * 0.1100395),
        rotation: 0,
        largeArc: true,
        clockwise: false);
    path0.close();

    Paint paint0fill = Paint()..style = PaintingStyle.fill;
    paint0fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path0, paint0fill);

    Path path1 = Path();
    path1.moveTo(size.width * 0.4930124, size.height);
    path1.arcToPoint(Offset(size.width * 0.2119565, size.height * 0.7971942),
        radius:
            Radius.elliptical(size.width * 0.4930124, size.height * 0.1113547),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path1.lineTo(size.width * 0.2119565, size.height * 0.06348093);
    path1.arcToPoint(Offset(size.width * 0.7740683, size.height * 0.06348093),
        radius:
            Radius.elliptical(size.width * 0.2810559, size.height * 0.06348093),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path1.lineTo(size.width * 0.7740683, size.height * 0.7971942);
    path1.arcToPoint(Offset(size.width * 0.4930124, size.height),
        radius:
            Radius.elliptical(size.width * 0.4930124, size.height * 0.1113547),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path1.close();
    path1.moveTo(size.width * 0.4930124, size.height * 0.002718106);
    path1.arcToPoint(Offset(size.width * 0.2239907, size.height * 0.06348093),
        radius:
            Radius.elliptical(size.width * 0.2694099, size.height * 0.06085050),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path1.lineTo(size.width * 0.2239907, size.height * 0.7978957);
    path1.arcToPoint(Offset(size.width * 0.2212733, size.height * 0.7990355),
        radius: Radius.elliptical(
            size.width * 0.006599379, size.height * 0.001490574),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path1.arcToPoint(Offset(size.width * 0.7647516, size.height * 0.7990355),
        radius:
            Radius.elliptical(size.width * 0.4809783, size.height * 0.1086366),
        rotation: 0,
        largeArc: true,
        clockwise: false);
    path1.arcToPoint(Offset(size.width * 0.7620342, size.height * 0.7978957),
        radius: Radius.elliptical(
            size.width * 0.006599379, size.height * 0.001490574),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path1.lineTo(size.width * 0.7620342, size.height * 0.06348093);
    path1.arcToPoint(Offset(size.width * 0.4930124, size.height * 0.002718106),
        radius:
            Radius.elliptical(size.width * 0.2694099, size.height * 0.06085050),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path1.close();

    Paint paint1fill = Paint()..style = PaintingStyle.fill;
    paint1fill.color = Color(0xffd0d0d0).withOpacity(1.0);
    canvas.drawPath(path1, paint1fill);

    Path path2 = Path();
    path2.moveTo(size.width * 0.6987578, size.height * 0.8066637);
    path2.lineTo(size.width * 0.6987578, size.height * 0.07593161);
    path2.cubicTo(
        size.width * 0.6987578,
        size.height * 0.02516440,
        size.width * 0.6211180,
        size.height * 0.01455502,
        size.width * 0.4918478,
        size.height * 0.01455502);
    path2.cubicTo(
        size.width * 0.3777174,
        size.height * 0.01455502,
        size.width * 0.2853261,
        size.height * 0.02665498,
        size.width * 0.2853261,
        size.height * 0.07268742);
    path2.lineTo(size.width * 0.2853261, size.height * 0.8066637);
    path2.arcToPoint(Offset(size.width * 0.6987578, size.height * 0.8066637),
        radius:
            Radius.elliptical(size.width * 0.4177019, size.height * 0.09434459),
        rotation: 0,
        largeArc: true,
        clockwise: false);
    path2.close();

    Paint paint2fill = Paint()..style = PaintingStyle.fill;
    paint2fill.color = Color(0xffe7e7e7).withOpacity(1.0);
    canvas.drawPath(path2, paint2fill);

    Path path3 = Path();
    path3.moveTo(size.width * 0.4930124, size.height * 0.9843051);
    path3.arcToPoint(Offset(size.width * 0.2802795, size.height * 0.8059623),
        radius:
            Radius.elliptical(size.width * 0.4235248, size.height * 0.09565980),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path3.lineTo(size.width * 0.2802795, size.height * 0.07303814);
    path3.cubicTo(
        size.width * 0.2802795,
        size.height * 0.03296800,
        size.width * 0.3493789,
        size.height * 0.01359053,
        size.width * 0.4930124,
        size.height * 0.01359053);
    path3.cubicTo(
        size.width * 0.6242236,
        size.height * 0.01359053,
        size.width * 0.7057453,
        size.height * 0.02402455,
        size.width * 0.7057453,
        size.height * 0.07593161);
    path3.lineTo(size.width * 0.7057453, size.height * 0.8059623);
    path3.arcToPoint(Offset(size.width * 0.4930124, size.height * 0.9843051),
        radius:
            Radius.elliptical(size.width * 0.4235248, size.height * 0.09565980),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path3.close();
    path3.moveTo(size.width * 0.4930124, size.height * 0.01622096);
    path3.cubicTo(
        size.width * 0.3559783,
        size.height * 0.01622096,
        size.width * 0.2923137,
        size.height * 0.03428321,
        size.width * 0.2923137,
        size.height * 0.07303814);
    path3.lineTo(size.width * 0.2923137, size.height * 0.8074529);
    path3.lineTo(size.width * 0.2892081, size.height * 0.8074529);
    path3.arcToPoint(Offset(size.width * 0.6968168, size.height * 0.8074529),
        radius:
            Radius.elliptical(size.width * 0.4118789, size.height * 0.09302937),
        rotation: 0,
        largeArc: true,
        clockwise: false);
    path3.lineTo(size.width * 0.6937112, size.height * 0.8074529);
    path3.lineTo(size.width * 0.6937112, size.height * 0.07593161);
    path3.cubicTo(
        size.width * 0.6937112,
        size.height * 0.02630425,
        size.width * 0.6211180,
        size.height * 0.01622096,
        size.width * 0.4930124,
        size.height * 0.01622096);
    path3.close();

    Paint paint3fill = Paint()..style = PaintingStyle.fill;
    paint3fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path3, paint3fill);

    Path path4 = Path();
    path4.moveTo(size.width * 0.6805124, size.height * 0.8130644);
    path4.lineTo(size.width * 0.6805124, size.height * 0.5267865);
    path4.lineTo(size.width * 0.3059006, size.height * 0.5267865);
    path4.lineTo(size.width * 0.3059006, size.height * 0.8130644);
    path4.arcToPoint(Offset(size.width * 0.6805124, size.height * 0.8130644),
        radius:
            Radius.elliptical(size.width * 0.3784938, size.height * 0.08548882),
        rotation: 0,
        largeArc: true,
        clockwise: false);
    path4.close();

    Paint paint4fill = Paint()..style = PaintingStyle.fill;
    paint4fill.shader = ui.Gradient.linear(
        Offset(size.width * 0.4930124, size.height * -10.33757),
        Offset(size.width * 0.4930124, size.height * 0.8081543), [
      Color(0xff940c22).withOpacity(1),
      Color(0xffe3051a).withOpacity(1),
      Color(0xffb91436).withOpacity(1),
      Color(0xff772d62).withOpacity(1),
      Color(0xff463f82).withOpacity(1),
      Color(0xff284a96).withOpacity(1),
      Color(0xff1d4e9d).withOpacity(1),
      Color(0xff0096d0).withOpacity(1)
    ], [
      0,
      0.32,
      0.39,
      0.5,
      0.6,
      0.67,
      0.71,
      1
    ]);
    canvas.drawPath(path4, paint4fill);

    Path path5 = Path();
    path5.moveTo(size.width * 0.8423913, size.height * 0.9056554);
    path5.arcToPoint(Offset(size.width * 0.2049689, size.height * 0.9294169),
        radius:
            Radius.elliptical(size.width * 0.3734472, size.height * 0.08434897),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path5.arcToPoint(Offset(size.width * 0.1273292, size.height * 0.8895221),
        radius:
            Radius.elliptical(size.width * 0.3835404, size.height * 0.08662867),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path5.arcToPoint(Offset(size.width * 0.1250000, size.height * 0.8659360),
        radius:
            Radius.elliptical(size.width * 0.2783385, size.height * 0.06286716),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path5.arcToPoint(Offset(size.width * 0.1164596, size.height * 0.8873301),
        radius:
            Radius.elliptical(size.width * 0.3730590, size.height * 0.08426129),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path5.arcToPoint(Offset(size.width * 0.8734472, size.height * 0.8873301),
        radius:
            Radius.elliptical(size.width * 0.3784938, size.height * 0.08548882),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path5.arcToPoint(Offset(size.width * 0.8734472, size.height * 0.8856642),
        radius: Radius.elliptical(
            size.width * 0.04464286, size.height * 0.01008330),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path5.arcToPoint(Offset(size.width * 0.8423913, size.height * 0.9056554),
        radius:
            Radius.elliptical(size.width * 0.4821429, size.height * 0.1088996),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path5.close();

    Paint paint5fill = Paint()..style = PaintingStyle.fill;
    paint5fill.color = Color(0xff58a6ba).withOpacity(1.0);
    canvas.drawPath(path5, paint5fill);

    Path path6 = Path();
    path6.moveTo(size.width * 0.4611801, size.height * 0.8211311);
    path6.cubicTo(
        size.width * 0.4611801,
        size.height * 0.8211311,
        size.width * 0.2837733,
        size.height * 0.8203420,
        size.width * 0.2329193,
        size.height * 0.8704954);
    path6.cubicTo(
        size.width * 0.2329193,
        size.height * 0.8704954,
        size.width * 0.2298137,
        size.height * 0.8862779,
        size.width * 0.2655280,
        size.height * 0.8840859);
    path6.cubicTo(
        size.width * 0.3012422,
        size.height * 0.8818939,
        size.width * 0.3055124,
        size.height * 0.8592722,
        size.width * 0.4270186,
        size.height * 0.8495397);
    path6.cubicTo(
        size.width * 0.5485248,
        size.height * 0.8398071,
        size.width * 0.6032609,
        size.height * 0.8418238,
        size.width * 0.5916149,
        size.height * 0.8298992);
    path6.cubicTo(
        size.width * 0.5822981,
        size.height * 0.8206927,
        size.width * 0.4611801,
        size.height * 0.8211311,
        size.width * 0.4611801,
        size.height * 0.8211311);
    path6.close();

    Paint paint6fill = Paint()..style = PaintingStyle.fill;
    paint6fill.shader = ui.Gradient.linear(
        Offset(size.width * 0.1129000, size.height * 0.08050000),
        Offset(size.width * 0.1129000, size.height * 0.8212000),
        [Color(0xffffffff).withOpacity(1), Color(0xff0096d0).withOpacity(1)],
        [0, 1]);
    canvas.drawPath(path6, paint6fill);

    Path path7 = Path();
    path7.moveTo(size.width * 0.6987578, size.height * 0.8066637);
    path7.lineTo(size.width * 0.6987578, size.height * 0.07593161);
    path7.cubicTo(
        size.width * 0.6987578,
        size.height * 0.02516440,
        size.width * 0.6211180,
        size.height * 0.01455502,
        size.width * 0.4918478,
        size.height * 0.01455502);
    path7.cubicTo(
        size.width * 0.3777174,
        size.height * 0.01455502,
        size.width * 0.2853261,
        size.height * 0.02665498,
        size.width * 0.2853261,
        size.height * 0.07268742);
    path7.lineTo(size.width * 0.2853261, size.height * 0.8066637);
    path7.arcToPoint(Offset(size.width * 0.6987578, size.height * 0.8066637),
        radius:
            Radius.elliptical(size.width * 0.4177019, size.height * 0.09434459),
        rotation: 0,
        largeArc: true,
        clockwise: false);
    path7.close();
    path7.moveTo(size.width * 0.7763975, size.height * 0.8840859);
    path7.cubicTo(
        size.width * 0.7375776,
        size.height * 0.9231039,
        size.width * 0.2717391,
        size.height * 0.9425690,
        size.width * 0.1995342,
        size.height * 0.8809294);
    path7.cubicTo(
        size.width * 0.1479037,
        size.height * 0.8370890,
        size.width * 0.3684006,
        size.height * 0.8184130,
        size.width * 0.3684006,
        size.height * 0.8184130);
    path7.cubicTo(
        size.width * 0.3684006,
        size.height * 0.8184130,
        size.width * 0.3652950,
        size.height * 0.09171416,
        size.width * 0.3684006,
        size.height * 0.06435774);
    path7.cubicTo(
        size.width * 0.3715062,
        size.height * 0.03700132,
        size.width * 0.4460404,
        size.height * 0.03270495,
        size.width * 0.4460404,
        size.height * 0.03270495);
    path7.cubicTo(
        size.width * 0.4460404,
        size.height * 0.03270495,
        size.width * 0.4728261,
        size.height * 0.02621657,
        size.width * 0.5477484,
        size.height * 0.03165278);
    path7.cubicTo(
        size.width * 0.6226708,
        size.height * 0.03708900,
        size.width * 0.6315994,
        size.height * 0.06672512,
        size.width * 0.6315994,
        size.height * 0.06672512);
    path7.lineTo(size.width * 0.6315994, size.height * 0.8181499);
    path7.cubicTo(
        size.width * 0.7585404,
        size.height * 0.8298992,
        size.width * 0.8039596,
        size.height * 0.8555897,
        size.width * 0.7763975,
        size.height * 0.8840859);
    path7.close();

    Paint paint7fill = Paint()..style = PaintingStyle.fill;
    paint7fill.color = Color(0xffa9aaaa).withOpacity(1.0);
    canvas.drawPath(path7, paint7fill);

    Path path8 = Path();
    path8.moveTo(size.width * 0.4658385, size.height * 0.7970189);
    path8.cubicTo(
        size.width * 0.4658385,
        size.height * 0.8034196,
        size.width * 0.4538043,
        size.height * 0.8086804,
        size.width * 0.4386646,
        size.height * 0.8086804);
    path8.lineTo(size.width * 0.4386646, size.height * 0.8086804);
    path8.cubicTo(
        size.width * 0.4235248,
        size.height * 0.8086804,
        size.width * 0.4111025,
        size.height * 0.8034196,
        size.width * 0.4111025,
        size.height * 0.7970189);
    path8.lineTo(size.width * 0.4111025, size.height * 0.07610697);
    path8.cubicTo(
        size.width * 0.4111025,
        size.height * 0.06961859,
        size.width * 0.4235248,
        size.height * 0.06444542,
        size.width * 0.4386646,
        size.height * 0.06444542);
    path8.lineTo(size.width * 0.4386646, size.height * 0.06444542);
    path8.cubicTo(
        size.width * 0.4538043,
        size.height * 0.06444542,
        size.width * 0.4658385,
        size.height * 0.06961859,
        size.width * 0.4658385,
        size.height * 0.07610697);
    path8.close();

    Paint paint8fill = Paint()..style = PaintingStyle.fill;
    paint8fill.shader = ui.Gradient.linear(
        Offset(size.width * 0.1129000, size.height * 0.08050000),
        Offset(size.width * 0.1129000, size.height * 0.8212000),
        [Color(0xffffffff).withOpacity(1), Color(0xff0096d0).withOpacity(1)],
        [0, 1]);
    canvas.drawPath(path8, paint8fill);

    Path path9 = Path();
    path9.moveTo(size.width * 0.7104037, size.height * 0.7861464);
    path9.lineTo(size.width * 0.7833851, size.height * 0.7861464);
    path9.arcToPoint(Offset(size.width * 0.7934783, size.height * 0.7891276),
        radius: Radius.elliptical(
            size.width * 0.01203416, size.height * 0.002718106),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path9.cubicTo(
        size.width * 0.7934783,
        size.height * 0.7907058,
        size.width * 0.7888199,
        size.height * 0.7921087,
        size.width * 0.7833851,
        size.height * 0.7921087);
    path9.lineTo(size.width * 0.7104037, size.height * 0.7921087);
    path9.cubicTo(
        size.width * 0.7049689,
        size.height * 0.7921087,
        size.width * 0.7003106,
        size.height * 0.7907058,
        size.width * 0.7003106,
        size.height * 0.7891276);
    path9.arcToPoint(Offset(size.width * 0.7104037, size.height * 0.7861464),
        radius: Radius.elliptical(
            size.width * 0.01203416, size.height * 0.002718106),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path9.close();

    Paint paint9fill = Paint()..style = PaintingStyle.fill;
    paint9fill.color = Color(0xff1d1d1b).withOpacity(1.0);
    canvas.drawPath(path9, paint9fill);

    Path path10 = Path();
    path10.moveTo(size.width * 0.7577640, size.height * 0.7763262);
    path10.lineTo(size.width * 0.7104037, size.height * 0.7763262);
    path10.arcToPoint(Offset(size.width * 0.7104037, size.height * 0.7733450),
        radius: Radius.elliptical(
            size.width * 0.006599379, size.height * 0.001490574),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path10.lineTo(size.width * 0.7577640, size.height * 0.7733450);
    path10.arcToPoint(Offset(size.width * 0.7577640, size.height * 0.7763262),
        radius: Radius.elliptical(
            size.width * 0.006599379, size.height * 0.001490574),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path10.close();

    Paint paint10fill = Paint()..style = PaintingStyle.fill;
    paint10fill.color = Color(0xff1d1d1b).withOpacity(1.0);
    canvas.drawPath(path10, paint10fill);

    Path path11 = Path();
    path11.moveTo(size.width * 0.7577640, size.height * 0.7621219);
    path11.lineTo(size.width * 0.7104037, size.height * 0.7621219);
    path11.arcToPoint(Offset(size.width * 0.7049689, size.height * 0.7605436),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path11.arcToPoint(Offset(size.width * 0.7104037, size.height * 0.7590530),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path11.lineTo(size.width * 0.7577640, size.height * 0.7590530);
    path11.arcToPoint(Offset(size.width * 0.7631988, size.height * 0.7605436),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path11.arcToPoint(Offset(size.width * 0.7577640, size.height * 0.7621219),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path11.close();

    Paint paint11fill = Paint()..style = PaintingStyle.fill;
    paint11fill.color = Color(0xff1d1d1b).withOpacity(1.0);
    canvas.drawPath(path11, paint11fill);

    Path path12 = Path();
    path12.moveTo(size.width * 0.7577640, size.height * 0.7478299);
    path12.lineTo(size.width * 0.7104037, size.height * 0.7478299);
    path12.arcToPoint(Offset(size.width * 0.7049689, size.height * 0.7463393),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path12.arcToPoint(Offset(size.width * 0.7104037, size.height * 0.7447611),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path12.lineTo(size.width * 0.7577640, size.height * 0.7447611);
    path12.arcToPoint(Offset(size.width * 0.7631988, size.height * 0.7463393),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path12.arcToPoint(Offset(size.width * 0.7577640, size.height * 0.7478299),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path12.close();

    Paint paint12fill = Paint()..style = PaintingStyle.fill;
    paint12fill.color = Color(0xff1d1d1b).withOpacity(1.0);
    canvas.drawPath(path12, paint12fill);

    Path path13 = Path();
    path13.moveTo(size.width * 0.7577640, size.height * 0.7335379);
    path13.lineTo(size.width * 0.7104037, size.height * 0.7335379);
    path13.arcToPoint(Offset(size.width * 0.7104037, size.height * 0.7305568),
        radius: Radius.elliptical(
            size.width * 0.006599379, size.height * 0.001490574),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path13.lineTo(size.width * 0.7577640, size.height * 0.7305568);
    path13.arcToPoint(Offset(size.width * 0.7577640, size.height * 0.7335379),
        radius: Radius.elliptical(
            size.width * 0.006599379, size.height * 0.001490574),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path13.close();

    Paint paint13fill = Paint()..style = PaintingStyle.fill;
    paint13fill.color = Color(0xff1d1d1b).withOpacity(1.0);
    canvas.drawPath(path13, paint13fill);

    Path path14 = Path();
    path14.moveTo(size.width * 0.7104037, size.height * 0.7148619);
    path14.lineTo(size.width * 0.7833851, size.height * 0.7148619);
    path14.arcToPoint(Offset(size.width * 0.7934783, size.height * 0.7177554),
        radius: Radius.elliptical(
            size.width * 0.01203416, size.height * 0.002718106),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path14.arcToPoint(Offset(size.width * 0.7833851, size.height * 0.7207365),
        radius: Radius.elliptical(
            size.width * 0.01203416, size.height * 0.002718106),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path14.lineTo(size.width * 0.7104037, size.height * 0.7207365);
    path14.arcToPoint(Offset(size.width * 0.7003106, size.height * 0.7177554),
        radius: Radius.elliptical(
            size.width * 0.01203416, size.height * 0.002718106),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path14.arcToPoint(Offset(size.width * 0.7104037, size.height * 0.7148619),
        radius: Radius.elliptical(
            size.width * 0.01203416, size.height * 0.002718106),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path14.close();

    Paint paint14fill = Paint()..style = PaintingStyle.fill;
    paint14fill.color = Color(0xff1d1d1b).withOpacity(1.0);
    canvas.drawPath(path14, paint14fill);

    Path path15 = Path();
    path15.moveTo(size.width * 0.7577640, size.height * 0.7050416);
    path15.lineTo(size.width * 0.7104037, size.height * 0.7050416);
    path15.arcToPoint(Offset(size.width * 0.7049689, size.height * 0.7035511),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path15.arcToPoint(Offset(size.width * 0.7104037, size.height * 0.7019728),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path15.lineTo(size.width * 0.7577640, size.height * 0.7019728);
    path15.arcToPoint(Offset(size.width * 0.7631988, size.height * 0.7035511),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path15.arcToPoint(Offset(size.width * 0.7577640, size.height * 0.7050416),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path15.close();

    Paint paint15fill = Paint()..style = PaintingStyle.fill;
    paint15fill.color = Color(0xff1d1d1b).withOpacity(1.0);
    canvas.drawPath(path15, paint15fill);

    Path path16 = Path();
    path16.moveTo(size.width * 0.7577640, size.height * 0.6907497);
    path16.lineTo(size.width * 0.7104037, size.height * 0.6907497);
    path16.arcToPoint(Offset(size.width * 0.7049689, size.height * 0.6892591),
        radius: Radius.elliptical(
            size.width * 0.005822981, size.height * 0.001315213),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path16.arcToPoint(Offset(size.width * 0.7104037, size.height * 0.6877685),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path16.lineTo(size.width * 0.7577640, size.height * 0.6877685);
    path16.arcToPoint(Offset(size.width * 0.7631988, size.height * 0.6892591),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path16.arcToPoint(Offset(size.width * 0.7577640, size.height * 0.6907497),
        radius: Radius.elliptical(
            size.width * 0.005822981, size.height * 0.001315213),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path16.close();

    Paint paint16fill = Paint()..style = PaintingStyle.fill;
    paint16fill.color = Color(0xff1d1d1b).withOpacity(1.0);
    canvas.drawPath(path16, paint16fill);

    Path path17 = Path();
    path17.moveTo(size.width * 0.7577640, size.height * 0.6765454);
    path17.lineTo(size.width * 0.7104037, size.height * 0.6765454);
    path17.arcToPoint(Offset(size.width * 0.7049689, size.height * 0.6749671),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path17.arcToPoint(Offset(size.width * 0.7104037, size.height * 0.6734765),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path17.lineTo(size.width * 0.7577640, size.height * 0.6734765);
    path17.arcToPoint(Offset(size.width * 0.7631988, size.height * 0.6749671),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path17.arcToPoint(Offset(size.width * 0.7577640, size.height * 0.6765454),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path17.close();

    Paint paint17fill = Paint()..style = PaintingStyle.fill;
    paint17fill.color = Color(0xff1d1d1b).withOpacity(1.0);
    canvas.drawPath(path17, paint17fill);

    Path path18 = Path();
    path18.moveTo(size.width * 0.7577640, size.height * 0.6622534);
    path18.lineTo(size.width * 0.7104037, size.height * 0.6622534);
    path18.arcToPoint(Offset(size.width * 0.7049689, size.height * 0.6607628),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path18.arcToPoint(Offset(size.width * 0.7104037, size.height * 0.6591846),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path18.lineTo(size.width * 0.7577640, size.height * 0.6591846);
    path18.arcToPoint(Offset(size.width * 0.7631988, size.height * 0.6607628),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path18.arcToPoint(Offset(size.width * 0.7577640, size.height * 0.6622534),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path18.close();

    Paint paint18fill = Paint()..style = PaintingStyle.fill;
    paint18fill.color = Color(0xff1d1d1b).withOpacity(1.0);
    canvas.drawPath(path18, paint18fill);

    Path path19 = Path();
    path19.moveTo(size.width * 0.7104037, size.height * 0.6434897);
    path19.lineTo(size.width * 0.7833851, size.height * 0.6434897);
    path19.cubicTo(
        size.width * 0.7888199,
        size.height * 0.6434897,
        size.width * 0.7934783,
        size.height * 0.6448926,
        size.width * 0.7934783,
        size.height * 0.6464708);
    path19.arcToPoint(Offset(size.width * 0.7833851, size.height * 0.6494520),
        radius: Radius.elliptical(
            size.width * 0.01203416, size.height * 0.002718106),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path19.lineTo(size.width * 0.7104037, size.height * 0.6494520);
    path19.arcToPoint(Offset(size.width * 0.7003106, size.height * 0.6464708),
        radius: Radius.elliptical(
            size.width * 0.01203416, size.height * 0.002718106),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path19.cubicTo(
        size.width * 0.6987578,
        size.height * 0.6448926,
        size.width * 0.7049689,
        size.height * 0.6434897,
        size.width * 0.7104037,
        size.height * 0.6434897);
    path19.close();

    Paint paint19fill = Paint()..style = PaintingStyle.fill;
    paint19fill.color = Color(0xff1d1d1b).withOpacity(1.0);
    canvas.drawPath(path19, paint19fill);

    Path path20 = Path();
    path20.moveTo(size.width * 0.7577640, size.height * 0.6337571);
    path20.lineTo(size.width * 0.7104037, size.height * 0.6337571);
    path20.arcToPoint(Offset(size.width * 0.7049689, size.height * 0.6321789),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path20.arcToPoint(Offset(size.width * 0.7104037, size.height * 0.6306883),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path20.lineTo(size.width * 0.7577640, size.height * 0.6306883);
    path20.arcToPoint(Offset(size.width * 0.7631988, size.height * 0.6321789),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path20.arcToPoint(Offset(size.width * 0.7577640, size.height * 0.6337571),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path20.close();

    Paint paint20fill = Paint()..style = PaintingStyle.fill;
    paint20fill.color = Color(0xff1d1d1b).withOpacity(1.0);
    canvas.drawPath(path20, paint20fill);

    Path path21 = Path();
    path21.moveTo(size.width * 0.7577640, size.height * 0.6194651);
    path21.lineTo(size.width * 0.7104037, size.height * 0.6194651);
    path21.arcToPoint(Offset(size.width * 0.7049689, size.height * 0.6179746),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path21.arcToPoint(Offset(size.width * 0.7104037, size.height * 0.6163963),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path21.lineTo(size.width * 0.7577640, size.height * 0.6163963);
    path21.arcToPoint(Offset(size.width * 0.7631988, size.height * 0.6179746),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path21.arcToPoint(Offset(size.width * 0.7577640, size.height * 0.6194651),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path21.close();

    Paint paint21fill = Paint()..style = PaintingStyle.fill;
    paint21fill.color = Color(0xff1d1d1b).withOpacity(1.0);
    canvas.drawPath(path21, paint21fill);

    Path path22 = Path();
    path22.moveTo(size.width * 0.7577640, size.height * 0.6049978);
    path22.lineTo(size.width * 0.7104037, size.height * 0.6049978);
    path22.arcToPoint(Offset(size.width * 0.7104037, size.height * 0.6020167),
        radius: Radius.elliptical(
            size.width * 0.006599379, size.height * 0.001490574),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path22.lineTo(size.width * 0.7577640, size.height * 0.6020167);
    path22.arcToPoint(Offset(size.width * 0.7577640, size.height * 0.6049978),
        radius: Radius.elliptical(
            size.width * 0.006599379, size.height * 0.001490574),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path22.close();

    Paint paint22fill = Paint()..style = PaintingStyle.fill;
    paint22fill.color = Color(0xff1d1d1b).withOpacity(1.0);
    canvas.drawPath(path22, paint22fill);

    Path path23 = Path();
    path23.moveTo(size.width * 0.7577640, size.height * 0.5909689);
    path23.lineTo(size.width * 0.7104037, size.height * 0.5909689);
    path23.arcToPoint(Offset(size.width * 0.7049689, size.height * 0.5893906),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path23.arcToPoint(Offset(size.width * 0.7104037, size.height * 0.5879000),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path23.lineTo(size.width * 0.7577640, size.height * 0.5879000);
    path23.arcToPoint(Offset(size.width * 0.7631988, size.height * 0.5893906),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path23.arcToPoint(Offset(size.width * 0.7577640, size.height * 0.5909689),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path23.close();

    Paint paint23fill = Paint()..style = PaintingStyle.fill;
    paint23fill.color = Color(0xff1d1d1b).withOpacity(1.0);
    canvas.drawPath(path23, paint23fill);

    Path path24 = Path();
    path24.moveTo(size.width * 0.7104037, size.height * 0.5722052);
    path24.lineTo(size.width * 0.7833851, size.height * 0.5722052);
    path24.arcToPoint(Offset(size.width * 0.7934783, size.height * 0.5751863),
        radius: Radius.elliptical(
            size.width * 0.01203416, size.height * 0.002718106),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path24.cubicTo(
        size.width * 0.7934783,
        size.height * 0.5767646,
        size.width * 0.7888199,
        size.height * 0.5781675,
        size.width * 0.7833851,
        size.height * 0.5781675);
    path24.lineTo(size.width * 0.7104037, size.height * 0.5781675);
    path24.cubicTo(
        size.width * 0.7049689,
        size.height * 0.5781675,
        size.width * 0.7003106,
        size.height * 0.5767646,
        size.width * 0.7003106,
        size.height * 0.5751863);
    path24.arcToPoint(Offset(size.width * 0.7104037, size.height * 0.5722052),
        radius: Radius.elliptical(
            size.width * 0.01203416, size.height * 0.002718106),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path24.close();

    Paint paint24fill = Paint()..style = PaintingStyle.fill;
    paint24fill.color = Color(0xff1d1d1b).withOpacity(1.0);
    canvas.drawPath(path24, paint24fill);

    Path path25 = Path();
    path25.moveTo(size.width * 0.7577640, size.height * 0.5623849);
    path25.lineTo(size.width * 0.7104037, size.height * 0.5623849);
    path25.arcToPoint(Offset(size.width * 0.7104037, size.height * 0.5594038),
        radius: Radius.elliptical(
            size.width * 0.006599379, size.height * 0.001490574),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path25.lineTo(size.width * 0.7577640, size.height * 0.5594038);
    path25.arcToPoint(Offset(size.width * 0.7577640, size.height * 0.5623849),
        radius: Radius.elliptical(
            size.width * 0.006599379, size.height * 0.001490574),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path25.close();

    Paint paint25fill = Paint()..style = PaintingStyle.fill;
    paint25fill.color = Color(0xff1d1d1b).withOpacity(1.0);
    canvas.drawPath(path25, paint25fill);

    Path path26 = Path();
    path26.moveTo(size.width * 0.7577640, size.height * 0.5481806);
    path26.lineTo(size.width * 0.7104037, size.height * 0.5481806);
    path26.arcToPoint(Offset(size.width * 0.7049689, size.height * 0.5466024),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path26.arcToPoint(Offset(size.width * 0.7104037, size.height * 0.5451118),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path26.lineTo(size.width * 0.7577640, size.height * 0.5451118);
    path26.arcToPoint(Offset(size.width * 0.7631988, size.height * 0.5466024),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path26.arcToPoint(Offset(size.width * 0.7577640, size.height * 0.5481806),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path26.close();

    Paint paint26fill = Paint()..style = PaintingStyle.fill;
    paint26fill.color = Color(0xff1d1d1b).withOpacity(1.0);
    canvas.drawPath(path26, paint26fill);

    Path path27 = Path();
    path27.moveTo(size.width * 0.7577640, size.height * 0.5338886);
    path27.lineTo(size.width * 0.7104037, size.height * 0.5338886);
    path27.arcToPoint(Offset(size.width * 0.7049689, size.height * 0.5323981),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path27.arcToPoint(Offset(size.width * 0.7104037, size.height * 0.5308198),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path27.lineTo(size.width * 0.7577640, size.height * 0.5308198);
    path27.arcToPoint(Offset(size.width * 0.7631988, size.height * 0.5323981),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path27.arcToPoint(Offset(size.width * 0.7577640, size.height * 0.5338886),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path27.close();

    Paint paint27fill = Paint()..style = PaintingStyle.fill;
    paint27fill.color = Color(0xff1d1d1b).withOpacity(1.0);
    canvas.drawPath(path27, paint27fill);

    Path path28 = Path();
    path28.moveTo(size.width * 0.7577640, size.height * 0.5195967);
    path28.lineTo(size.width * 0.7104037, size.height * 0.5195967);
    path28.arcToPoint(Offset(size.width * 0.7049689, size.height * 0.5181061),
        radius: Radius.elliptical(
            size.width * 0.005822981, size.height * 0.001315213),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path28.arcToPoint(Offset(size.width * 0.7104037, size.height * 0.5166155),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path28.lineTo(size.width * 0.7577640, size.height * 0.5166155);
    path28.arcToPoint(Offset(size.width * 0.7631988, size.height * 0.5181061),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path28.arcToPoint(Offset(size.width * 0.7577640, size.height * 0.5195967),
        radius: Radius.elliptical(
            size.width * 0.005822981, size.height * 0.001315213),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path28.close();

    Paint paint28fill = Paint()..style = PaintingStyle.fill;
    paint28fill.color = Color(0xff1d1d1b).withOpacity(1.0);
    canvas.drawPath(path28, paint28fill);

    Path path29 = Path();
    path29.moveTo(size.width * 0.7104037, size.height * 0.5009206);
    path29.lineTo(size.width * 0.7833851, size.height * 0.5009206);
    path29.arcToPoint(Offset(size.width * 0.7934783, size.height * 0.5038141),
        radius: Radius.elliptical(
            size.width * 0.01203416, size.height * 0.002718106),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path29.arcToPoint(Offset(size.width * 0.7833851, size.height * 0.5067953),
        radius: Radius.elliptical(
            size.width * 0.01203416, size.height * 0.002718106),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path29.lineTo(size.width * 0.7104037, size.height * 0.5067953);
    path29.arcToPoint(Offset(size.width * 0.7003106, size.height * 0.5038141),
        radius: Radius.elliptical(
            size.width * 0.01203416, size.height * 0.002718106),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path29.arcToPoint(Offset(size.width * 0.7104037, size.height * 0.5009206),
        radius: Radius.elliptical(
            size.width * 0.01203416, size.height * 0.002718106),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path29.close();

    Paint paint29fill = Paint()..style = PaintingStyle.fill;
    paint29fill.color = Color(0xff1d1d1b).withOpacity(1.0);
    canvas.drawPath(path29, paint29fill);

    Path path30 = Path();
    path30.moveTo(size.width * 0.7577640, size.height * 0.4910127);
    path30.lineTo(size.width * 0.7104037, size.height * 0.4910127);
    path30.arcToPoint(Offset(size.width * 0.7049689, size.height * 0.4895221),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path30.arcToPoint(Offset(size.width * 0.7104037, size.height * 0.4879439),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path30.lineTo(size.width * 0.7577640, size.height * 0.4879439);
    path30.arcToPoint(Offset(size.width * 0.7631988, size.height * 0.4895221),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path30.arcToPoint(Offset(size.width * 0.7577640, size.height * 0.4910127),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path30.close();

    Paint paint30fill = Paint()..style = PaintingStyle.fill;
    paint30fill.color = Color(0xff1d1d1b).withOpacity(1.0);
    canvas.drawPath(path30, paint30fill);

    Path path31 = Path();
    path31.moveTo(size.width * 0.7577640, size.height * 0.4768084);
    path31.lineTo(size.width * 0.7104037, size.height * 0.4768084);
    path31.arcToPoint(Offset(size.width * 0.7049689, size.height * 0.4753178),
        radius: Radius.elliptical(
            size.width * 0.005822981, size.height * 0.001315213),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path31.arcToPoint(Offset(size.width * 0.7104037, size.height * 0.4734765),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path31.lineTo(size.width * 0.7577640, size.height * 0.4734765);
    path31.arcToPoint(Offset(size.width * 0.7631988, size.height * 0.4749671),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path31.arcToPoint(Offset(size.width * 0.7577640, size.height * 0.4768084),
        radius: Radius.elliptical(
            size.width * 0.005822981, size.height * 0.001315213),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path31.close();

    Paint paint31fill = Paint()..style = PaintingStyle.fill;
    paint31fill.color = Color(0xff1d1d1b).withOpacity(1.0);
    canvas.drawPath(path31, paint31fill);

    Path path32 = Path();
    path32.moveTo(size.width * 0.7577640, size.height * 0.4626041);
    path32.lineTo(size.width * 0.7104037, size.height * 0.4626041);
    path32.arcToPoint(Offset(size.width * 0.7049689, size.height * 0.4610259),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path32.arcToPoint(Offset(size.width * 0.7104037, size.height * 0.4595353),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path32.lineTo(size.width * 0.7577640, size.height * 0.4595353);
    path32.arcToPoint(Offset(size.width * 0.7631988, size.height * 0.4610259),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path32.arcToPoint(Offset(size.width * 0.7577640, size.height * 0.4626041),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path32.close();

    Paint paint32fill = Paint()..style = PaintingStyle.fill;
    paint32fill.color = Color(0xff1d1d1b).withOpacity(1.0);
    canvas.drawPath(path32, paint32fill);

    Path path33 = Path();
    path33.moveTo(size.width * 0.7577640, size.height * 0.4483121);
    path33.lineTo(size.width * 0.7104037, size.height * 0.4483121);
    path33.arcToPoint(Offset(size.width * 0.7049689, size.height * 0.4468216),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path33.arcToPoint(Offset(size.width * 0.7104037, size.height * 0.4452433),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path33.lineTo(size.width * 0.7577640, size.height * 0.4452433);
    path33.arcToPoint(Offset(size.width * 0.7631988, size.height * 0.4468216),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path33.arcToPoint(Offset(size.width * 0.7577640, size.height * 0.4483121),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path33.close();

    Paint paint33fill = Paint()..style = PaintingStyle.fill;
    paint33fill.color = Color(0xff1d1d1b).withOpacity(1.0);
    canvas.drawPath(path33, paint33fill);

    Path path34 = Path();
    path34.moveTo(size.width * 0.7104037, size.height * 0.4296361);
    path34.lineTo(size.width * 0.7833851, size.height * 0.4296361);
    path34.arcToPoint(Offset(size.width * 0.7833851, size.height * 0.4355984),
        radius: Radius.elliptical(
            size.width * 0.01358696, size.height * 0.003068829),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path34.lineTo(size.width * 0.7104037, size.height * 0.4355984);
    path34.arcToPoint(Offset(size.width * 0.7104037, size.height * 0.4296361),
        radius: Radius.elliptical(
            size.width * 0.01358696, size.height * 0.003068829),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path34.close();

    Paint paint34fill = Paint()..style = PaintingStyle.fill;
    paint34fill.color = Color(0xff1d1d1b).withOpacity(1.0);
    canvas.drawPath(path34, paint34fill);

    Path path35 = Path();
    path35.moveTo(size.width * 0.7577640, size.height * 0.4198159);
    path35.lineTo(size.width * 0.7104037, size.height * 0.4198159);
    path35.arcToPoint(Offset(size.width * 0.7049689, size.height * 0.4182376),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path35.arcToPoint(Offset(size.width * 0.7104037, size.height * 0.4167470),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path35.lineTo(size.width * 0.7577640, size.height * 0.4167470);
    path35.arcToPoint(Offset(size.width * 0.7631988, size.height * 0.4182376),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path35.arcToPoint(Offset(size.width * 0.7577640, size.height * 0.4198159),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path35.close();

    Paint paint35fill = Paint()..style = PaintingStyle.fill;
    paint35fill.color = Color(0xff1d1d1b).withOpacity(1.0);
    canvas.drawPath(path35, paint35fill);

    Path path36 = Path();
    path36.moveTo(size.width * 0.7577640, size.height * 0.4055239);
    path36.lineTo(size.width * 0.7104037, size.height * 0.4055239);
    path36.arcToPoint(Offset(size.width * 0.7049689, size.height * 0.4040333),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path36.arcToPoint(Offset(size.width * 0.7104037, size.height * 0.4024551),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path36.lineTo(size.width * 0.7577640, size.height * 0.4024551);
    path36.arcToPoint(Offset(size.width * 0.7631988, size.height * 0.4040333),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path36.arcToPoint(Offset(size.width * 0.7577640, size.height * 0.4055239),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path36.close();

    Paint paint36fill = Paint()..style = PaintingStyle.fill;
    paint36fill.color = Color(0xff1d1d1b).withOpacity(1.0);
    canvas.drawPath(path36, paint36fill);

    Path path37 = Path();
    path37.moveTo(size.width * 0.7577640, size.height * 0.3912319);
    path37.lineTo(size.width * 0.7104037, size.height * 0.3912319);
    path37.arcToPoint(Offset(size.width * 0.7104037, size.height * 0.3882508),
        radius: Radius.elliptical(
            size.width * 0.006599379, size.height * 0.001490574),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path37.lineTo(size.width * 0.7577640, size.height * 0.3882508);
    path37.arcToPoint(Offset(size.width * 0.7577640, size.height * 0.3912319),
        radius: Radius.elliptical(
            size.width * 0.006599379, size.height * 0.001490574),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path37.close();

    Paint paint37fill = Paint()..style = PaintingStyle.fill;
    paint37fill.color = Color(0xff1d1d1b).withOpacity(1.0);
    canvas.drawPath(path37, paint37fill);

    Path path38 = Path();
    path38.moveTo(size.width * 0.7577640, size.height * 0.3770276);
    path38.lineTo(size.width * 0.7104037, size.height * 0.3770276);
    path38.arcToPoint(Offset(size.width * 0.7049689, size.height * 0.3754494),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path38.arcToPoint(Offset(size.width * 0.7104037, size.height * 0.3739588),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path38.lineTo(size.width * 0.7577640, size.height * 0.3739588);
    path38.arcToPoint(Offset(size.width * 0.7631988, size.height * 0.3754494),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path38.arcToPoint(Offset(size.width * 0.7577640, size.height * 0.3770276),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path38.close();

    Paint paint38fill = Paint()..style = PaintingStyle.fill;
    paint38fill.color = Color(0xff1d1d1b).withOpacity(1.0);
    canvas.drawPath(path38, paint38fill);

    Path path39 = Path();
    path39.moveTo(size.width * 0.7104037, size.height * 0.3582639);
    path39.lineTo(size.width * 0.7833851, size.height * 0.3582639);
    path39.arcToPoint(Offset(size.width * 0.7934783, size.height * 0.3612451),
        radius: Radius.elliptical(
            size.width * 0.01203416, size.height * 0.002718106),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path39.cubicTo(
        size.width * 0.7934783,
        size.height * 0.3628233,
        size.width * 0.7888199,
        size.height * 0.3642262,
        size.width * 0.7833851,
        size.height * 0.3642262);
    path39.lineTo(size.width * 0.7104037, size.height * 0.3642262);
    path39.cubicTo(
        size.width * 0.7049689,
        size.height * 0.3642262,
        size.width * 0.7003106,
        size.height * 0.3628233,
        size.width * 0.7003106,
        size.height * 0.3612451);
    path39.arcToPoint(Offset(size.width * 0.7104037, size.height * 0.3582639),
        radius: Radius.elliptical(
            size.width * 0.01203416, size.height * 0.002718106),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path39.close();

    Paint paint39fill = Paint()..style = PaintingStyle.fill;
    paint39fill.color = Color(0xff1d1d1b).withOpacity(1.0);
    canvas.drawPath(path39, paint39fill);

    Path path40 = Path();
    path40.moveTo(size.width * 0.7104037, size.height * 0.3454625);
    path40.lineTo(size.width * 0.7577640, size.height * 0.3454625);
    path40.arcToPoint(Offset(size.width * 0.7631988, size.height * 0.3469531),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path40.arcToPoint(Offset(size.width * 0.7577640, size.height * 0.3484437),
        radius: Radius.elliptical(
            size.width * 0.005822981, size.height * 0.001315213),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path40.lineTo(size.width * 0.7104037, size.height * 0.3484437);
    path40.arcToPoint(Offset(size.width * 0.7049689, size.height * 0.3469531),
        radius: Radius.elliptical(
            size.width * 0.005822981, size.height * 0.001315213),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path40.arcToPoint(Offset(size.width * 0.7104037, size.height * 0.3454625),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path40.close();

    Paint paint40fill = Paint()..style = PaintingStyle.fill;
    paint40fill.color = Color(0xff1d1d1b).withOpacity(1.0);
    canvas.drawPath(path40, paint40fill);

    Path path41 = Path();
    path41.moveTo(size.width * 0.7104037, size.height * 0.3311705);
    path41.lineTo(size.width * 0.7577640, size.height * 0.3311705);
    path41.arcToPoint(Offset(size.width * 0.7631988, size.height * 0.3326611),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path41.arcToPoint(Offset(size.width * 0.7577640, size.height * 0.3342394),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path41.lineTo(size.width * 0.7104037, size.height * 0.3342394);
    path41.arcToPoint(Offset(size.width * 0.7049689, size.height * 0.3326611),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path41.arcToPoint(Offset(size.width * 0.7104037, size.height * 0.3311705),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path41.close();

    Paint paint41fill = Paint()..style = PaintingStyle.fill;
    paint41fill.color = Color(0xff1d1d1b).withOpacity(1.0);
    canvas.drawPath(path41, paint41fill);

    Path path42 = Path();
    path42.moveTo(size.width * 0.7104037, size.height * 0.3168786);
    path42.lineTo(size.width * 0.7577640, size.height * 0.3168786);
    path42.arcToPoint(Offset(size.width * 0.7631988, size.height * 0.3184568),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path42.arcToPoint(Offset(size.width * 0.7577640, size.height * 0.3199474),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path42.lineTo(size.width * 0.7104037, size.height * 0.3199474);
    path42.arcToPoint(Offset(size.width * 0.7049689, size.height * 0.3184568),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path42.arcToPoint(Offset(size.width * 0.7104037, size.height * 0.3168786),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path42.close();

    Paint paint42fill = Paint()..style = PaintingStyle.fill;
    paint42fill.color = Color(0xff1d1d1b).withOpacity(1.0);
    canvas.drawPath(path42, paint42fill);

    Path path43 = Path();
    path43.moveTo(size.width * 0.7104037, size.height * 0.3026743);
    path43.lineTo(size.width * 0.7577640, size.height * 0.3026743);
    path43.arcToPoint(Offset(size.width * 0.7631988, size.height * 0.3041648),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path43.arcToPoint(Offset(size.width * 0.7577640, size.height * 0.3056554),
        radius: Radius.elliptical(
            size.width * 0.005822981, size.height * 0.001315213),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path43.lineTo(size.width * 0.7104037, size.height * 0.3056554);
    path43.arcToPoint(Offset(size.width * 0.7049689, size.height * 0.3041648),
        radius: Radius.elliptical(
            size.width * 0.005822981, size.height * 0.001315213),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path43.arcToPoint(Offset(size.width * 0.7104037, size.height * 0.3026743),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path43.close();

    Paint paint43fill = Paint()..style = PaintingStyle.fill;
    paint43fill.color = Color(0xff1d1d1b).withOpacity(1.0);
    canvas.drawPath(path43, paint43fill);

    Path path44 = Path();
    path44.moveTo(size.width * 0.7577640, size.height * 0.2771591);
    path44.lineTo(size.width * 0.7104037, size.height * 0.2771591);
    path44.arcToPoint(Offset(size.width * 0.7049689, size.height * 0.2756686),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path44.arcToPoint(Offset(size.width * 0.7104037, size.height * 0.2740903),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path44.lineTo(size.width * 0.7577640, size.height * 0.2740903);
    path44.arcToPoint(Offset(size.width * 0.7631988, size.height * 0.2756686),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path44.arcToPoint(Offset(size.width * 0.7577640, size.height * 0.2771591),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path44.close();

    Paint paint44fill = Paint()..style = PaintingStyle.fill;
    paint44fill.color = Color(0xff1d1d1b).withOpacity(1.0);
    canvas.drawPath(path44, paint44fill);

    Path path45 = Path();
    path45.moveTo(size.width * 0.7577640, size.height * 0.2630425);
    path45.lineTo(size.width * 0.7104037, size.height * 0.2630425);
    path45.arcToPoint(Offset(size.width * 0.7049689, size.height * 0.2615520),
        radius: Radius.elliptical(
            size.width * 0.005822981, size.height * 0.001315213),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path45.arcToPoint(Offset(size.width * 0.7104037, size.height * 0.2600614),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path45.lineTo(size.width * 0.7577640, size.height * 0.2600614);
    path45.arcToPoint(Offset(size.width * 0.7631988, size.height * 0.2615520),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path45.arcToPoint(Offset(size.width * 0.7577640, size.height * 0.2630425),
        radius: Radius.elliptical(
            size.width * 0.005822981, size.height * 0.001315213),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path45.close();

    Paint paint45fill = Paint()..style = PaintingStyle.fill;
    paint45fill.color = Color(0xff1d1d1b).withOpacity(1.0);
    canvas.drawPath(path45, paint45fill);

    Path path46 = Path();
    path46.moveTo(size.width * 0.7577640, size.height * 0.2486629);
    path46.lineTo(size.width * 0.7104037, size.height * 0.2486629);
    path46.arcToPoint(Offset(size.width * 0.7049689, size.height * 0.2470846),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path46.arcToPoint(Offset(size.width * 0.7104037, size.height * 0.2455064),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path46.lineTo(size.width * 0.7577640, size.height * 0.2455064);
    path46.arcToPoint(Offset(size.width * 0.7631988, size.height * 0.2469969),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path46.arcToPoint(Offset(size.width * 0.7577640, size.height * 0.2486629),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path46.close();

    Paint paint46fill = Paint()..style = PaintingStyle.fill;
    paint46fill.color = Color(0xff1d1d1b).withOpacity(1.0);
    canvas.drawPath(path46, paint46fill);

    Path path47 = Path();
    path47.moveTo(size.width * 0.7577640, size.height * 0.2343709);
    path47.lineTo(size.width * 0.7104037, size.height * 0.2343709);
    path47.arcToPoint(Offset(size.width * 0.7049689, size.height * 0.2328803),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path47.arcToPoint(Offset(size.width * 0.7104037, size.height * 0.2313021),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path47.lineTo(size.width * 0.7577640, size.height * 0.2313021);
    path47.arcToPoint(Offset(size.width * 0.7631988, size.height * 0.2328803),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path47.arcToPoint(Offset(size.width * 0.7577640, size.height * 0.2343709),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path47.close();

    Paint paint47fill = Paint()..style = PaintingStyle.fill;
    paint47fill.color = Color(0xff1d1d1b).withOpacity(1.0);
    canvas.drawPath(path47, paint47fill);

    Path path48 = Path();
    path48.moveTo(size.width * 0.7104037, size.height * 0.2156072);
    path48.lineTo(size.width * 0.7833851, size.height * 0.2156072);
    path48.arcToPoint(Offset(size.width * 0.7833851, size.height * 0.2215695),
        radius: Radius.elliptical(
            size.width * 0.01358696, size.height * 0.003068829),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path48.lineTo(size.width * 0.7104037, size.height * 0.2215695);
    path48.arcToPoint(Offset(size.width * 0.7104037, size.height * 0.2156072),
        radius: Radius.elliptical(
            size.width * 0.01358696, size.height * 0.003068829),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path48.close();

    Paint paint48fill = Paint()..style = PaintingStyle.fill;
    paint48fill.color = Color(0xff1d1d1b).withOpacity(1.0);
    canvas.drawPath(path48, paint48fill);

    Path path49 = Path();
    path49.moveTo(size.width * 0.7104037, size.height * 0.2869794);
    path49.lineTo(size.width * 0.7833851, size.height * 0.2869794);
    path49.arcToPoint(Offset(size.width * 0.7934783, size.height * 0.2898729),
        radius: Radius.elliptical(
            size.width * 0.01203416, size.height * 0.002718106),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path49.arcToPoint(Offset(size.width * 0.7833851, size.height * 0.2928540),
        radius: Radius.elliptical(
            size.width * 0.01203416, size.height * 0.002718106),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path49.lineTo(size.width * 0.7104037, size.height * 0.2928540);
    path49.arcToPoint(Offset(size.width * 0.7003106, size.height * 0.2898729),
        radius: Radius.elliptical(
            size.width * 0.01203416, size.height * 0.002718106),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path49.arcToPoint(Offset(size.width * 0.7104037, size.height * 0.2869794),
        radius: Radius.elliptical(
            size.width * 0.01203416, size.height * 0.002718106),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path49.close();

    Paint paint49fill = Paint()..style = PaintingStyle.fill;
    paint49fill.color = Color(0xff1d1d1b).withOpacity(1.0);
    canvas.drawPath(path49, paint49fill);

    Path path50 = Path();
    path50.moveTo(size.width * 0.7577640, size.height * 0.2058746);
    path50.lineTo(size.width * 0.7104037, size.height * 0.2058746);
    path50.arcToPoint(Offset(size.width * 0.7049689, size.height * 0.2042964),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path50.arcToPoint(Offset(size.width * 0.7104037, size.height * 0.2028058),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path50.lineTo(size.width * 0.7577640, size.height * 0.2028058);
    path50.arcToPoint(Offset(size.width * 0.7631988, size.height * 0.2042964),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path50.arcToPoint(Offset(size.width * 0.7577640, size.height * 0.2058746),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path50.close();

    Paint paint50fill = Paint()..style = PaintingStyle.fill;
    paint50fill.color = Color(0xff1d1d1b).withOpacity(1.0);
    canvas.drawPath(path50, paint50fill);

    Path path51 = Path();
    path51.moveTo(size.width * 0.7577640, size.height * 0.1915826);
    path51.lineTo(size.width * 0.7104037, size.height * 0.1915826);
    path51.arcToPoint(Offset(size.width * 0.7049689, size.height * 0.1900921),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path51.arcToPoint(Offset(size.width * 0.7104037, size.height * 0.1885138),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path51.lineTo(size.width * 0.7577640, size.height * 0.1885138);
    path51.arcToPoint(Offset(size.width * 0.7631988, size.height * 0.1900921),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path51.arcToPoint(Offset(size.width * 0.7577640, size.height * 0.1915826),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path51.close();

    Paint paint51fill = Paint()..style = PaintingStyle.fill;
    paint51fill.color = Color(0xff1d1d1b).withOpacity(1.0);
    canvas.drawPath(path51, paint51fill);

    Path path52 = Path();
    path52.moveTo(size.width * 0.7577640, size.height * 0.1772907);
    path52.lineTo(size.width * 0.7104037, size.height * 0.1772907);
    path52.arcToPoint(Offset(size.width * 0.7104037, size.height * 0.1743095),
        radius: Radius.elliptical(
            size.width * 0.006599379, size.height * 0.001490574),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path52.lineTo(size.width * 0.7577640, size.height * 0.1743095);
    path52.arcToPoint(Offset(size.width * 0.7577640, size.height * 0.1772907),
        radius: Radius.elliptical(
            size.width * 0.006599379, size.height * 0.001490574),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path52.close();

    Paint paint52fill = Paint()..style = PaintingStyle.fill;
    paint52fill.color = Color(0xff1d1d1b).withOpacity(1.0);
    canvas.drawPath(path52, paint52fill);

    Path path53 = Path();
    path53.moveTo(size.width * 0.7577640, size.height * 0.1630864);
    path53.lineTo(size.width * 0.7104037, size.height * 0.1630864);
    path53.arcToPoint(Offset(size.width * 0.7049689, size.height * 0.1615081),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path53.arcToPoint(Offset(size.width * 0.7104037, size.height * 0.1600175),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path53.lineTo(size.width * 0.7577640, size.height * 0.1600175);
    path53.arcToPoint(Offset(size.width * 0.7631988, size.height * 0.1615081),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path53.arcToPoint(Offset(size.width * 0.7577640, size.height * 0.1630864),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path53.close();

    Paint paint53fill = Paint()..style = PaintingStyle.fill;
    paint53fill.color = Color(0xff1d1d1b).withOpacity(1.0);
    canvas.drawPath(path53, paint53fill);

    Path path54 = Path();
    path54.moveTo(size.width * 0.7577640, size.height * 0.1202981);
    path54.lineTo(size.width * 0.7104037, size.height * 0.1202981);
    path54.arcToPoint(Offset(size.width * 0.7049689, size.height * 0.1187199),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path54.arcToPoint(Offset(size.width * 0.7104037, size.height * 0.1172293),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path54.lineTo(size.width * 0.7577640, size.height * 0.1172293);
    path54.arcToPoint(Offset(size.width * 0.7631988, size.height * 0.1187199),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path54.arcToPoint(Offset(size.width * 0.7577640, size.height * 0.1202981),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path54.close();

    Paint paint54fill = Paint()..style = PaintingStyle.fill;
    paint54fill.color = Color(0xff1d1d1b).withOpacity(1.0);
    canvas.drawPath(path54, paint54fill);

    Path path55 = Path();
    path55.moveTo(size.width * 0.7577640, size.height * 0.09171416);
    path55.lineTo(size.width * 0.7104037, size.height * 0.09171416);
    path55.arcToPoint(Offset(size.width * 0.7104037, size.height * 0.08873301),
        radius: Radius.elliptical(
            size.width * 0.006599379, size.height * 0.001490574),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path55.lineTo(size.width * 0.7577640, size.height * 0.08873301);
    path55.arcToPoint(Offset(size.width * 0.7577640, size.height * 0.09171416),
        radius: Radius.elliptical(
            size.width * 0.006599379, size.height * 0.001490574),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path55.close();

    Paint paint55fill = Paint()..style = PaintingStyle.fill;
    paint55fill.color = Color(0xff1d1d1b).withOpacity(1.0);
    canvas.drawPath(path55, paint55fill);

    Path path56 = Path();
    path56.moveTo(size.width * 0.7104037, size.height * 0.1443227);
    path56.lineTo(size.width * 0.7833851, size.height * 0.1443227);
    path56.arcToPoint(Offset(size.width * 0.7934783, size.height * 0.1473038),
        radius: Radius.elliptical(
            size.width * 0.01203416, size.height * 0.002718106),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path56.cubicTo(
        size.width * 0.7934783,
        size.height * 0.1488821,
        size.width * 0.7888199,
        size.height * 0.1502850,
        size.width * 0.7833851,
        size.height * 0.1502850);
    path56.lineTo(size.width * 0.7104037, size.height * 0.1502850);
    path56.cubicTo(
        size.width * 0.7049689,
        size.height * 0.1502850,
        size.width * 0.7003106,
        size.height * 0.1488821,
        size.width * 0.7003106,
        size.height * 0.1473038);
    path56.arcToPoint(Offset(size.width * 0.7104037, size.height * 0.1443227),
        radius: Radius.elliptical(
            size.width * 0.01203416, size.height * 0.002718106),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path56.close();

    Paint paint56fill = Paint()..style = PaintingStyle.fill;
    paint56fill.color = Color(0xff1d1d1b).withOpacity(1.0);
    canvas.drawPath(path56, paint56fill);

    Path path57 = Path();
    path57.moveTo(size.width * 0.7104037, size.height * 0.07303814);
    path57.lineTo(size.width * 0.7833851, size.height * 0.07303814);
    path57.arcToPoint(Offset(size.width * 0.7934783, size.height * 0.07593161),
        radius: Radius.elliptical(
            size.width * 0.01203416, size.height * 0.002718106),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path57.arcToPoint(Offset(size.width * 0.7833851, size.height * 0.07891276),
        radius: Radius.elliptical(
            size.width * 0.01203416, size.height * 0.002718106),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path57.lineTo(size.width * 0.7104037, size.height * 0.07891276);
    path57.arcToPoint(Offset(size.width * 0.6987578, size.height * 0.07593161),
        radius: Radius.elliptical(
            size.width * 0.01203416, size.height * 0.002718106),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path57.arcToPoint(Offset(size.width * 0.7104037, size.height * 0.07303814),
        radius: Radius.elliptical(
            size.width * 0.01203416, size.height * 0.002718106),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path57.close();

    Paint paint57fill = Paint()..style = PaintingStyle.fill;
    paint57fill.color = Color(0xff1d1d1b).withOpacity(1.0);
    canvas.drawPath(path57, paint57fill);

    Path path58 = Path();
    path58.moveTo(size.width * 0.7577640, size.height * 0.1345024);
    path58.lineTo(size.width * 0.7104037, size.height * 0.1345024);
    path58.arcToPoint(Offset(size.width * 0.7104037, size.height * 0.1315213),
        radius: Radius.elliptical(
            size.width * 0.006599379, size.height * 0.001490574),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path58.lineTo(size.width * 0.7577640, size.height * 0.1315213);
    path58.arcToPoint(Offset(size.width * 0.7577640, size.height * 0.1345024),
        radius: Radius.elliptical(
            size.width * 0.006599379, size.height * 0.001490574),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path58.close();

    Paint paint58fill = Paint()..style = PaintingStyle.fill;
    paint58fill.color = Color(0xff1d1d1b).withOpacity(1.0);
    canvas.drawPath(path58, paint58fill);

    Path path59 = Path();
    path59.moveTo(size.width * 0.7577640, size.height * 0.1060061);
    path59.lineTo(size.width * 0.7104037, size.height * 0.1060061);
    path59.arcToPoint(Offset(size.width * 0.7049689, size.height * 0.1045156),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path59.arcToPoint(Offset(size.width * 0.7104037, size.height * 0.1029373),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path59.lineTo(size.width * 0.7577640, size.height * 0.1029373);
    path59.arcToPoint(Offset(size.width * 0.7631988, size.height * 0.1045156),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path59.arcToPoint(Offset(size.width * 0.7577640, size.height * 0.1060061),
        radius: Radius.elliptical(
            size.width * 0.006211180, size.height * 0.001402893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path59.close();

    Paint paint59fill = Paint()..style = PaintingStyle.fill;
    paint59fill.color = Color(0xff1d1d1b).withOpacity(1.0);
    canvas.drawPath(path59, paint59fill);

    Path path60 = Path();
    path60.moveTo(size.width * 0.9243012, size.height * 0.7735204);
    path60.arcToPoint(Offset(size.width * 0.9398292, size.height * 0.7745726),
        radius: Radius.elliptical(
            size.width * 0.02523292, size.height * 0.005699255),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path60.arcToPoint(Offset(size.width * 0.9499224, size.height * 0.7772907),
        radius: Radius.elliptical(
            size.width * 0.03338509, size.height * 0.007540552),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path60.arcToPoint(Offset(size.width * 0.9553571, size.height * 0.7811486),
        radius: Radius.elliptical(
            size.width * 0.05861801, size.height * 0.01323981),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path60.arcToPoint(Offset(size.width * 0.9553571, size.height * 0.7854450),
        radius:
            Radius.elliptical(size.width * 0.1048137, size.height * 0.02367383),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path60.arcToPoint(Offset(size.width * 0.9553571, size.height * 0.7898290),
        radius:
            Radius.elliptical(size.width * 0.1063665, size.height * 0.02402455),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path60.arcToPoint(Offset(size.width * 0.9499224, size.height * 0.7935993),
        radius: Radius.elliptical(
            size.width * 0.05628882, size.height * 0.01271372),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path60.arcToPoint(Offset(size.width * 0.9398292, size.height * 0.7963174),
        radius: Radius.elliptical(
            size.width * 0.03066770, size.height * 0.006926786),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path60.arcToPoint(Offset(size.width * 0.9243012, size.height * 0.7972819),
        radius: Radius.elliptical(
            size.width * 0.02523292, size.height * 0.005699255),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path60.arcToPoint(Offset(size.width * 0.9083851, size.height * 0.7963174),
        radius: Radius.elliptical(
            size.width * 0.02639752, size.height * 0.005962297),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path60.arcToPoint(Offset(size.width * 0.8982919, size.height * 0.7935993),
        radius: Radius.elliptical(
            size.width * 0.03881988, size.height * 0.008768084),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path60.arcToPoint(Offset(size.width * 0.8932453, size.height * 0.7898290),
        radius: Radius.elliptical(
            size.width * 0.05590062, size.height * 0.01262604),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path60.arcToPoint(Offset(size.width * 0.8932453, size.height * 0.7854450),
        radius:
            Radius.elliptical(size.width * 0.1063665, size.height * 0.02402455),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path60.arcToPoint(Offset(size.width * 0.8932453, size.height * 0.7811486),
        radius:
            Radius.elliptical(size.width * 0.1048137, size.height * 0.02367383),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path60.arcToPoint(Offset(size.width * 0.8982919, size.height * 0.7772907),
        radius: Radius.elliptical(
            size.width * 0.05822981, size.height * 0.01315213),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path60.arcToPoint(Offset(size.width * 0.9083851, size.height * 0.7745726),
        radius: Radius.elliptical(
            size.width * 0.04386646, size.height * 0.009907935),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path60.arcToPoint(Offset(size.width * 0.9243012, size.height * 0.7735204),
        radius: Radius.elliptical(
            size.width * 0.02678571, size.height * 0.006049978),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path60.close();
    path60.moveTo(size.width * 0.9243012, size.height * 0.7755370);
    path60.arcToPoint(Offset(size.width * 0.9130435, size.height * 0.7764139),
        radius: Radius.elliptical(
            size.width * 0.01591615, size.height * 0.003594915),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path60.arcToPoint(Offset(size.width * 0.9064441, size.height * 0.7787812),
        radius: Radius.elliptical(
            size.width * 0.02833851, size.height * 0.006400701),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path60.arcToPoint(Offset(size.width * 0.9025621, size.height * 0.7820254),
        radius: Radius.elliptical(
            size.width * 0.05201863, size.height * 0.01174923),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path60.cubicTo(
        size.width * 0.9025621,
        size.height * 0.7831653,
        size.width * 0.9025621,
        size.height * 0.7843928,
        size.width * 0.9025621,
        size.height * 0.7854450);
    path60.cubicTo(
        size.width * 0.9025621,
        size.height * 0.7864972,
        size.width * 0.9025621,
        size.height * 0.7877247,
        size.width * 0.9025621,
        size.height * 0.7889522);
    path60.arcToPoint(Offset(size.width * 0.9064441, size.height * 0.7921087),
        radius: Radius.elliptical(
            size.width * 0.05279503, size.height * 0.01192459),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path60.arcToPoint(Offset(size.width * 0.9130435, size.height * 0.7944761),
        radius: Radius.elliptical(
            size.width * 0.02833851, size.height * 0.006400701),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path60.arcToPoint(Offset(size.width * 0.9243012, size.height * 0.7953529),
        radius: Radius.elliptical(
            size.width * 0.01785714, size.height * 0.004033319),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path60.arcToPoint(Offset(size.width * 0.9351708, size.height * 0.7944761),
        radius: Radius.elliptical(
            size.width * 0.01746894, size.height * 0.003945638),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path60.arcToPoint(Offset(size.width * 0.9421584, size.height * 0.7921087),
        radius: Radius.elliptical(
            size.width * 0.02484472, size.height * 0.005611574),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path60.arcToPoint(Offset(size.width * 0.9456522, size.height * 0.7889522),
        radius: Radius.elliptical(
            size.width * 0.07375776, size.height * 0.01665936),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path60.arcToPoint(Offset(size.width * 0.9456522, size.height * 0.7854450),
        radius:
            Radius.elliptical(size.width * 0.1086957, size.height * 0.02455064),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path60.arcToPoint(Offset(size.width * 0.9456522, size.height * 0.7820254),
        radius:
            Radius.elliptical(size.width * 0.1032609, size.height * 0.02332310),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path60.arcToPoint(Offset(size.width * 0.9421584, size.height * 0.7787812),
        radius: Radius.elliptical(
            size.width * 0.07065217, size.height * 0.01595791),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path60.arcToPoint(Offset(size.width * 0.9351708, size.height * 0.7764139),
        radius: Radius.elliptical(
            size.width * 0.02484472, size.height * 0.005611574),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path60.arcToPoint(Offset(size.width * 0.9243012, size.height * 0.7755370),
        radius: Radius.elliptical(
            size.width * 0.01552795, size.height * 0.003507234),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path60.close();

    Paint paint60fill = Paint()..style = PaintingStyle.fill;
    paint60fill.color = Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path60, paint60fill);

    Path path61 = Path();
    path61.moveTo(size.width * 0.9010093, size.height * 0.7198597);
    path61.lineTo(size.width * 0.8928571, size.height * 0.7198597);
    path61.lineTo(size.width * 0.8928571, size.height * 0.7053924);
    path61.lineTo(size.width * 0.8796584, size.height * 0.7079351);
    path61.lineTo(size.width * 0.8750000, size.height * 0.7067076);
    path61.lineTo(size.width * 0.8936335, size.height * 0.7032880);
    path61.lineTo(size.width * 0.9002329, size.height * 0.7032880);
    path61.close();

    Paint paint61fill = Paint()..style = PaintingStyle.fill;
    paint61fill.color = Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path61, paint61fill);

    Path path62 = Path();
    path62.moveTo(size.width * 0.9487578, size.height * 0.7028496);
    path62.arcToPoint(Offset(size.width * 0.9604037, size.height * 0.7036388),
        radius: Radius.elliptical(
            size.width * 0.01902174, size.height * 0.004296361),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path62.arcToPoint(Offset(size.width * 0.9677795, size.height * 0.7056554),
        radius: Radius.elliptical(
            size.width * 0.02833851, size.height * 0.006400701),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path62.arcToPoint(Offset(size.width * 0.9716615, size.height * 0.7083735),
        radius: Radius.elliptical(
            size.width * 0.04852484, size.height * 0.01096011),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path62.arcToPoint(Offset(size.width * 0.9716615, size.height * 0.7116177),
        radius: Radius.elliptical(
            size.width * 0.08618012, size.height * 0.01946515),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path62.arcToPoint(Offset(size.width * 0.9716615, size.height * 0.7147742),
        radius: Radius.elliptical(
            size.width * 0.08501553, size.height * 0.01920210),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path62.arcToPoint(Offset(size.width * 0.9677795, size.height * 0.7174923),
        radius: Radius.elliptical(
            size.width * 0.04852484, size.height * 0.01096011),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path62.arcToPoint(Offset(size.width * 0.9604037, size.height * 0.7195090),
        radius: Radius.elliptical(
            size.width * 0.02833851, size.height * 0.006400701),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path62.arcToPoint(Offset(size.width * 0.9371118, size.height * 0.7195090),
        radius: Radius.elliptical(
            size.width * 0.02135093, size.height * 0.004822446),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path62.arcToPoint(Offset(size.width * 0.9297360, size.height * 0.7174923),
        radius: Radius.elliptical(
            size.width * 0.02833851, size.height * 0.006400701),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path62.arcToPoint(Offset(size.width * 0.9258540, size.height * 0.7147742),
        radius: Radius.elliptical(
            size.width * 0.04852484, size.height * 0.01096011),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path62.arcToPoint(Offset(size.width * 0.9258540, size.height * 0.7116177),
        radius: Radius.elliptical(
            size.width * 0.08501553, size.height * 0.01920210),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path62.arcToPoint(Offset(size.width * 0.9258540, size.height * 0.7083735),
        radius: Radius.elliptical(
            size.width * 0.08618012, size.height * 0.01946515),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path62.arcToPoint(Offset(size.width * 0.9297360, size.height * 0.7056554),
        radius: Radius.elliptical(
            size.width * 0.04852484, size.height * 0.01096011),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path62.arcToPoint(Offset(size.width * 0.9371118, size.height * 0.7036388),
        radius: Radius.elliptical(
            size.width * 0.02833851, size.height * 0.006400701),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path62.arcToPoint(Offset(size.width * 0.9487578, size.height * 0.7028496),
        radius: Radius.elliptical(
            size.width * 0.01902174, size.height * 0.004296361),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path62.close();
    path62.moveTo(size.width * 0.9487578, size.height * 0.7042525);
    path62.arcToPoint(Offset(size.width * 0.9406056, size.height * 0.7049540),
        radius: Radius.elliptical(
            size.width * 0.01242236, size.height * 0.002805787),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path62.arcToPoint(Offset(size.width * 0.9355590, size.height * 0.7067076),
        radius: Radius.elliptical(
            size.width * 0.02251553, size.height * 0.005085489),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path62.arcToPoint(Offset(size.width * 0.9328416, size.height * 0.7090750),
        radius: Radius.elliptical(
            size.width * 0.06832298, size.height * 0.01543183),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path62.arcToPoint(Offset(size.width * 0.9328416, size.height * 0.7116177),
        radius:
            Radius.elliptical(size.width * 0.1090839, size.height * 0.02463832),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path62.arcToPoint(Offset(size.width * 0.9328416, size.height * 0.7140728),
        radius:
            Radius.elliptical(size.width * 0.1017081, size.height * 0.02297238),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path62.arcToPoint(Offset(size.width * 0.9355590, size.height * 0.7164402),
        radius: Radius.elliptical(
            size.width * 0.06832298, size.height * 0.01543183),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path62.arcToPoint(Offset(size.width * 0.9406056, size.height * 0.7181061),
        radius: Radius.elliptical(
            size.width * 0.02057453, size.height * 0.004647085),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path62.arcToPoint(Offset(size.width * 0.9569099, size.height * 0.7181061),
        radius: Radius.elliptical(
            size.width * 0.01242236, size.height * 0.002805787),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path62.arcToPoint(Offset(size.width * 0.9619565, size.height * 0.7164402),
        radius: Radius.elliptical(
            size.width * 0.02057453, size.height * 0.004647085),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path62.arcToPoint(Offset(size.width * 0.9646739, size.height * 0.7140728),
        radius: Radius.elliptical(
            size.width * 0.06832298, size.height * 0.01543183),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path62.arcToPoint(Offset(size.width * 0.9646739, size.height * 0.7116177),
        radius:
            Radius.elliptical(size.width * 0.1024845, size.height * 0.02314774),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path62.arcToPoint(Offset(size.width * 0.9646739, size.height * 0.7090750),
        radius:
            Radius.elliptical(size.width * 0.1098602, size.height * 0.02481368),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path62.arcToPoint(Offset(size.width * 0.9619565, size.height * 0.7067076),
        radius: Radius.elliptical(
            size.width * 0.06832298, size.height * 0.01543183),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path62.arcToPoint(Offset(size.width * 0.9569099, size.height * 0.7049540),
        radius: Radius.elliptical(
            size.width * 0.02251553, size.height * 0.005085489),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path62.arcToPoint(Offset(size.width * 0.9487578, size.height * 0.7042525),
        radius: Radius.elliptical(
            size.width * 0.01242236, size.height * 0.002805787),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path62.close();

    Paint paint62fill = Paint()..style = PaintingStyle.fill;
    paint62fill.color = Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path62, paint62fill);

    Path path63 = Path();
    path63.moveTo(size.width * 0.9192547, size.height * 0.6488382);
    path63.lineTo(size.width * 0.8726708, size.height * 0.6488382);
    path63.lineTo(size.width * 0.8726708, size.height * 0.6470846);
    path63.lineTo(size.width * 0.9025621, size.height * 0.6402455);
    path63.arcToPoint(Offset(size.width * 0.9056677, size.height * 0.6394564),
        radius: Radius.elliptical(
            size.width * 0.01319876, size.height * 0.002981149),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path63.lineTo(size.width * 0.9087733, size.height * 0.6385796);
    path63.lineTo(size.width * 0.9107143, size.height * 0.6376151);
    path63.arcToPoint(Offset(size.width * 0.9107143, size.height * 0.6364752),
        radius: Radius.elliptical(
            size.width * 0.02678571, size.height * 0.006049978),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path63.arcToPoint(Offset(size.width * 0.9107143, size.height * 0.6351600),
        radius: Radius.elliptical(
            size.width * 0.01552795, size.height * 0.003507234),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path63.arcToPoint(Offset(size.width * 0.9076087, size.height * 0.6341955),
        radius: Radius.elliptical(
            size.width * 0.01708075, size.height * 0.003857957),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path63.arcToPoint(Offset(size.width * 0.9029503, size.height * 0.6335818),
        radius: Radius.elliptical(
            size.width * 0.01436335, size.height * 0.003244191),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path63.arcToPoint(Offset(size.width * 0.8971273, size.height * 0.6335818),
        radius: Radius.elliptical(
            size.width * 0.01552795, size.height * 0.003507234),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path63.arcToPoint(Offset(size.width * 0.8874224, size.height * 0.6344586),
        radius: Radius.elliptical(
            size.width * 0.01281056, size.height * 0.002893468),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path63.arcToPoint(Offset(size.width * 0.8819876, size.height * 0.6365629),
        radius: Radius.elliptical(
            size.width * 0.01630435, size.height * 0.003682595),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path63.lineTo(size.width * 0.8746118, size.height * 0.6365629);
    path63.arcToPoint(Offset(size.width * 0.8773292, size.height * 0.6349847),
        radius: Radius.elliptical(
            size.width * 0.02911491, size.height * 0.006576063),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path63.arcToPoint(Offset(size.width * 0.8823758, size.height * 0.6336694),
        radius: Radius.elliptical(
            size.width * 0.02484472, size.height * 0.005611574),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path63.arcToPoint(Offset(size.width * 0.8889752, size.height * 0.6327926),
        radius: Radius.elliptical(
            size.width * 0.03881988, size.height * 0.008768084),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path63.arcToPoint(Offset(size.width * 0.8971273, size.height * 0.6327926),
        radius: Radius.elliptical(
            size.width * 0.02950311, size.height * 0.006663744),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path63.arcToPoint(Offset(size.width * 0.9056677, size.height * 0.6327926),
        radius: Radius.elliptical(
            size.width * 0.03027950, size.height * 0.006839106),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path63.arcToPoint(Offset(size.width * 0.9126553, size.height * 0.6336694),
        radius: Radius.elliptical(
            size.width * 0.02018634, size.height * 0.004559404),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path63.arcToPoint(Offset(size.width * 0.9173137, size.height * 0.6350723),
        radius: Radius.elliptical(
            size.width * 0.01863354, size.height * 0.004208680),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path63.arcToPoint(Offset(size.width * 0.9192547, size.height * 0.6370890),
        radius: Radius.elliptical(
            size.width * 0.02173913, size.height * 0.004910127),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path63.arcToPoint(Offset(size.width * 0.9192547, size.height * 0.6385796),
        radius: Radius.elliptical(
            size.width * 0.01979814, size.height * 0.004471723),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path63.arcToPoint(Offset(size.width * 0.9169255, size.height * 0.6398071),
        radius: Radius.elliptical(
            size.width * 0.02290373, size.height * 0.005173170),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path63.arcToPoint(Offset(size.width * 0.9130435, size.height * 0.6409470),
        radius: Radius.elliptical(
            size.width * 0.02484472, size.height * 0.005611574),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path63.lineTo(size.width * 0.9083851, size.height * 0.6420868);
    path63.lineTo(size.width * 0.8819876, size.height * 0.6479614);
    path63.lineTo(size.width * 0.9208075, size.height * 0.6479614);
    path63.close();

    Paint paint63fill = Paint()..style = PaintingStyle.fill;
    paint63fill.color = Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path63, paint63fill);

    Path path64 = Path();
    path64.moveTo(size.width * 0.9522516, size.height * 0.6321789);
    path64.arcToPoint(Offset(size.width * 0.9635093, size.height * 0.6329680),
        radius: Radius.elliptical(
            size.width * 0.01863354, size.height * 0.004208680),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path64.arcToPoint(Offset(size.width * 0.9708851, size.height * 0.6348970),
        radius: Radius.elliptical(
            size.width * 0.02290373, size.height * 0.005173170),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path64.arcToPoint(Offset(size.width * 0.9747671, size.height * 0.6377028),
        radius: Radius.elliptical(
            size.width * 0.04231366, size.height * 0.009557212),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path64.arcToPoint(Offset(size.width * 0.9747671, size.height * 0.6408593),
        radius: Radius.elliptical(
            size.width * 0.08501553, size.height * 0.01920210),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path64.arcToPoint(Offset(size.width * 0.9747671, size.height * 0.6440158),
        radius: Radius.elliptical(
            size.width * 0.07763975, size.height * 0.01753617),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path64.arcToPoint(Offset(size.width * 0.9708851, size.height * 0.6468216),
        radius: Radius.elliptical(
            size.width * 0.03881988, size.height * 0.008768084),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path64.arcToPoint(Offset(size.width * 0.9635093, size.height * 0.6488382),
        radius: Radius.elliptical(
            size.width * 0.02756211, size.height * 0.006225340),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path64.arcToPoint(Offset(size.width * 0.9522516, size.height * 0.6495397),
        radius: Radius.elliptical(
            size.width * 0.02135093, size.height * 0.004822446),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path64.arcToPoint(Offset(size.width * 0.9406056, size.height * 0.6488382),
        radius: Radius.elliptical(
            size.width * 0.02173913, size.height * 0.004910127),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path64.arcToPoint(Offset(size.width * 0.9332298, size.height * 0.6468216),
        radius: Radius.elliptical(
            size.width * 0.02756211, size.height * 0.006225340),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path64.arcToPoint(Offset(size.width * 0.9293478, size.height * 0.6440158),
        radius: Radius.elliptical(
            size.width * 0.03881988, size.height * 0.008768084),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path64.arcToPoint(Offset(size.width * 0.9293478, size.height * 0.6408593),
        radius: Radius.elliptical(
            size.width * 0.07763975, size.height * 0.01753617),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path64.arcToPoint(Offset(size.width * 0.9293478, size.height * 0.6377028),
        radius: Radius.elliptical(
            size.width * 0.08501553, size.height * 0.01920210),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path64.arcToPoint(Offset(size.width * 0.9332298, size.height * 0.6348970),
        radius: Radius.elliptical(
            size.width * 0.04231366, size.height * 0.009557212),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path64.arcToPoint(Offset(size.width * 0.9406056, size.height * 0.6329680),
        radius: Radius.elliptical(
            size.width * 0.02290373, size.height * 0.005173170),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path64.arcToPoint(Offset(size.width * 0.9522516, size.height * 0.6321789),
        radius: Radius.elliptical(
            size.width * 0.01902174, size.height * 0.004296361),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path64.close();
    path64.moveTo(size.width * 0.9522516, size.height * 0.6335818);
    path64.arcToPoint(Offset(size.width * 0.9440994, size.height * 0.6342832),
        radius: Radius.elliptical(
            size.width * 0.01125776, size.height * 0.002542744),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path64.arcToPoint(Offset(size.width * 0.9390528, size.height * 0.6360368),
        radius: Radius.elliptical(
            size.width * 0.01785714, size.height * 0.004033319),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path64.arcToPoint(Offset(size.width * 0.9363354, size.height * 0.6383165),
        radius: Radius.elliptical(
            size.width * 0.02756211, size.height * 0.006225340),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path64.cubicTo(
        size.width * 0.9363354,
        size.height * 0.6391933,
        size.width * 0.9363354,
        size.height * 0.6400701,
        size.width * 0.9363354,
        size.height * 0.6408593);
    path64.arcToPoint(Offset(size.width * 0.9363354, size.height * 0.6434020),
        radius:
            Radius.elliptical(size.width * 0.1098602, size.height * 0.02481368),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path64.arcToPoint(Offset(size.width * 0.9390528, size.height * 0.6457694),
        radius: Radius.elliptical(
            size.width * 0.02989130, size.height * 0.006751425),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path64.arcToPoint(Offset(size.width * 0.9440994, size.height * 0.6474353),
        radius: Radius.elliptical(
            size.width * 0.01940994, size.height * 0.004384042),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path64.arcToPoint(Offset(size.width * 0.9522516, size.height * 0.6481368),
        radius: Radius.elliptical(
            size.width * 0.01125776, size.height * 0.002542744),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path64.arcToPoint(Offset(size.width * 0.9600155, size.height * 0.6474353),
        radius: Radius.elliptical(
            size.width * 0.01086957, size.height * 0.002455064),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path64.arcToPoint(Offset(size.width * 0.9650621, size.height * 0.6457694),
        radius: Radius.elliptical(
            size.width * 0.01940994, size.height * 0.004384042),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path64.arcToPoint(Offset(size.width * 0.9677795, size.height * 0.6434020),
        radius: Radius.elliptical(
            size.width * 0.04153727, size.height * 0.009381850),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path64.arcToPoint(Offset(size.width * 0.9677795, size.height * 0.6408593),
        radius:
            Radius.elliptical(size.width * 0.1098602, size.height * 0.02481368),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path64.cubicTo(
        size.width * 0.9677795,
        size.height * 0.6400701,
        size.width * 0.9677795,
        size.height * 0.6391933,
        size.width * 0.9677795,
        size.height * 0.6383165);
    path64.arcToPoint(Offset(size.width * 0.9650621, size.height * 0.6360368),
        radius: Radius.elliptical(
            size.width * 0.03881988, size.height * 0.008768084),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path64.arcToPoint(Offset(size.width * 0.9600155, size.height * 0.6342832),
        radius: Radius.elliptical(
            size.width * 0.01785714, size.height * 0.004033319),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path64.arcToPoint(Offset(size.width * 0.9522516, size.height * 0.6335818),
        radius: Radius.elliptical(
            size.width * 0.01086957, size.height * 0.002455064),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path64.close();

    Paint paint64fill = Paint()..style = PaintingStyle.fill;
    paint64fill.color = Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path64, paint64fill);

    Path path65 = Path();
    path65.moveTo(size.width * 0.8893634, size.height * 0.5690487);
    path65.lineTo(size.width * 0.8928571, size.height * 0.5690487);
    path65.lineTo(size.width * 0.8994565, size.height * 0.5690487);
    path65.arcToPoint(Offset(size.width * 0.9048913, size.height * 0.5685226),
        radius: Radius.elliptical(
            size.width * 0.01358696, size.height * 0.003068829),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path65.arcToPoint(Offset(size.width * 0.9083851, size.height * 0.5675581),
        radius: Radius.elliptical(
            size.width * 0.009316770, size.height * 0.002104340),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path65.arcToPoint(Offset(size.width * 0.9083851, size.height * 0.5661552),
        radius: Radius.elliptical(
            size.width * 0.01475155, size.height * 0.003331872),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path65.arcToPoint(Offset(size.width * 0.9083851, size.height * 0.5649277),
        radius: Radius.elliptical(
            size.width * 0.01242236, size.height * 0.002805787),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path65.arcToPoint(Offset(size.width * 0.9052795, size.height * 0.5639632),
        radius: Radius.elliptical(
            size.width * 0.01203416, size.height * 0.002718106),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path65.arcToPoint(Offset(size.width * 0.9006211, size.height * 0.5632617),
        radius: Radius.elliptical(
            size.width * 0.01630435, size.height * 0.003682595),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path65.lineTo(size.width * 0.8947981, size.height * 0.5632617);
    path65.arcToPoint(Offset(size.width * 0.8866460, size.height * 0.5632617),
        radius: Radius.elliptical(
            size.width * 0.01785714, size.height * 0.004033319),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path65.arcToPoint(Offset(size.width * 0.8808230, size.height * 0.5647523),
        radius: Radius.elliptical(
            size.width * 0.01940994, size.height * 0.004384042),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path65.lineTo(size.width * 0.8746118, size.height * 0.5639632);
    path65.arcToPoint(Offset(size.width * 0.8831522, size.height * 0.5620342),
        radius: Radius.elliptical(
            size.width * 0.02251553, size.height * 0.005085489),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path65.arcToPoint(Offset(size.width * 0.8951863, size.height * 0.5613327),
        radius: Radius.elliptical(
            size.width * 0.02523292, size.height * 0.005699255),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path65.arcToPoint(Offset(size.width * 0.9037267, size.height * 0.5613327),
        radius: Radius.elliptical(
            size.width * 0.03027950, size.height * 0.006839106),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path65.arcToPoint(Offset(size.width * 0.9103261, size.height * 0.5622096),
        radius: Radius.elliptical(
            size.width * 0.01630435, size.height * 0.003682595),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path65.arcToPoint(Offset(size.width * 0.9149845, size.height * 0.5635248),
        radius: Radius.elliptical(
            size.width * 0.01708075, size.height * 0.003857957),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path65.arcToPoint(Offset(size.width * 0.9169255, size.height * 0.5654537),
        radius: Radius.elliptical(
            size.width * 0.02096273, size.height * 0.004734765),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path65.arcToPoint(Offset(size.width * 0.9041149, size.height * 0.5692240),
        radius: Radius.elliptical(
            size.width * 0.01746894, size.height * 0.003945638),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path65.lineTo(size.width * 0.9041149, size.height * 0.5692240);
    path65.arcToPoint(Offset(size.width * 0.9145963, size.height * 0.5705392),
        radius: Radius.elliptical(
            size.width * 0.01785714, size.height * 0.004033319),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path65.arcToPoint(Offset(size.width * 0.9188665, size.height * 0.5733450),
        radius: Radius.elliptical(
            size.width * 0.01940994, size.height * 0.004384042),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path65.arcToPoint(Offset(size.width * 0.9169255, size.height * 0.5754494),
        radius: Radius.elliptical(
            size.width * 0.02329193, size.height * 0.005260851),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path65.arcToPoint(Offset(size.width * 0.9118789, size.height * 0.5770276),
        radius: Radius.elliptical(
            size.width * 0.02290373, size.height * 0.005173170),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path65.arcToPoint(Offset(size.width * 0.9041149, size.height * 0.5779921),
        radius: Radius.elliptical(
            size.width * 0.02484472, size.height * 0.005611574),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path65.arcToPoint(Offset(size.width * 0.8951863, size.height * 0.5779921),
        radius: Radius.elliptical(
            size.width * 0.02290373, size.height * 0.005173170),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path65.arcToPoint(Offset(size.width * 0.8812112, size.height * 0.5771153),
        radius: Radius.elliptical(
            size.width * 0.02368012, size.height * 0.005348531),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path65.arcToPoint(Offset(size.width * 0.8718944, size.height * 0.5745726),
        radius: Radius.elliptical(
            size.width * 0.02445652, size.height * 0.005523893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path65.lineTo(size.width * 0.8788820, size.height * 0.5740465);
    path65.arcToPoint(Offset(size.width * 0.8854814, size.height * 0.5758878),
        radius: Radius.elliptical(
            size.width * 0.01708075, size.height * 0.003857957),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path65.arcToPoint(Offset(size.width * 0.8951863, size.height * 0.5765015),
        radius: Radius.elliptical(
            size.width * 0.01591615, size.height * 0.003594915),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path65.lineTo(size.width * 0.9013975, size.height * 0.5765015);
    path65.arcToPoint(Offset(size.width * 0.9064441, size.height * 0.5757124),
        radius: Radius.elliptical(
            size.width * 0.01475155, size.height * 0.003331872),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path65.arcToPoint(Offset(size.width * 0.9099379, size.height * 0.5746602),
        radius: Radius.elliptical(
            size.width * 0.01048137, size.height * 0.002367383),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path65.arcToPoint(Offset(size.width * 0.9099379, size.height * 0.5731697),
        radius: Radius.elliptical(
            size.width * 0.01281056, size.height * 0.002893468),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path65.arcToPoint(Offset(size.width * 0.9099379, size.height * 0.5715914),
        radius: Radius.elliptical(
            size.width * 0.01863354, size.height * 0.004208680),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path65.arcToPoint(Offset(size.width * 0.9052795, size.height * 0.5705392),
        radius: Radius.elliptical(
            size.width * 0.01319876, size.height * 0.002981149),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path65.arcToPoint(Offset(size.width * 0.8994565, size.height * 0.5699255),
        radius: Radius.elliptical(
            size.width * 0.02018634, size.height * 0.004559404),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path65.lineTo(size.width * 0.8924689, size.height * 0.5699255);
    path65.lineTo(size.width * 0.8889752, size.height * 0.5699255);
    path65.close();

    Paint paint65fill = Paint()..style = PaintingStyle.fill;
    paint65fill.color = Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path65, paint65fill);

    Path path66 = Path();
    path66.moveTo(size.width * 0.9522516, size.height * 0.5611574);
    path66.arcToPoint(Offset(size.width * 0.9635093, size.height * 0.5619465),
        radius: Radius.elliptical(
            size.width * 0.01863354, size.height * 0.004208680),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path66.arcToPoint(Offset(size.width * 0.9708851, size.height * 0.5639632),
        radius: Radius.elliptical(
            size.width * 0.02756211, size.height * 0.006225340),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path66.arcToPoint(Offset(size.width * 0.9747671, size.height * 0.5667690),
        radius: Radius.elliptical(
            size.width * 0.03881988, size.height * 0.008768084),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path66.arcToPoint(Offset(size.width * 0.9747671, size.height * 0.5730820),
        radius: Radius.elliptical(
            size.width * 0.08462733, size.height * 0.01911442),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path66.arcToPoint(Offset(size.width * 0.9708851, size.height * 0.5758878),
        radius: Radius.elliptical(
            size.width * 0.04231366, size.height * 0.009557212),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path66.arcToPoint(Offset(size.width * 0.9635093, size.height * 0.5778167),
        radius: Radius.elliptical(
            size.width * 0.02290373, size.height * 0.005173170),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path66.arcToPoint(Offset(size.width * 0.9522516, size.height * 0.5786059),
        radius: Radius.elliptical(
            size.width * 0.01863354, size.height * 0.004208680),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path66.arcToPoint(Offset(size.width * 0.9406056, size.height * 0.5778167),
        radius: Radius.elliptical(
            size.width * 0.01902174, size.height * 0.004296361),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path66.arcToPoint(Offset(size.width * 0.9332298, size.height * 0.5758878),
        radius: Radius.elliptical(
            size.width * 0.02290373, size.height * 0.005173170),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path66.arcToPoint(Offset(size.width * 0.9293478, size.height * 0.5730820),
        radius: Radius.elliptical(
            size.width * 0.04231366, size.height * 0.009557212),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path66.arcToPoint(Offset(size.width * 0.9293478, size.height * 0.5667690),
        radius: Radius.elliptical(
            size.width * 0.08423913, size.height * 0.01902674),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path66.arcToPoint(Offset(size.width * 0.9332298, size.height * 0.5639632),
        radius: Radius.elliptical(
            size.width * 0.03881988, size.height * 0.008768084),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path66.arcToPoint(Offset(size.width * 0.9406056, size.height * 0.5619465),
        radius: Radius.elliptical(
            size.width * 0.02756211, size.height * 0.006225340),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path66.arcToPoint(Offset(size.width * 0.9522516, size.height * 0.5611574),
        radius: Radius.elliptical(
            size.width * 0.01902174, size.height * 0.004296361),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path66.close();
    path66.moveTo(size.width * 0.9522516, size.height * 0.5626480);
    path66.arcToPoint(Offset(size.width * 0.9440994, size.height * 0.5632617),
        radius: Radius.elliptical(
            size.width * 0.01086957, size.height * 0.002455064),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path66.arcToPoint(Offset(size.width * 0.9390528, size.height * 0.5650153),
        radius: Radius.elliptical(
            size.width * 0.02057453, size.height * 0.004647085),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path66.arcToPoint(Offset(size.width * 0.9363354, size.height * 0.5673827),
        radius: Radius.elliptical(
            size.width * 0.04153727, size.height * 0.009381850),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path66.arcToPoint(Offset(size.width * 0.9363354, size.height * 0.5699255),
        radius:
            Radius.elliptical(size.width * 0.1098602, size.height * 0.02481368),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path66.cubicTo(
        size.width * 0.9363354,
        size.height * 0.5707146,
        size.width * 0.9363354,
        size.height * 0.5715914,
        size.width * 0.9363354,
        size.height * 0.5724682);
    path66.arcToPoint(Offset(size.width * 0.9390528, size.height * 0.5747479),
        radius: Radius.elliptical(
            size.width * 0.03881988, size.height * 0.008768084),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path66.arcToPoint(Offset(size.width * 0.9440994, size.height * 0.5765015),
        radius: Radius.elliptical(
            size.width * 0.01785714, size.height * 0.004033319),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path66.arcToPoint(Offset(size.width * 0.9522516, size.height * 0.5771153),
        radius: Radius.elliptical(
            size.width * 0.01086957, size.height * 0.002455064),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path66.arcToPoint(Offset(size.width * 0.9600155, size.height * 0.5765015),
        radius: Radius.elliptical(
            size.width * 0.01048137, size.height * 0.002367383),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path66.arcToPoint(Offset(size.width * 0.9650621, size.height * 0.5747479),
        radius: Radius.elliptical(
            size.width * 0.01785714, size.height * 0.004033319),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path66.arcToPoint(Offset(size.width * 0.9677795, size.height * 0.5724682),
        radius: Radius.elliptical(
            size.width * 0.02756211, size.height * 0.006225340),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path66.arcToPoint(Offset(size.width * 0.9704969, size.height * 0.5699255),
        radius: Radius.elliptical(
            size.width * 0.05667702, size.height * 0.01280140),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path66.arcToPoint(Offset(size.width * 0.9704969, size.height * 0.5673827),
        radius: Radius.elliptical(
            size.width * 0.05512422, size.height * 0.01245068),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path66.arcToPoint(Offset(size.width * 0.9677795, size.height * 0.5650153),
        radius: Radius.elliptical(
            size.width * 0.02989130, size.height * 0.006751425),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path66.arcToPoint(Offset(size.width * 0.9627329, size.height * 0.5632617),
        radius: Radius.elliptical(
            size.width * 0.02057453, size.height * 0.004647085),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path66.arcToPoint(Offset(size.width * 0.9522516, size.height * 0.5629110),
        radius: Radius.elliptical(
            size.width * 0.01048137, size.height * 0.002367383),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path66.close();

    Paint paint66fill = Paint()..style = PaintingStyle.fill;
    paint66fill.color = Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path66, paint66fill);

    Path path67 = Path();
    path67.moveTo(size.width * 0.9126553, size.height * 0.5022359);
    path67.lineTo(size.width * 0.9235248, size.height * 0.5022359);
    path67.lineTo(size.width * 0.9235248, size.height * 0.5037264);
    path67.lineTo(size.width * 0.9126553, size.height * 0.5037264);
    path67.lineTo(size.width * 0.9126553, size.height * 0.5077598);
    path67.lineTo(size.width * 0.9056677, size.height * 0.5077598);
    path67.lineTo(size.width * 0.9056677, size.height * 0.5037264);
    path67.lineTo(size.width * 0.8718944, size.height * 0.5037264);
    path67.lineTo(size.width * 0.8718944, size.height * 0.5020605);
    path67.lineTo(size.width * 0.9029503, size.height * 0.4911881);
    path67.lineTo(size.width * 0.9126553, size.height * 0.4911881);
    path67.close();
    path67.moveTo(size.width * 0.9056677, size.height * 0.4934678);
    path67.lineTo(size.width * 0.9056677, size.height * 0.4934678);
    path67.lineTo(size.width * 0.8800466, size.height * 0.5022359);
    path67.lineTo(size.width * 0.9060559, size.height * 0.5022359);
    path67.close();

    Paint paint67fill = Paint()..style = PaintingStyle.fill;
    paint67fill.color = Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path67, paint67fill);

    Path path68 = Path();
    path68.moveTo(size.width * 0.9526398, size.height * 0.4910127);
    path68.arcToPoint(Offset(size.width * 0.9638975, size.height * 0.4918018),
        radius: Radius.elliptical(
            size.width * 0.01863354, size.height * 0.004208680),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path68.arcToPoint(Offset(size.width * 0.9712733, size.height * 0.4938185),
        radius: Radius.elliptical(
            size.width * 0.02406832, size.height * 0.005436212),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path68.arcToPoint(Offset(size.width * 0.9751553, size.height * 0.4965366),
        radius: Radius.elliptical(
            size.width * 0.03649068, size.height * 0.008241999),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path68.arcToPoint(Offset(size.width * 0.9751553, size.height * 0.4997808),
        radius: Radius.elliptical(
            size.width * 0.08618012, size.height * 0.01946515),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path68.arcToPoint(Offset(size.width * 0.9751553, size.height * 0.5029373),
        radius: Radius.elliptical(
            size.width * 0.08501553, size.height * 0.01920210),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path68.arcToPoint(Offset(size.width * 0.9712733, size.height * 0.5057431),
        radius: Radius.elliptical(
            size.width * 0.04231366, size.height * 0.009557212),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path68.arcToPoint(Offset(size.width * 0.9638975, size.height * 0.5076721),
        radius: Radius.elliptical(
            size.width * 0.02600932, size.height * 0.005874616),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path68.arcToPoint(Offset(size.width * 0.9526398, size.height * 0.5084612),
        radius: Radius.elliptical(
            size.width * 0.01863354, size.height * 0.004208680),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path68.arcToPoint(Offset(size.width * 0.9409938, size.height * 0.5076721),
        radius: Radius.elliptical(
            size.width * 0.01902174, size.height * 0.004296361),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path68.arcToPoint(Offset(size.width * 0.9336180, size.height * 0.5057431),
        radius: Radius.elliptical(
            size.width * 0.02600932, size.height * 0.005874616),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path68.arcToPoint(Offset(size.width * 0.9297360, size.height * 0.5029373),
        radius: Radius.elliptical(
            size.width * 0.04231366, size.height * 0.009557212),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path68.arcToPoint(Offset(size.width * 0.9297360, size.height * 0.4997808),
        radius: Radius.elliptical(
            size.width * 0.08501553, size.height * 0.01920210),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path68.arcToPoint(Offset(size.width * 0.9297360, size.height * 0.4965366),
        radius: Radius.elliptical(
            size.width * 0.08618012, size.height * 0.01946515),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path68.arcToPoint(Offset(size.width * 0.9336180, size.height * 0.4938185),
        radius: Radius.elliptical(
            size.width * 0.03649068, size.height * 0.008241999),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path68.arcToPoint(Offset(size.width * 0.9409938, size.height * 0.4918018),
        radius: Radius.elliptical(
            size.width * 0.02406832, size.height * 0.005436212),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path68.arcToPoint(Offset(size.width * 0.9526398, size.height * 0.4910127),
        radius: Radius.elliptical(
            size.width * 0.01902174, size.height * 0.004296361),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path68.close();
    path68.moveTo(size.width * 0.9526398, size.height * 0.4924156);
    path68.arcToPoint(Offset(size.width * 0.9444876, size.height * 0.4931171),
        radius: Radius.elliptical(
            size.width * 0.01125776, size.height * 0.002542744),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path68.arcToPoint(Offset(size.width * 0.9394410, size.height * 0.4948707),
        radius: Radius.elliptical(
            size.width * 0.01785714, size.height * 0.004033319),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path68.arcToPoint(Offset(size.width * 0.9367236, size.height * 0.4972381),
        radius: Radius.elliptical(
            size.width * 0.04153727, size.height * 0.009381850),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path68.arcToPoint(Offset(size.width * 0.9367236, size.height * 0.4997808),
        radius:
            Radius.elliptical(size.width * 0.1098602, size.height * 0.02481368),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path68.arcToPoint(Offset(size.width * 0.9367236, size.height * 0.5022359),
        radius:
            Radius.elliptical(size.width * 0.1024845, size.height * 0.02314774),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path68.arcToPoint(Offset(size.width * 0.9394410, size.height * 0.5046032),
        radius: Radius.elliptical(
            size.width * 0.04153727, size.height * 0.009381850),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path68.arcToPoint(Offset(size.width * 0.9444876, size.height * 0.5062692),
        radius: Radius.elliptical(
            size.width * 0.01669255, size.height * 0.003770276),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path68.arcToPoint(Offset(size.width * 0.9526398, size.height * 0.5069706),
        radius: Radius.elliptical(
            size.width * 0.01125776, size.height * 0.002542744),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path68.arcToPoint(Offset(size.width * 0.9604037, size.height * 0.5062692),
        radius: Radius.elliptical(
            size.width * 0.01086957, size.height * 0.002455064),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path68.arcToPoint(Offset(size.width * 0.9654503, size.height * 0.5046032),
        radius: Radius.elliptical(
            size.width * 0.01669255, size.height * 0.003770276),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path68.arcToPoint(Offset(size.width * 0.9681677, size.height * 0.5022359),
        radius: Radius.elliptical(
            size.width * 0.02989130, size.height * 0.006751425),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path68.arcToPoint(Offset(size.width * 0.9704969, size.height * 0.4997808),
        radius: Radius.elliptical(
            size.width * 0.05124224, size.height * 0.01157387),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path68.arcToPoint(Offset(size.width * 0.9704969, size.height * 0.4972381),
        radius: Radius.elliptical(
            size.width * 0.05512422, size.height * 0.01245068),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path68.arcToPoint(Offset(size.width * 0.9677795, size.height * 0.4948707),
        radius: Radius.elliptical(
            size.width * 0.02989130, size.height * 0.006751425),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path68.arcToPoint(Offset(size.width * 0.9627329, size.height * 0.4931171),
        radius: Radius.elliptical(
            size.width * 0.01785714, size.height * 0.004033319),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path68.arcToPoint(Offset(size.width * 0.9526398, size.height * 0.4921526),
        radius: Radius.elliptical(
            size.width * 0.01086957, size.height * 0.002455064),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path68.close();

    Paint paint68fill = Paint()..style = PaintingStyle.fill;
    paint68fill.color = Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path68, paint68fill);

    Path path69 = Path();
    path69.moveTo(size.width * 0.9161491, size.height * 0.4220079);
    path69.lineTo(size.width * 0.8854814, size.height * 0.4220079);
    path69.lineTo(size.width * 0.8854814, size.height * 0.4270934);
    path69.lineTo(size.width * 0.8905280, size.height * 0.4270934);
    path69.lineTo(size.width * 0.8955745, size.height * 0.4270934);
    path69.arcToPoint(Offset(size.width * 0.9052795, size.height * 0.4270934),
        radius: Radius.elliptical(
            size.width * 0.02678571, size.height * 0.006049978),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path69.arcToPoint(Offset(size.width * 0.9126553, size.height * 0.4281456),
        radius: Radius.elliptical(
            size.width * 0.02950311, size.height * 0.006663744),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path69.arcToPoint(Offset(size.width * 0.9177019, size.height * 0.4298115),
        radius: Radius.elliptical(
            size.width * 0.03105590, size.height * 0.007014467),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path69.arcToPoint(Offset(size.width * 0.9177019, size.height * 0.4319158),
        radius: Radius.elliptical(
            size.width * 0.02368012, size.height * 0.005348531),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path69.arcToPoint(Offset(size.width * 0.9177019, size.height * 0.4341078),
        radius: Radius.elliptical(
            size.width * 0.02678571, size.height * 0.006049978),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path69.arcToPoint(Offset(size.width * 0.9048913, size.height * 0.4370013),
        radius: Radius.elliptical(
            size.width * 0.02212733, size.height * 0.004997808),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path69.arcToPoint(Offset(size.width * 0.8951863, size.height * 0.4370013),
        radius: Radius.elliptical(
            size.width * 0.01979814, size.height * 0.004471723),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path69.arcToPoint(Offset(size.width * 0.8815994, size.height * 0.4362122),
        radius: Radius.elliptical(
            size.width * 0.02523292, size.height * 0.005699255),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path69.arcToPoint(Offset(size.width * 0.8730590, size.height * 0.4340202),
        radius: Radius.elliptical(
            size.width * 0.02600932, size.height * 0.005874616),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path69.lineTo(size.width * 0.8800466, size.height * 0.4333187);
    path69.arcToPoint(Offset(size.width * 0.8858696, size.height * 0.4349847),
        radius: Radius.elliptical(
            size.width * 0.01552795, size.height * 0.003507234),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path69.arcToPoint(Offset(size.width * 0.8947981, size.height * 0.4355984),
        radius: Radius.elliptical(
            size.width * 0.01746894, size.height * 0.003945638),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path69.arcToPoint(Offset(size.width * 0.9017857, size.height * 0.4355984),
        radius: Radius.elliptical(
            size.width * 0.01513975, size.height * 0.003419553),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path69.arcToPoint(Offset(size.width * 0.9068323, size.height * 0.4348093),
        radius: Radius.elliptical(
            size.width * 0.01164596, size.height * 0.002630425),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path69.arcToPoint(Offset(size.width * 0.9107143, size.height * 0.4335818),
        radius: Radius.elliptical(
            size.width * 0.02756211, size.height * 0.006225340),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path69.arcToPoint(Offset(size.width * 0.9107143, size.height * 0.4320035),
        radius: Radius.elliptical(
            size.width * 0.02212733, size.height * 0.004997808),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path69.arcToPoint(Offset(size.width * 0.9107143, size.height * 0.4303376),
        radius: Radius.elliptical(
            size.width * 0.01591615, size.height * 0.003594915),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path69.arcToPoint(Offset(size.width * 0.9072205, size.height * 0.4291100),
        radius: Radius.elliptical(
            size.width * 0.01630435, size.height * 0.003682595),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path69.arcToPoint(Offset(size.width * 0.9013975, size.height * 0.4283209),
        radius: Radius.elliptical(
            size.width * 0.02329193, size.height * 0.005260851),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path69.arcToPoint(Offset(size.width * 0.8940217, size.height * 0.4283209),
        radius: Radius.elliptical(
            size.width * 0.02251553, size.height * 0.005085489),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path69.lineTo(size.width * 0.8862578, size.height * 0.4283209);
    path69.lineTo(size.width * 0.8788820, size.height * 0.4290224);
    path69.lineTo(size.width * 0.8788820, size.height * 0.4202543);
    path69.lineTo(size.width * 0.9177019, size.height * 0.4202543);
    path69.close();

    Paint paint69fill = Paint()..style = PaintingStyle.fill;
    paint69fill.color = Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path69, paint69fill);

    Path path70 = Path();
    path70.moveTo(size.width * 0.9518634, size.height * 0.4200789);
    path70.arcToPoint(Offset(size.width * 0.9631211, size.height * 0.4208680),
        radius: Radius.elliptical(
            size.width * 0.01785714, size.height * 0.004033319),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path70.arcToPoint(Offset(size.width * 0.9704969, size.height * 0.4227970),
        radius: Radius.elliptical(
            size.width * 0.02290373, size.height * 0.005173170),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path70.arcToPoint(Offset(size.width * 0.9743789, size.height * 0.4256028),
        radius: Radius.elliptical(
            size.width * 0.04231366, size.height * 0.009557212),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path70.arcToPoint(Offset(size.width * 0.9743789, size.height * 0.4287593),
        radius: Radius.elliptical(
            size.width * 0.05706522, size.height * 0.01288908),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path70.arcToPoint(Offset(size.width * 0.9743789, size.height * 0.4319158),
        radius: Radius.elliptical(
            size.width * 0.05318323, size.height * 0.01201228),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path70.arcToPoint(Offset(size.width * 0.9704969, size.height * 0.4347216),
        radius: Radius.elliptical(
            size.width * 0.03881988, size.height * 0.008768084),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path70.arcToPoint(Offset(size.width * 0.9631211, size.height * 0.4367383),
        radius: Radius.elliptical(
            size.width * 0.02406832, size.height * 0.005436212),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path70.arcToPoint(Offset(size.width * 0.9518634, size.height * 0.4374397),
        radius: Radius.elliptical(
            size.width * 0.02018634, size.height * 0.004559404),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path70.arcToPoint(Offset(size.width * 0.9402174, size.height * 0.4367383),
        radius: Radius.elliptical(
            size.width * 0.02173913, size.height * 0.004910127),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path70.arcToPoint(Offset(size.width * 0.9328416, size.height * 0.4347216),
        radius: Radius.elliptical(
            size.width * 0.02406832, size.height * 0.005436212),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path70.arcToPoint(Offset(size.width * 0.9289596, size.height * 0.4319158),
        radius: Radius.elliptical(
            size.width * 0.03881988, size.height * 0.008768084),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path70.arcToPoint(Offset(size.width * 0.9289596, size.height * 0.4287593),
        radius: Radius.elliptical(
            size.width * 0.07763975, size.height * 0.01753617),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path70.arcToPoint(Offset(size.width * 0.9289596, size.height * 0.4256028),
        radius: Radius.elliptical(
            size.width * 0.08501553, size.height * 0.01920210),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path70.arcToPoint(Offset(size.width * 0.9328416, size.height * 0.4227970),
        radius: Radius.elliptical(
            size.width * 0.04231366, size.height * 0.009557212),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path70.arcToPoint(Offset(size.width * 0.9402174, size.height * 0.4208680),
        radius: Radius.elliptical(
            size.width * 0.02290373, size.height * 0.005173170),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path70.arcToPoint(Offset(size.width * 0.9518634, size.height * 0.4200789),
        radius: Radius.elliptical(
            size.width * 0.01902174, size.height * 0.004296361),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path70.close();
    path70.moveTo(size.width * 0.9518634, size.height * 0.4214818);
    path70.arcToPoint(Offset(size.width * 0.9437112, size.height * 0.4221833),
        radius: Radius.elliptical(
            size.width * 0.01125776, size.height * 0.002542744),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path70.arcToPoint(Offset(size.width * 0.9386646, size.height * 0.4239369),
        radius: Radius.elliptical(
            size.width * 0.01785714, size.height * 0.004033319),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path70.arcToPoint(Offset(size.width * 0.9359472, size.height * 0.4262166),
        radius: Radius.elliptical(
            size.width * 0.04309006, size.height * 0.009732573),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path70.cubicTo(
        size.width * 0.9359472,
        size.height * 0.4270934,
        size.width * 0.9359472,
        size.height * 0.4279702,
        size.width * 0.9359472,
        size.height * 0.4287593);
    path70.arcToPoint(Offset(size.width * 0.9359472, size.height * 0.4313021),
        radius:
            Radius.elliptical(size.width * 0.1098602, size.height * 0.02481368),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path70.arcToPoint(Offset(size.width * 0.9386646, size.height * 0.4336694),
        radius: Radius.elliptical(
            size.width * 0.04153727, size.height * 0.009381850),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path70.arcToPoint(Offset(size.width * 0.9437112, size.height * 0.4353354),
        radius: Radius.elliptical(
            size.width * 0.01669255, size.height * 0.003770276),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path70.arcToPoint(Offset(size.width * 0.9518634, size.height * 0.4360368),
        radius: Radius.elliptical(
            size.width * 0.01125776, size.height * 0.002542744),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path70.arcToPoint(Offset(size.width * 0.9596273, size.height * 0.4353354),
        radius: Radius.elliptical(
            size.width * 0.01086957, size.height * 0.002455064),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path70.arcToPoint(Offset(size.width * 0.9650621, size.height * 0.4336694),
        radius: Radius.elliptical(
            size.width * 0.02135093, size.height * 0.004822446),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path70.arcToPoint(Offset(size.width * 0.9673913, size.height * 0.4313021),
        radius: Radius.elliptical(
            size.width * 0.04153727, size.height * 0.009381850),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path70.arcToPoint(Offset(size.width * 0.9673913, size.height * 0.4287593),
        radius: Radius.elliptical(
            size.width * 0.05512422, size.height * 0.01245068),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path70.arcToPoint(Offset(size.width * 0.9673913, size.height * 0.4262166),
        radius: Radius.elliptical(
            size.width * 0.05667702, size.height * 0.01280140),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path70.arcToPoint(Offset(size.width * 0.9650621, size.height * 0.4239369),
        radius: Radius.elliptical(
            size.width * 0.04270186, size.height * 0.009644893),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path70.arcToPoint(Offset(size.width * 0.9596273, size.height * 0.4221833),
        radius: Radius.elliptical(
            size.width * 0.02329193, size.height * 0.005260851),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path70.arcToPoint(Offset(size.width * 0.9518634, size.height * 0.4214818),
        radius: Radius.elliptical(
            size.width * 0.01086957, size.height * 0.002455064),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path70.close();

    Paint paint70fill = Paint()..style = PaintingStyle.fill;
    paint70fill.color = Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path70, paint70fill);

    Path path71 = Path();
    path71.moveTo(size.width * 0.8874224, size.height * 0.3570364);
    path71.lineTo(size.width * 0.8874224, size.height * 0.3570364);
    path71.arcToPoint(Offset(size.width * 0.8920807, size.height * 0.3570364),
        radius: Radius.elliptical(
            size.width * 0.01281056, size.height * 0.002893468),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path71.lineTo(size.width * 0.8979037, size.height * 0.3570364);
    path71.arcToPoint(Offset(size.width * 0.9068323, size.height * 0.3574748),
        radius: Radius.elliptical(
            size.width * 0.02290373, size.height * 0.005173170),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path71.arcToPoint(Offset(size.width * 0.9138199, size.height * 0.3585270),
        radius: Radius.elliptical(
            size.width * 0.01708075, size.height * 0.003857957),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path71.arcToPoint(Offset(size.width * 0.9184783, size.height * 0.3601052),
        radius: Radius.elliptical(
            size.width * 0.02212733, size.height * 0.004997808),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path71.arcToPoint(Offset(size.width * 0.9184783, size.height * 0.3621219),
        radius: Radius.elliptical(
            size.width * 0.02290373, size.height * 0.005173170),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path71.arcToPoint(Offset(size.width * 0.9184783, size.height * 0.3643139),
        radius: Radius.elliptical(
            size.width * 0.02562112, size.height * 0.005786936),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path71.arcToPoint(Offset(size.width * 0.9134317, size.height * 0.3658922),
        radius: Radius.elliptical(
            size.width * 0.01785714, size.height * 0.004033319),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path71.arcToPoint(Offset(size.width * 0.9060559, size.height * 0.3670320),
        radius: Radius.elliptical(
            size.width * 0.01940994, size.height * 0.004384042),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path71.arcToPoint(Offset(size.width * 0.8963509, size.height * 0.3670320),
        radius: Radius.elliptical(
            size.width * 0.02678571, size.height * 0.006049978),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path71.arcToPoint(Offset(size.width * 0.8870342, size.height * 0.3670320),
        radius: Radius.elliptical(
            size.width * 0.02368012, size.height * 0.005348531),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path71.arcToPoint(Offset(size.width * 0.8792702, size.height * 0.3658922),
        radius: Radius.elliptical(
            size.width * 0.02057453, size.height * 0.004647085),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path71.arcToPoint(Offset(size.width * 0.8742236, size.height * 0.3643139),
        radius: Radius.elliptical(
            size.width * 0.02290373, size.height * 0.005173170),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path71.arcToPoint(Offset(size.width * 0.8742236, size.height * 0.3621219),
        radius: Radius.elliptical(
            size.width * 0.02562112, size.height * 0.005786936),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path71.arcToPoint(Offset(size.width * 0.8761646, size.height * 0.3597545),
        radius: Radius.elliptical(
            size.width * 0.02523292, size.height * 0.005699255),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path71.arcToPoint(Offset(size.width * 0.8808230, size.height * 0.3576502),
        radius: Radius.elliptical(
            size.width * 0.05201863, size.height * 0.01174923),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path71.lineTo(size.width * 0.9006211, size.height * 0.3503726);
    path71.lineTo(size.width * 0.9091615, size.height * 0.3503726);
    path71.close();
    path71.moveTo(size.width * 0.8804348, size.height * 0.3615081);
    path71.arcToPoint(Offset(size.width * 0.8804348, size.height * 0.3630864),
        radius: Radius.elliptical(
            size.width * 0.02018634, size.height * 0.004559404),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path71.arcToPoint(Offset(size.width * 0.8839286, size.height * 0.3642262),
        radius: Radius.elliptical(
            size.width * 0.01475155, size.height * 0.003331872),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path71.arcToPoint(Offset(size.width * 0.8889752, size.height * 0.3650153),
        radius: Radius.elliptical(
            size.width * 0.01164596, size.height * 0.002630425),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path71.arcToPoint(Offset(size.width * 0.9021739, size.height * 0.3650153),
        radius: Radius.elliptical(
            size.width * 0.01475155, size.height * 0.003331872),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path71.arcToPoint(Offset(size.width * 0.9076087, size.height * 0.3642262),
        radius: Radius.elliptical(
            size.width * 0.01630435, size.height * 0.003682595),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path71.arcToPoint(Offset(size.width * 0.9107143, size.height * 0.3630864),
        radius: Radius.elliptical(
            size.width * 0.02212733, size.height * 0.004997808),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path71.arcToPoint(Offset(size.width * 0.9107143, size.height * 0.3615081),
        radius: Radius.elliptical(
            size.width * 0.02018634, size.height * 0.004559404),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path71.arcToPoint(Offset(size.width * 0.9107143, size.height * 0.3601052),
        radius: Radius.elliptical(
            size.width * 0.01591615, size.height * 0.003594915),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path71.arcToPoint(Offset(size.width * 0.9076087, size.height * 0.3588777),
        radius: Radius.elliptical(
            size.width * 0.01242236, size.height * 0.002805787),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path71.arcToPoint(Offset(size.width * 0.9025621, size.height * 0.3580886),
        radius: Radius.elliptical(
            size.width * 0.01475155, size.height * 0.003331872),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path71.arcToPoint(Offset(size.width * 0.8955745, size.height * 0.3580886),
        radius: Radius.elliptical(
            size.width * 0.02018634, size.height * 0.004559404),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path71.arcToPoint(Offset(size.width * 0.8889752, size.height * 0.3580886),
        radius: Radius.elliptical(
            size.width * 0.01824534, size.height * 0.004121000),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path71.arcToPoint(Offset(size.width * 0.8835404, size.height * 0.3588777),
        radius: Radius.elliptical(
            size.width * 0.01319876, size.height * 0.002981149),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path71.arcToPoint(Offset(size.width * 0.8804348, size.height * 0.3601052),
        radius: Radius.elliptical(
            size.width * 0.01824534, size.height * 0.004121000),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path71.arcToPoint(Offset(size.width * 0.8804348, size.height * 0.3615081),
        radius: Radius.elliptical(
            size.width * 0.01591615, size.height * 0.003594915),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path71.close();

    Paint paint71fill = Paint()..style = PaintingStyle.fill;
    paint71fill.color = Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path71, paint71fill);

    Path path72 = Path();
    path72.moveTo(size.width * 0.9514752, size.height * 0.3494082);
    path72.arcToPoint(Offset(size.width * 0.9631211, size.height * 0.3501096),
        radius: Radius.elliptical(
            size.width * 0.02173913, size.height * 0.004910127),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path72.arcToPoint(Offset(size.width * 0.9704969, size.height * 0.3521263),
        radius: Radius.elliptical(
            size.width * 0.02756211, size.height * 0.006225340),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path72.arcToPoint(Offset(size.width * 0.9743789, size.height * 0.3549320),
        radius: Radius.elliptical(
            size.width * 0.03881988, size.height * 0.008768084),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path72.arcToPoint(Offset(size.width * 0.9743789, size.height * 0.3612451),
        radius: Radius.elliptical(
            size.width * 0.08462733, size.height * 0.01911442),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path72.arcToPoint(Offset(size.width * 0.9704969, size.height * 0.3640509),
        radius: Radius.elliptical(
            size.width * 0.03881988, size.height * 0.008768084),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path72.arcToPoint(Offset(size.width * 0.9631211, size.height * 0.3659798),
        radius: Radius.elliptical(
            size.width * 0.02290373, size.height * 0.005173170),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path72.arcToPoint(Offset(size.width * 0.9514752, size.height * 0.3667690),
        radius: Radius.elliptical(
            size.width * 0.01902174, size.height * 0.004296361),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path72.arcToPoint(Offset(size.width * 0.9402174, size.height * 0.3659798),
        radius: Radius.elliptical(
            size.width * 0.01785714, size.height * 0.004033319),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path72.arcToPoint(Offset(size.width * 0.9328416, size.height * 0.3640509),
        radius: Radius.elliptical(
            size.width * 0.01979814, size.height * 0.004471723),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path72.arcToPoint(Offset(size.width * 0.9289596, size.height * 0.3612451),
        radius: Radius.elliptical(
            size.width * 0.03105590, size.height * 0.007014467),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path72.arcToPoint(Offset(size.width * 0.9289596, size.height * 0.3549320),
        radius: Radius.elliptical(
            size.width * 0.08462733, size.height * 0.01911442),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path72.arcToPoint(Offset(size.width * 0.9328416, size.height * 0.3521263),
        radius: Radius.elliptical(
            size.width * 0.03105590, size.height * 0.007014467),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path72.arcToPoint(Offset(size.width * 0.9402174, size.height * 0.3501096),
        radius: Radius.elliptical(
            size.width * 0.02329193, size.height * 0.005260851),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path72.arcToPoint(Offset(size.width * 0.9514752, size.height * 0.3494082),
        radius: Radius.elliptical(
            size.width * 0.02018634, size.height * 0.004559404),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path72.close();
    path72.moveTo(size.width * 0.9514752, size.height * 0.3508110);
    path72.arcToPoint(Offset(size.width * 0.9433230, size.height * 0.3515125),
        radius: Radius.elliptical(
            size.width * 0.01086957, size.height * 0.002455064),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path72.arcToPoint(Offset(size.width * 0.9382764, size.height * 0.3531784),
        radius: Radius.elliptical(
            size.width * 0.02717391, size.height * 0.006137659),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path72.arcToPoint(Offset(size.width * 0.9359472, size.height * 0.3555458),
        radius: Radius.elliptical(
            size.width * 0.04153727, size.height * 0.009381850),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path72.arcToPoint(Offset(size.width * 0.9359472, size.height * 0.3606313),
        radius: Radius.elliptical(
            size.width * 0.08190994, size.height * 0.01850066),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path72.arcToPoint(Offset(size.width * 0.9382764, size.height * 0.3629110),
        radius: Radius.elliptical(
            size.width * 0.03881988, size.height * 0.008768084),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path72.arcToPoint(Offset(size.width * 0.9433230, size.height * 0.3646646),
        radius: Radius.elliptical(
            size.width * 0.02989130, size.height * 0.006751425),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path72.arcToPoint(Offset(size.width * 0.9514752, size.height * 0.3652784),
        radius: Radius.elliptical(
            size.width * 0.01203416, size.height * 0.002718106),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path72.arcToPoint(Offset(size.width * 0.9596273, size.height * 0.3646646),
        radius: Radius.elliptical(
            size.width * 0.01164596, size.height * 0.002630425),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path72.arcToPoint(Offset(size.width * 0.9646739, size.height * 0.3629110),
        radius: Radius.elliptical(
            size.width * 0.02251553, size.height * 0.005085489),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path72.arcToPoint(Offset(size.width * 0.9673913, size.height * 0.3606313),
        radius: Radius.elliptical(
            size.width * 0.06327640, size.height * 0.01429198),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path72.cubicTo(
        size.width * 0.9673913,
        size.height * 0.3597545,
        size.width * 0.9673913,
        size.height * 0.3588777,
        size.width * 0.9673913,
        size.height * 0.3580886);
    path72.cubicTo(
        size.width * 0.9673913,
        size.height * 0.3572994,
        size.width * 0.9673913,
        size.height * 0.3564226,
        size.width * 0.9673913,
        size.height * 0.3555458);
    path72.arcToPoint(Offset(size.width * 0.9646739, size.height * 0.3531784),
        radius: Radius.elliptical(
            size.width * 0.06832298, size.height * 0.01543183),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path72.arcToPoint(Offset(size.width * 0.9596273, size.height * 0.3515125),
        radius: Radius.elliptical(
            size.width * 0.02057453, size.height * 0.004647085),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path72.arcToPoint(Offset(size.width * 0.9514752, size.height * 0.3507234),
        radius: Radius.elliptical(
            size.width * 0.01009317, size.height * 0.002279702),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path72.close();

    Paint paint72fill = Paint()..style = PaintingStyle.fill;
    paint72fill.color = Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path72, paint72fill);

    Path path73 = Path();
    path73.moveTo(size.width * 0.9173137, size.height * 0.2805787);
    path73.lineTo(size.width * 0.8878106, size.height * 0.2955721);
    path73.lineTo(size.width * 0.8796584, size.height * 0.2955721);
    path73.lineTo(size.width * 0.9099379, size.height * 0.2805787);
    path73.lineTo(size.width * 0.8738354, size.height * 0.2805787);
    path73.lineTo(size.width * 0.8738354, size.height * 0.2790881);
    path73.lineTo(size.width * 0.9173137, size.height * 0.2790881);
    path73.close();

    Paint paint73fill = Paint()..style = PaintingStyle.fill;
    paint73fill.color = Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path73, paint73fill);

    Path path74 = Path();
    path74.moveTo(size.width * 0.9506988, size.height * 0.2786497);
    path74.arcToPoint(Offset(size.width * 0.9619565, size.height * 0.2794388),
        radius: Radius.elliptical(
            size.width * 0.01785714, size.height * 0.004033319),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path74.arcToPoint(Offset(size.width * 0.9693323, size.height * 0.2814555),
        radius: Radius.elliptical(
            size.width * 0.02096273, size.height * 0.004734765),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path74.arcToPoint(Offset(size.width * 0.9736025, size.height * 0.2841736),
        radius: Radius.elliptical(
            size.width * 0.03881988, size.height * 0.008768084),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path74.arcToPoint(Offset(size.width * 0.9736025, size.height * 0.2874178),
        radius: Radius.elliptical(
            size.width * 0.08618012, size.height * 0.01946515),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path74.arcToPoint(Offset(size.width * 0.9736025, size.height * 0.2905743),
        radius: Radius.elliptical(
            size.width * 0.08501553, size.height * 0.01920210),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path74.arcToPoint(Offset(size.width * 0.9693323, size.height * 0.2933801),
        radius: Radius.elliptical(
            size.width * 0.04270186, size.height * 0.009644893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path74.arcToPoint(Offset(size.width * 0.9619565, size.height * 0.2953091),
        radius: Radius.elliptical(
            size.width * 0.02212733, size.height * 0.004997808),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path74.arcToPoint(Offset(size.width * 0.9506988, size.height * 0.2960982),
        radius: Radius.elliptical(
            size.width * 0.01785714, size.height * 0.004033319),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path74.arcToPoint(Offset(size.width * 0.9390528, size.height * 0.2953091),
        radius: Radius.elliptical(
            size.width * 0.01902174, size.height * 0.004296361),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path74.arcToPoint(Offset(size.width * 0.9316770, size.height * 0.2933801),
        radius: Radius.elliptical(
            size.width * 0.02600932, size.height * 0.005874616),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path74.arcToPoint(Offset(size.width * 0.9277950, size.height * 0.2905743),
        radius: Radius.elliptical(
            size.width * 0.04231366, size.height * 0.009557212),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path74.arcToPoint(Offset(size.width * 0.9277950, size.height * 0.2874178),
        radius: Radius.elliptical(
            size.width * 0.08501553, size.height * 0.01920210),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path74.arcToPoint(Offset(size.width * 0.9277950, size.height * 0.2841736),
        radius: Radius.elliptical(
            size.width * 0.08618012, size.height * 0.01946515),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path74.arcToPoint(Offset(size.width * 0.9316770, size.height * 0.2814555),
        radius: Radius.elliptical(
            size.width * 0.03881988, size.height * 0.008768084),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path74.arcToPoint(Offset(size.width * 0.9390528, size.height * 0.2794388),
        radius: Radius.elliptical(
            size.width * 0.02406832, size.height * 0.005436212),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path74.arcToPoint(Offset(size.width * 0.9506988, size.height * 0.2786497),
        radius: Radius.elliptical(
            size.width * 0.01902174, size.height * 0.004296361),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path74.close();
    path74.moveTo(size.width * 0.9506988, size.height * 0.2801403);
    path74.arcToPoint(Offset(size.width * 0.9425466, size.height * 0.2807541),
        radius: Radius.elliptical(
            size.width * 0.01203416, size.height * 0.002718106),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path74.arcToPoint(Offset(size.width * 0.9375000, size.height * 0.2825077),
        radius: Radius.elliptical(
            size.width * 0.02678571, size.height * 0.006049978),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path74.arcToPoint(Offset(size.width * 0.9347826, size.height * 0.2848751),
        radius: Radius.elliptical(
            size.width * 0.06832298, size.height * 0.01543183),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path74.arcToPoint(Offset(size.width * 0.9347826, size.height * 0.2874178),
        radius:
            Radius.elliptical(size.width * 0.1098602, size.height * 0.02481368),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path74.cubicTo(
        size.width * 0.9347826,
        size.height * 0.2882069,
        size.width * 0.9347826,
        size.height * 0.2890837,
        size.width * 0.9347826,
        size.height * 0.2899605);
    path74.arcToPoint(Offset(size.width * 0.9375000, size.height * 0.2922402),
        radius: Radius.elliptical(
            size.width * 0.07763975, size.height * 0.01753617),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path74.arcToPoint(Offset(size.width * 0.9425466, size.height * 0.2939062),
        radius: Radius.elliptical(
            size.width * 0.02057453, size.height * 0.004647085),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path74.arcToPoint(Offset(size.width * 0.9588509, size.height * 0.2939062),
        radius: Radius.elliptical(
            size.width * 0.01242236, size.height * 0.002805787),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path74.arcToPoint(Offset(size.width * 0.9638975, size.height * 0.2922402),
        radius: Radius.elliptical(
            size.width * 0.02717391, size.height * 0.006137659),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path74.arcToPoint(Offset(size.width * 0.9662267, size.height * 0.2899605),
        radius: Radius.elliptical(
            size.width * 0.04270186, size.height * 0.009644893),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path74.arcToPoint(Offset(size.width * 0.9662267, size.height * 0.2874178),
        radius: Radius.elliptical(
            size.width * 0.05667702, size.height * 0.01280140),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path74.arcToPoint(Offset(size.width * 0.9662267, size.height * 0.2848751),
        radius: Radius.elliptical(
            size.width * 0.05512422, size.height * 0.01245068),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path74.arcToPoint(Offset(size.width * 0.9638975, size.height * 0.2825077),
        radius: Radius.elliptical(
            size.width * 0.04153727, size.height * 0.009381850),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path74.arcToPoint(Offset(size.width * 0.9588509, size.height * 0.2807541),
        radius: Radius.elliptical(
            size.width * 0.03881988, size.height * 0.008768084),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path74.arcToPoint(Offset(size.width * 0.9506988, size.height * 0.2805787),
        radius: Radius.elliptical(
            size.width * 0.01203416, size.height * 0.002718106),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path74.close();

    Paint paint74fill = Paint()..style = PaintingStyle.fill;
    paint74fill.color = Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path74, paint74fill);

    Path path75 = Path();
    path75.moveTo(size.width * 0.9064441, size.height * 0.2162210);
    path75.arcToPoint(Offset(size.width * 0.9161491, size.height * 0.2177115),
        radius: Radius.elliptical(
            size.width * 0.02057453, size.height * 0.004647085),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path75.arcToPoint(Offset(size.width * 0.9200311, size.height * 0.2206050),
        radius: Radius.elliptical(
            size.width * 0.02018634, size.height * 0.004559404),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path75.arcToPoint(Offset(size.width * 0.9180901, size.height * 0.2225340),
        radius: Radius.elliptical(
            size.width * 0.01552795, size.height * 0.003507234),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path75.arcToPoint(Offset(size.width * 0.9130435, size.height * 0.2241122),
        radius: Radius.elliptical(
            size.width * 0.01785714, size.height * 0.004033319),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path75.arcToPoint(Offset(size.width * 0.9056677, size.height * 0.2249890),
        radius: Radius.elliptical(
            size.width * 0.02212733, size.height * 0.004997808),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path75.arcToPoint(Offset(size.width * 0.8967391, size.height * 0.2249890),
        radius: Radius.elliptical(
            size.width * 0.02406832, size.height * 0.005436212),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path75.arcToPoint(Offset(size.width * 0.8878106, size.height * 0.2249890),
        radius: Radius.elliptical(
            size.width * 0.02290373, size.height * 0.005173170),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path75.arcToPoint(Offset(size.width * 0.8800466, size.height * 0.2241122),
        radius: Radius.elliptical(
            size.width * 0.02445652, size.height * 0.005523893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path75.arcToPoint(Offset(size.width * 0.8750000, size.height * 0.2225340),
        radius: Radius.elliptical(
            size.width * 0.02290373, size.height * 0.005173170),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path75.arcToPoint(Offset(size.width * 0.8730590, size.height * 0.2206050),
        radius: Radius.elliptical(
            size.width * 0.01979814, size.height * 0.004471723),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path75.arcToPoint(Offset(size.width * 0.8730590, size.height * 0.2190267),
        radius: Radius.elliptical(
            size.width * 0.02212733, size.height * 0.004997808),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path75.arcToPoint(Offset(size.width * 0.8757764, size.height * 0.2177115),
        radius: Radius.elliptical(
            size.width * 0.03881988, size.height * 0.008768084),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path75.lineTo(size.width * 0.8804348, size.height * 0.2167470);
    path75.arcToPoint(Offset(size.width * 0.8858696, size.height * 0.2162210),
        radius: Radius.elliptical(
            size.width * 0.01358696, size.height * 0.003068829),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path75.lineTo(size.width * 0.8858696, size.height * 0.2162210);
    path75.arcToPoint(Offset(size.width * 0.8812112, size.height * 0.2156949),
        radius: Radius.elliptical(
            size.width * 0.02600932, size.height * 0.005874616),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path75.lineTo(size.width * 0.8777174, size.height * 0.2148181);
    path75.arcToPoint(Offset(size.width * 0.8757764, size.height * 0.2136782),
        radius: Radius.elliptical(
            size.width * 0.01940994, size.height * 0.004384042),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path75.arcToPoint(Offset(size.width * 0.8757764, size.height * 0.2124507),
        radius: Radius.elliptical(
            size.width * 0.01242236, size.height * 0.002805787),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path75.arcToPoint(Offset(size.width * 0.8777174, size.height * 0.2106971),
        radius: Radius.elliptical(
            size.width * 0.01785714, size.height * 0.004033319),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path75.arcToPoint(Offset(size.width * 0.8819876, size.height * 0.2092942),
        radius: Radius.elliptical(
            size.width * 0.01203416, size.height * 0.002718106),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path75.arcToPoint(Offset(size.width * 0.8885870, size.height * 0.2084174),
        radius: Radius.elliptical(
            size.width * 0.01630435, size.height * 0.003682595),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path75.arcToPoint(Offset(size.width * 0.8967391, size.height * 0.2084174),
        radius: Radius.elliptical(
            size.width * 0.01902174, size.height * 0.004296361),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path75.arcToPoint(Offset(size.width * 0.9045031, size.height * 0.2084174),
        radius: Radius.elliptical(
            size.width * 0.01746894, size.height * 0.003945638),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path75.arcToPoint(Offset(size.width * 0.9111025, size.height * 0.2092942),
        radius: Radius.elliptical(
            size.width * 0.01436335, size.height * 0.003244191),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path75.arcToPoint(Offset(size.width * 0.9157609, size.height * 0.2106971),
        radius: Radius.elliptical(
            size.width * 0.01552795, size.height * 0.003507234),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path75.arcToPoint(Offset(size.width * 0.9157609, size.height * 0.2124507),
        radius: Radius.elliptical(
            size.width * 0.01746894, size.height * 0.003945638),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path75.arcToPoint(Offset(size.width * 0.9157609, size.height * 0.2136782),
        radius: Radius.elliptical(
            size.width * 0.02290373, size.height * 0.005173170),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path75.arcToPoint(Offset(size.width * 0.9134317, size.height * 0.2148181),
        radius: Radius.elliptical(
            size.width * 0.01203416, size.height * 0.002718106),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path75.arcToPoint(Offset(size.width * 0.9099379, size.height * 0.2156949),
        radius: Radius.elliptical(
            size.width * 0.01086957, size.height * 0.002455064),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path75.arcToPoint(Offset(size.width * 0.9056677, size.height * 0.2162210),
        radius: Radius.elliptical(
            size.width * 0.01513975, size.height * 0.003419553),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path75.close();
    path75.moveTo(size.width * 0.8804348, size.height * 0.2204296);
    path75.arcToPoint(Offset(size.width * 0.8804348, size.height * 0.2218325),
        radius: Radius.elliptical(
            size.width * 0.01591615, size.height * 0.003594915),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path75.arcToPoint(Offset(size.width * 0.8839286, size.height * 0.2229724),
        radius: Radius.elliptical(
            size.width * 0.01475155, size.height * 0.003331872),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path75.arcToPoint(Offset(size.width * 0.8889752, size.height * 0.2236738),
        radius: Radius.elliptical(
            size.width * 0.01591615, size.height * 0.003594915),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path75.arcToPoint(Offset(size.width * 0.8955745, size.height * 0.2236738),
        radius: Radius.elliptical(
            size.width * 0.01669255, size.height * 0.003770276),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path75.arcToPoint(Offset(size.width * 0.9021739, size.height * 0.2236738),
        radius: Radius.elliptical(
            size.width * 0.01824534, size.height * 0.004121000),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path75.arcToPoint(Offset(size.width * 0.9103261, size.height * 0.2218325),
        radius: Radius.elliptical(
            size.width * 0.01281056, size.height * 0.002893468),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path75.arcToPoint(Offset(size.width * 0.9103261, size.height * 0.2190267),
        radius: Radius.elliptical(
            size.width * 0.01708075, size.height * 0.003857957),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path75.arcToPoint(Offset(size.width * 0.9072205, size.height * 0.2179746),
        radius: Radius.elliptical(
            size.width * 0.01397516, size.height * 0.003156510),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path75.arcToPoint(Offset(size.width * 0.9021739, size.height * 0.2171854),
        radius: Radius.elliptical(
            size.width * 0.01475155, size.height * 0.003331872),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path75.arcToPoint(Offset(size.width * 0.8955745, size.height * 0.2171854),
        radius: Radius.elliptical(
            size.width * 0.01824534, size.height * 0.004121000),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path75.arcToPoint(Offset(size.width * 0.8889752, size.height * 0.2171854),
        radius: Radius.elliptical(
            size.width * 0.01669255, size.height * 0.003770276),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path75.arcToPoint(Offset(size.width * 0.8839286, size.height * 0.2179746),
        radius: Radius.elliptical(
            size.width * 0.01164596, size.height * 0.002630425),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path75.arcToPoint(Offset(size.width * 0.8804348, size.height * 0.2190267),
        radius: Radius.elliptical(
            size.width * 0.01048137, size.height * 0.002367383),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path75.arcToPoint(Offset(size.width * 0.8804348, size.height * 0.2204296),
        radius: Radius.elliptical(
            size.width * 0.01591615, size.height * 0.003594915),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path75.close();
    path75.moveTo(size.width * 0.8831522, size.height * 0.2124507);
    path75.arcToPoint(Offset(size.width * 0.8831522, size.height * 0.2136782),
        radius: Radius.elliptical(
            size.width * 0.01242236, size.height * 0.002805787),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path75.arcToPoint(Offset(size.width * 0.8901398, size.height * 0.2152565),
        radius: Radius.elliptical(
            size.width * 0.01164596, size.height * 0.002630425),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path75.lineTo(size.width * 0.8955745, size.height * 0.2152565);
    path75.lineTo(size.width * 0.9006211, size.height * 0.2152565);
    path75.arcToPoint(Offset(size.width * 0.9048913, size.height * 0.2146427),
        radius: Radius.elliptical(
            size.width * 0.01591615, size.height * 0.003594915),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path75.arcToPoint(Offset(size.width * 0.9079969, size.height * 0.2136782),
        radius: Radius.elliptical(
            size.width * 0.01708075, size.height * 0.003857957),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path75.arcToPoint(Offset(size.width * 0.9079969, size.height * 0.2124507),
        radius: Radius.elliptical(
            size.width * 0.02290373, size.height * 0.005173170),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path75.arcToPoint(Offset(size.width * 0.9079969, size.height * 0.2112231),
        radius: Radius.elliptical(
            size.width * 0.02639752, size.height * 0.005962297),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path75.arcToPoint(Offset(size.width * 0.9048913, size.height * 0.2102587),
        radius: Radius.elliptical(
            size.width * 0.01086957, size.height * 0.002455064),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path75.arcToPoint(Offset(size.width * 0.9006211, size.height * 0.2096449),
        radius: Radius.elliptical(
            size.width * 0.01164596, size.height * 0.002630425),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path75.arcToPoint(Offset(size.width * 0.8955745, size.height * 0.2096449),
        radius: Radius.elliptical(
            size.width * 0.01086957, size.height * 0.002455064),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path75.arcToPoint(Offset(size.width * 0.8901398, size.height * 0.2096449),
        radius: Radius.elliptical(
            size.width * 0.01242236, size.height * 0.002805787),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path75.arcToPoint(Offset(size.width * 0.8831522, size.height * 0.2112231),
        radius: Radius.elliptical(
            size.width * 0.01164596, size.height * 0.002630425),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path75.arcToPoint(Offset(size.width * 0.8831522, size.height * 0.2124507),
        radius: Radius.elliptical(
            size.width * 0.01358696, size.height * 0.003068829),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path75.close();

    Paint paint75fill = Paint()..style = PaintingStyle.fill;
    paint75fill.color = Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path75, paint75fill);

    Path path76 = Path();
    path76.moveTo(size.width * 0.9514752, size.height * 0.2079790);
    path76.arcToPoint(Offset(size.width * 0.9627329, size.height * 0.2087681),
        radius: Radius.elliptical(
            size.width * 0.01785714, size.height * 0.004033319),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path76.arcToPoint(Offset(size.width * 0.9704969, size.height * 0.2104340),
        radius: Radius.elliptical(
            size.width * 0.01979814, size.height * 0.004471723),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path76.arcToPoint(Offset(size.width * 0.9747671, size.height * 0.2132398),
        radius: Radius.elliptical(
            size.width * 0.04270186, size.height * 0.009644893),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path76.arcToPoint(Offset(size.width * 0.9747671, size.height * 0.2163963),
        radius: Radius.elliptical(
            size.width * 0.08501553, size.height * 0.01920210),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path76.arcToPoint(Offset(size.width * 0.9747671, size.height * 0.2196405),
        radius: Radius.elliptical(
            size.width * 0.08618012, size.height * 0.01946515),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path76.arcToPoint(Offset(size.width * 0.9704969, size.height * 0.2223586),
        radius: Radius.elliptical(
            size.width * 0.03881988, size.height * 0.008768084),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path76.arcToPoint(Offset(size.width * 0.9631211, size.height * 0.2243753),
        radius: Radius.elliptical(
            size.width * 0.02096273, size.height * 0.004734765),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path76.arcToPoint(Offset(size.width * 0.9518634, size.height * 0.2250767),
        radius: Radius.elliptical(
            size.width * 0.02018634, size.height * 0.004559404),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path76.arcToPoint(Offset(size.width * 0.9402174, size.height * 0.2243753),
        radius: Radius.elliptical(
            size.width * 0.02173913, size.height * 0.004910127),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path76.arcToPoint(Offset(size.width * 0.9328416, size.height * 0.2223586),
        radius: Radius.elliptical(
            size.width * 0.02406832, size.height * 0.005436212),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path76.arcToPoint(Offset(size.width * 0.9289596, size.height * 0.2196405),
        radius: Radius.elliptical(
            size.width * 0.03881988, size.height * 0.008768084),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path76.arcToPoint(Offset(size.width * 0.9289596, size.height * 0.2163963),
        radius: Radius.elliptical(
            size.width * 0.08618012, size.height * 0.01946515),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path76.arcToPoint(Offset(size.width * 0.9289596, size.height * 0.2132398),
        radius: Radius.elliptical(
            size.width * 0.08501553, size.height * 0.01920210),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path76.arcToPoint(Offset(size.width * 0.9316770, size.height * 0.2104340),
        radius: Radius.elliptical(
            size.width * 0.04231366, size.height * 0.009557212),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path76.arcToPoint(Offset(size.width * 0.9390528, size.height * 0.2085050),
        radius: Radius.elliptical(
            size.width * 0.02290373, size.height * 0.005173170),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path76.arcToPoint(Offset(size.width * 0.9514752, size.height * 0.2079790),
        radius: Radius.elliptical(
            size.width * 0.01902174, size.height * 0.004296361),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path76.close();
    path76.moveTo(size.width * 0.9514752, size.height * 0.2093819);
    path76.arcToPoint(Offset(size.width * 0.9433230, size.height * 0.2100833),
        radius: Radius.elliptical(
            size.width * 0.01242236, size.height * 0.002805787),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path76.arcToPoint(Offset(size.width * 0.9382764, size.height * 0.2118369),
        radius: Radius.elliptical(
            size.width * 0.02251553, size.height * 0.005085489),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path76.arcToPoint(Offset(size.width * 0.9355590, size.height * 0.2141166),
        radius: Radius.elliptical(
            size.width * 0.04309006, size.height * 0.009732573),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path76.cubicTo(
        size.width * 0.9355590,
        size.height * 0.2149934,
        size.width * 0.9355590,
        size.height * 0.2158702,
        size.width * 0.9355590,
        size.height * 0.2166594);
    path76.arcToPoint(Offset(size.width * 0.9355590, size.height * 0.2192021),
        radius:
            Radius.elliptical(size.width * 0.1098602, size.height * 0.02481368),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path76.arcToPoint(Offset(size.width * 0.9382764, size.height * 0.2215695),
        radius: Radius.elliptical(
            size.width * 0.04153727, size.height * 0.009381850),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path76.arcToPoint(Offset(size.width * 0.9433230, size.height * 0.2232354),
        radius: Radius.elliptical(
            size.width * 0.02057453, size.height * 0.004647085),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path76.arcToPoint(Offset(size.width * 0.9514752, size.height * 0.2239369),
        radius: Radius.elliptical(
            size.width * 0.01242236, size.height * 0.002805787),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path76.arcToPoint(Offset(size.width * 0.9592391, size.height * 0.2232354),
        radius: Radius.elliptical(
            size.width * 0.01086957, size.height * 0.002455064),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path76.arcToPoint(Offset(size.width * 0.9646739, size.height * 0.2215695),
        radius: Radius.elliptical(
            size.width * 0.02135093, size.height * 0.004822446),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path76.arcToPoint(Offset(size.width * 0.9670031, size.height * 0.2192021),
        radius: Radius.elliptical(
            size.width * 0.04153727, size.height * 0.009381850),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path76.arcToPoint(Offset(size.width * 0.9670031, size.height * 0.2166594),
        radius: Radius.elliptical(
            size.width * 0.05512422, size.height * 0.01245068),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path76.arcToPoint(Offset(size.width * 0.9670031, size.height * 0.2141166),
        radius: Radius.elliptical(
            size.width * 0.05667702, size.height * 0.01280140),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path76.arcToPoint(Offset(size.width * 0.9646739, size.height * 0.2118369),
        radius: Radius.elliptical(
            size.width * 0.04270186, size.height * 0.009644893),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path76.arcToPoint(Offset(size.width * 0.9592391, size.height * 0.2100833),
        radius: Radius.elliptical(
            size.width * 0.02329193, size.height * 0.005260851),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path76.arcToPoint(Offset(size.width * 0.9514752, size.height * 0.2093819),
        radius: Radius.elliptical(
            size.width * 0.01086957, size.height * 0.002455064),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path76.close();

    Paint paint76fill = Paint()..style = PaintingStyle.fill;
    paint76fill.color = Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path76, paint76fill);

    Path path77 = Path();
    path77.moveTo(size.width * 0.9060559, size.height * 0.1470408);
    path77.lineTo(size.width * 0.9060559, size.height * 0.1470408);
    path77.arcToPoint(Offset(size.width * 0.9013975, size.height * 0.1470408),
        radius: Radius.elliptical(
            size.width * 0.01281056, size.height * 0.002893468),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path77.arcToPoint(Offset(size.width * 0.8955745, size.height * 0.1470408),
        radius: Radius.elliptical(
            size.width * 0.01708075, size.height * 0.003857957),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path77.arcToPoint(Offset(size.width * 0.8866460, size.height * 0.1470408),
        radius: Radius.elliptical(
            size.width * 0.02173913, size.height * 0.004910127),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path77.arcToPoint(Offset(size.width * 0.8796584, size.height * 0.1459886),
        radius: Radius.elliptical(
            size.width * 0.02212733, size.height * 0.004997808),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path77.arcToPoint(Offset(size.width * 0.8746118, size.height * 0.1444103),
        radius: Radius.elliptical(
            size.width * 0.01785714, size.height * 0.004033319),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path77.arcToPoint(Offset(size.width * 0.8746118, size.height * 0.1423060),
        radius: Radius.elliptical(
            size.width * 0.03338509, size.height * 0.007540552),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path77.arcToPoint(Offset(size.width * 0.8765528, size.height * 0.1402017),
        radius: Radius.elliptical(
            size.width * 0.02329193, size.height * 0.005260851),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path77.arcToPoint(Offset(size.width * 0.8812112, size.height * 0.1385357),
        radius: Radius.elliptical(
            size.width * 0.02406832, size.height * 0.005436212),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path77.arcToPoint(Offset(size.width * 0.8889752, size.height * 0.1374836),
        radius: Radius.elliptical(
            size.width * 0.02600932, size.height * 0.005874616),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path77.arcToPoint(Offset(size.width * 0.8982919, size.height * 0.1374836),
        radius: Radius.elliptical(
            size.width * 0.02484472, size.height * 0.005611574),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path77.arcToPoint(Offset(size.width * 0.9079969, size.height * 0.1374836),
        radius: Radius.elliptical(
            size.width * 0.02678571, size.height * 0.006049978),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path77.arcToPoint(Offset(size.width * 0.9153727, size.height * 0.1385357),
        radius: Radius.elliptical(
            size.width * 0.02406832, size.height * 0.005436212),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path77.arcToPoint(Offset(size.width * 0.9204193, size.height * 0.1402017),
        radius: Radius.elliptical(
            size.width * 0.01940994, size.height * 0.004384042),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path77.arcToPoint(Offset(size.width * 0.9204193, size.height * 0.1423060),
        radius: Radius.elliptical(
            size.width * 0.02329193, size.height * 0.005260851),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path77.arcToPoint(Offset(size.width * 0.9204193, size.height * 0.1446734),
        radius: Radius.elliptical(
            size.width * 0.02950311, size.height * 0.006663744),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path77.lineTo(size.width * 0.9157609, size.height * 0.1467777);
    path77.lineTo(size.width * 0.8955745, size.height * 0.1540552);
    path77.lineTo(size.width * 0.8870342, size.height * 0.1540552);
    path77.close();
    path77.moveTo(size.width * 0.9134317, size.height * 0.1424814);
    path77.arcToPoint(Offset(size.width * 0.9134317, size.height * 0.1409908),
        radius: Radius.elliptical(
            size.width * 0.01281056, size.height * 0.002893468),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path77.arcToPoint(Offset(size.width * 0.9103261, size.height * 0.1397633),
        radius: Radius.elliptical(
            size.width * 0.01513975, size.height * 0.003419553),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path77.arcToPoint(Offset(size.width * 0.9048913, size.height * 0.1389741),
        radius: Radius.elliptical(
            size.width * 0.01319876, size.height * 0.002981149),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path77.arcToPoint(Offset(size.width * 0.8982919, size.height * 0.1389741),
        radius: Radius.elliptical(
            size.width * 0.01669255, size.height * 0.003770276),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path77.arcToPoint(Offset(size.width * 0.8916925, size.height * 0.1389741),
        radius: Radius.elliptical(
            size.width * 0.01824534, size.height * 0.004121000),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path77.arcToPoint(Offset(size.width * 0.8866460, size.height * 0.1397633),
        radius: Radius.elliptical(
            size.width * 0.01475155, size.height * 0.003331872),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path77.arcToPoint(Offset(size.width * 0.8831522, size.height * 0.1409908),
        radius: Radius.elliptical(
            size.width * 0.01630435, size.height * 0.003682595),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path77.arcToPoint(Offset(size.width * 0.8831522, size.height * 0.1439719),
        radius: Radius.elliptical(
            size.width * 0.01940994, size.height * 0.004384042),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path77.arcToPoint(Offset(size.width * 0.8866460, size.height * 0.1451995),
        radius: Radius.elliptical(
            size.width * 0.01630435, size.height * 0.003682595),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path77.lineTo(size.width * 0.8916925, size.height * 0.1459886);
    path77.arcToPoint(Offset(size.width * 0.8982919, size.height * 0.1459886),
        radius: Radius.elliptical(
            size.width * 0.01824534, size.height * 0.004121000),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path77.arcToPoint(Offset(size.width * 0.9052795, size.height * 0.1459886),
        radius: Radius.elliptical(
            size.width * 0.01863354, size.height * 0.004208680),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path77.lineTo(size.width * 0.9103261, size.height * 0.1451995);
    path77.arcToPoint(Offset(size.width * 0.9138199, size.height * 0.1439719),
        radius: Radius.elliptical(
            size.width * 0.01630435, size.height * 0.003682595),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path77.arcToPoint(Offset(size.width * 0.9134317, size.height * 0.1424814),
        radius: Radius.elliptical(
            size.width * 0.01824534, size.height * 0.004121000),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path77.close();

    Paint paint77fill = Paint()..style = PaintingStyle.fill;
    paint77fill.color = Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path77, paint77fill);

    Path path78 = Path();
    path78.moveTo(size.width * 0.9514752, size.height * 0.1373082);
    path78.arcToPoint(Offset(size.width * 0.9627329, size.height * 0.1380096),
        radius: Radius.elliptical(
            size.width * 0.01669255, size.height * 0.003770276),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path78.arcToPoint(Offset(size.width * 0.9704969, size.height * 0.1402893),
        radius: Radius.elliptical(
            size.width * 0.02329193, size.height * 0.005260851),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path78.arcToPoint(Offset(size.width * 0.9747671, size.height * 0.1430951),
        radius: Radius.elliptical(
            size.width * 0.03881988, size.height * 0.008768084),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path78.arcToPoint(Offset(size.width * 0.9747671, size.height * 0.1494082),
        radius: Radius.elliptical(
            size.width * 0.08462733, size.height * 0.01911442),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path78.arcToPoint(Offset(size.width * 0.9704969, size.height * 0.1522139),
        radius: Radius.elliptical(
            size.width * 0.03881988, size.height * 0.008768084),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path78.arcToPoint(Offset(size.width * 0.9631211, size.height * 0.1541429),
        radius: Radius.elliptical(
            size.width * 0.01979814, size.height * 0.004471723),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path78.arcToPoint(Offset(size.width * 0.9518634, size.height * 0.1549320),
        radius: Radius.elliptical(
            size.width * 0.01708075, size.height * 0.003857957),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path78.arcToPoint(Offset(size.width * 0.9402174, size.height * 0.1541429),
        radius: Radius.elliptical(
            size.width * 0.01902174, size.height * 0.004296361),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path78.arcToPoint(Offset(size.width * 0.9328416, size.height * 0.1522139),
        radius: Radius.elliptical(
            size.width * 0.02290373, size.height * 0.005173170),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path78.arcToPoint(Offset(size.width * 0.9289596, size.height * 0.1494082),
        radius: Radius.elliptical(
            size.width * 0.05201863, size.height * 0.01174923),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path78.arcToPoint(Offset(size.width * 0.9289596, size.height * 0.1430951),
        radius: Radius.elliptical(
            size.width * 0.08423913, size.height * 0.01902674),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path78.arcToPoint(Offset(size.width * 0.9316770, size.height * 0.1402893),
        radius: Radius.elliptical(
            size.width * 0.05201863, size.height * 0.01174923),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path78.arcToPoint(Offset(size.width * 0.9390528, size.height * 0.1382727),
        radius: Radius.elliptical(
            size.width * 0.02756211, size.height * 0.006225340),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path78.arcToPoint(Offset(size.width * 0.9514752, size.height * 0.1373082),
        radius: Radius.elliptical(
            size.width * 0.01863354, size.height * 0.004208680),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path78.close();
    path78.moveTo(size.width * 0.9514752, size.height * 0.1387111);
    path78.arcToPoint(Offset(size.width * 0.9433230, size.height * 0.1394125),
        radius: Radius.elliptical(
            size.width * 0.01086957, size.height * 0.002455064),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path78.arcToPoint(Offset(size.width * 0.9382764, size.height * 0.1410785),
        radius: Radius.elliptical(
            size.width * 0.02057453, size.height * 0.004647085),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path78.arcToPoint(Offset(size.width * 0.9355590, size.height * 0.1434459),
        radius: Radius.elliptical(
            size.width * 0.06832298, size.height * 0.01543183),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path78.cubicTo(
        size.width * 0.9355590,
        size.height * 0.1443227,
        size.width * 0.9355590,
        size.height * 0.1451995,
        size.width * 0.9355590,
        size.height * 0.1459886);
    path78.cubicTo(
        size.width * 0.9355590,
        size.height * 0.1467777,
        size.width * 0.9355590,
        size.height * 0.1476545,
        size.width * 0.9355590,
        size.height * 0.1485313);
    path78.arcToPoint(Offset(size.width * 0.9382764, size.height * 0.1508110),
        radius: Radius.elliptical(
            size.width * 0.05357143, size.height * 0.01209996),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path78.arcToPoint(Offset(size.width * 0.9433230, size.height * 0.1525647),
        radius: Radius.elliptical(
            size.width * 0.02251553, size.height * 0.005085489),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path78.arcToPoint(Offset(size.width * 0.9596273, size.height * 0.1525647),
        radius: Radius.elliptical(
            size.width * 0.01358696, size.height * 0.003068829),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path78.arcToPoint(Offset(size.width * 0.9646739, size.height * 0.1508110),
        radius: Radius.elliptical(
            size.width * 0.02989130, size.height * 0.006751425),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path78.arcToPoint(Offset(size.width * 0.9673913, size.height * 0.1485313),
        radius: Radius.elliptical(
            size.width * 0.05357143, size.height * 0.01209996),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path78.cubicTo(
        size.width * 0.9673913,
        size.height * 0.1476545,
        size.width * 0.9673913,
        size.height * 0.1467777,
        size.width * 0.9673913,
        size.height * 0.1459886);
    path78.cubicTo(
        size.width * 0.9673913,
        size.height * 0.1451995,
        size.width * 0.9673913,
        size.height * 0.1443227,
        size.width * 0.9673913,
        size.height * 0.1434459);
    path78.arcToPoint(Offset(size.width * 0.9646739, size.height * 0.1410785),
        radius: Radius.elliptical(
            size.width * 0.06832298, size.height * 0.01543183),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path78.arcToPoint(Offset(size.width * 0.9596273, size.height * 0.1394125),
        radius: Radius.elliptical(
            size.width * 0.02717391, size.height * 0.006137659),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path78.arcToPoint(Offset(size.width * 0.9514752, size.height * 0.1387111),
        radius: Radius.elliptical(
            size.width * 0.01086957, size.height * 0.002455064),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path78.close();

    Paint paint78fill = Paint()..style = PaintingStyle.fill;
    paint78fill.color = Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path78, paint78fill);

    Path path79 = Path();
    path79.moveTo(size.width * 0.8734472, size.height * 0.08355984);
    path79.lineTo(size.width * 0.8660714, size.height * 0.08355984);
    path79.lineTo(size.width * 0.8660714, size.height * 0.06909250);
    path79.lineTo(size.width * 0.8540373, size.height * 0.07163525);
    path79.lineTo(size.width * 0.8482143, size.height * 0.07014467);
    path79.lineTo(size.width * 0.8668478, size.height * 0.06663744);
    path79.lineTo(size.width * 0.8734472, size.height * 0.06663744);
    path79.close();

    Paint paint79fill = Paint()..style = PaintingStyle.fill;
    paint79fill.color = Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path79, paint79fill);

    Path path80 = Path();
    path80.moveTo(size.width * 0.9211957, size.height * 0.06654976);
    path80.arcToPoint(Offset(size.width * 0.9328416, size.height * 0.06733889),
        radius: Radius.elliptical(
            size.width * 0.01902174, size.height * 0.004296361),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path80.arcToPoint(Offset(size.width * 0.9402174, size.height * 0.06935555),
        radius: Radius.elliptical(
            size.width * 0.02406832, size.height * 0.005436212),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path80.arcToPoint(Offset(size.width * 0.9440994, size.height * 0.07207365),
        radius: Radius.elliptical(
            size.width * 0.03881988, size.height * 0.008768084),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path80.arcToPoint(Offset(size.width * 0.9440994, size.height * 0.07531784),
        radius: Radius.elliptical(
            size.width * 0.08618012, size.height * 0.01946515),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path80.arcToPoint(Offset(size.width * 0.9440994, size.height * 0.07847435),
        radius: Radius.elliptical(
            size.width * 0.08501553, size.height * 0.01920210),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path80.arcToPoint(Offset(size.width * 0.9402174, size.height * 0.08128014),
        radius: Radius.elliptical(
            size.width * 0.04231366, size.height * 0.009557212),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path80.arcToPoint(Offset(size.width * 0.9328416, size.height * 0.08320912),
        radius: Radius.elliptical(
            size.width * 0.02600932, size.height * 0.005874616),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path80.arcToPoint(Offset(size.width * 0.9211957, size.height * 0.08399825),
        radius: Radius.elliptical(
            size.width * 0.01902174, size.height * 0.004296361),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path80.arcToPoint(Offset(size.width * 0.9099379, size.height * 0.08320912),
        radius: Radius.elliptical(
            size.width * 0.01863354, size.height * 0.004208680),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path80.arcToPoint(Offset(size.width * 0.9025621, size.height * 0.08128014),
        radius: Radius.elliptical(
            size.width * 0.02600932, size.height * 0.005874616),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path80.arcToPoint(Offset(size.width * 0.8986801, size.height * 0.07847435),
        radius: Radius.elliptical(
            size.width * 0.04231366, size.height * 0.009557212),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path80.arcToPoint(Offset(size.width * 0.8986801, size.height * 0.07531784),
        radius: Radius.elliptical(
            size.width * 0.08501553, size.height * 0.01920210),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path80.arcToPoint(Offset(size.width * 0.8986801, size.height * 0.07207365),
        radius: Radius.elliptical(
            size.width * 0.08618012, size.height * 0.01946515),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path80.arcToPoint(Offset(size.width * 0.9025621, size.height * 0.06935555),
        radius: Radius.elliptical(
            size.width * 0.03881988, size.height * 0.008768084),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path80.arcToPoint(Offset(size.width * 0.9099379, size.height * 0.06733889),
        radius: Radius.elliptical(
            size.width * 0.02406832, size.height * 0.005436212),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path80.arcToPoint(Offset(size.width * 0.9211957, size.height * 0.06654976),
        radius: Radius.elliptical(
            size.width * 0.01863354, size.height * 0.004208680),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path80.close();
    path80.moveTo(size.width * 0.9211957, size.height * 0.06804033);
    path80.arcToPoint(Offset(size.width * 0.9134317, size.height * 0.06865410),
        radius: Radius.elliptical(
            size.width * 0.01048137, size.height * 0.002367383),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path80.arcToPoint(Offset(size.width * 0.9083851, size.height * 0.07040772),
        radius: Radius.elliptical(
            size.width * 0.01785714, size.height * 0.004033319),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path80.arcToPoint(Offset(size.width * 0.9056677, size.height * 0.07277510),
        radius: Radius.elliptical(
            size.width * 0.02989130, size.height * 0.006751425),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path80.arcToPoint(Offset(size.width * 0.9056677, size.height * 0.07531784),
        radius:
            Radius.elliptical(size.width * 0.1098602, size.height * 0.02481368),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path80.arcToPoint(Offset(size.width * 0.9056677, size.height * 0.07777291),
        radius:
            Radius.elliptical(size.width * 0.1024845, size.height * 0.02314774),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path80.arcToPoint(Offset(size.width * 0.9083851, size.height * 0.08014029),
        radius: Radius.elliptical(
            size.width * 0.02989130, size.height * 0.006751425),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path80.arcToPoint(Offset(size.width * 0.9134317, size.height * 0.08180623),
        radius: Radius.elliptical(
            size.width * 0.01475155, size.height * 0.003331872),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path80.arcToPoint(Offset(size.width * 0.9211957, size.height * 0.08250767),
        radius: Radius.elliptical(
            size.width * 0.009316770, size.height * 0.002104340),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path80.arcToPoint(Offset(size.width * 0.9293478, size.height * 0.08180623),
        radius: Radius.elliptical(
            size.width * 0.009704969, size.height * 0.002192021),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path80.arcToPoint(Offset(size.width * 0.9343944, size.height * 0.08014029),
        radius: Radius.elliptical(
            size.width * 0.01475155, size.height * 0.003331872),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path80.arcToPoint(Offset(size.width * 0.9371118, size.height * 0.07777291),
        radius: Radius.elliptical(
            size.width * 0.04153727, size.height * 0.009381850),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path80.arcToPoint(Offset(size.width * 0.9371118, size.height * 0.07531784),
        radius:
            Radius.elliptical(size.width * 0.1024845, size.height * 0.02314774),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path80.arcToPoint(Offset(size.width * 0.9371118, size.height * 0.07277510),
        radius:
            Radius.elliptical(size.width * 0.1098602, size.height * 0.02481368),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path80.arcToPoint(Offset(size.width * 0.9343944, size.height * 0.07014467),
        radius: Radius.elliptical(
            size.width * 0.04153727, size.height * 0.009381850),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path80.arcToPoint(Offset(size.width * 0.9293478, size.height * 0.06839106),
        radius: Radius.elliptical(
            size.width * 0.01785714, size.height * 0.004033319),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path80.arcToPoint(Offset(size.width * 0.9211957, size.height * 0.06804033),
        radius: Radius.elliptical(
            size.width * 0.01086957, size.height * 0.002455064),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path80.close();

    Paint paint80fill = Paint()..style = PaintingStyle.fill;
    paint80fill.color = Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path80, paint80fill);

    Path path81 = Path();
    path81.moveTo(size.width * 0.9763199, size.height * 0.06654976);
    path81.arcToPoint(Offset(size.width * 0.9875776, size.height * 0.06733889),
        radius: Radius.elliptical(
            size.width * 0.01863354, size.height * 0.004208680),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path81.arcToPoint(Offset(size.width * 0.9949534, size.height * 0.06935555),
        radius: Radius.elliptical(
            size.width * 0.02406832, size.height * 0.005436212),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path81.arcToPoint(Offset(size.width * 0.9988354, size.height * 0.07207365),
        radius: Radius.elliptical(
            size.width * 0.03881988, size.height * 0.008768084),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path81.arcToPoint(Offset(size.width * 0.9988354, size.height * 0.07531784),
        radius: Radius.elliptical(
            size.width * 0.08618012, size.height * 0.01946515),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path81.arcToPoint(Offset(size.width * 0.9988354, size.height * 0.07847435),
        radius: Radius.elliptical(
            size.width * 0.08501553, size.height * 0.01920210),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path81.arcToPoint(Offset(size.width * 0.9949534, size.height * 0.08128014),
        radius: Radius.elliptical(
            size.width * 0.04231366, size.height * 0.009557212),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path81.arcToPoint(Offset(size.width * 0.9875776, size.height * 0.08320912),
        radius: Radius.elliptical(
            size.width * 0.02600932, size.height * 0.005874616),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path81.arcToPoint(Offset(size.width * 0.9763199, size.height * 0.08399825),
        radius: Radius.elliptical(
            size.width * 0.01863354, size.height * 0.004208680),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path81.arcToPoint(Offset(size.width * 0.9646739, size.height * 0.08320912),
        radius: Radius.elliptical(
            size.width * 0.01902174, size.height * 0.004296361),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path81.arcToPoint(Offset(size.width * 0.9572981, size.height * 0.08128014),
        radius: Radius.elliptical(
            size.width * 0.02600932, size.height * 0.005874616),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path81.arcToPoint(Offset(size.width * 0.9534161, size.height * 0.07847435),
        radius: Radius.elliptical(
            size.width * 0.04231366, size.height * 0.009557212),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path81.arcToPoint(Offset(size.width * 0.9534161, size.height * 0.07531784),
        radius: Radius.elliptical(
            size.width * 0.08501553, size.height * 0.01920210),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path81.arcToPoint(Offset(size.width * 0.9534161, size.height * 0.07207365),
        radius: Radius.elliptical(
            size.width * 0.08618012, size.height * 0.01946515),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path81.arcToPoint(Offset(size.width * 0.9572981, size.height * 0.06935555),
        radius: Radius.elliptical(
            size.width * 0.03881988, size.height * 0.008768084),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path81.arcToPoint(Offset(size.width * 0.9646739, size.height * 0.06733889),
        radius: Radius.elliptical(
            size.width * 0.02406832, size.height * 0.005436212),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path81.arcToPoint(Offset(size.width * 0.9763199, size.height * 0.06654976),
        radius: Radius.elliptical(
            size.width * 0.01902174, size.height * 0.004296361),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path81.close();
    path81.moveTo(size.width * 0.9763199, size.height * 0.06804033);
    path81.arcToPoint(Offset(size.width * 0.9681677, size.height * 0.06865410),
        radius: Radius.elliptical(
            size.width * 0.01086957, size.height * 0.002455064),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path81.arcToPoint(Offset(size.width * 0.9631211, size.height * 0.07040772),
        radius: Radius.elliptical(
            size.width * 0.01785714, size.height * 0.004033319),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path81.arcToPoint(Offset(size.width * 0.9604037, size.height * 0.07277510),
        radius: Radius.elliptical(
            size.width * 0.04153727, size.height * 0.009381850),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path81.arcToPoint(Offset(size.width * 0.9604037, size.height * 0.07531784),
        radius:
            Radius.elliptical(size.width * 0.1098602, size.height * 0.02481368),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path81.arcToPoint(Offset(size.width * 0.9604037, size.height * 0.07777291),
        radius:
            Radius.elliptical(size.width * 0.1024845, size.height * 0.02314774),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path81.arcToPoint(Offset(size.width * 0.9631211, size.height * 0.08014029),
        radius: Radius.elliptical(
            size.width * 0.04153727, size.height * 0.009381850),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path81.arcToPoint(Offset(size.width * 0.9681677, size.height * 0.08180623),
        radius: Radius.elliptical(
            size.width * 0.01475155, size.height * 0.003331872),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path81.arcToPoint(Offset(size.width * 0.9763199, size.height * 0.08250767),
        radius: Radius.elliptical(
            size.width * 0.009704969, size.height * 0.002192021),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path81.arcToPoint(Offset(size.width * 0.9840839, size.height * 0.08180623),
        radius: Radius.elliptical(
            size.width * 0.009316770, size.height * 0.002104340),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path81.arcToPoint(Offset(size.width * 0.9891304, size.height * 0.08014029),
        radius: Radius.elliptical(
            size.width * 0.01475155, size.height * 0.003331872),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path81.arcToPoint(Offset(size.width * 0.9918478, size.height * 0.07777291),
        radius: Radius.elliptical(
            size.width * 0.02989130, size.height * 0.006751425),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path81.arcToPoint(Offset(size.width * 0.9918478, size.height * 0.07531784),
        radius: Radius.elliptical(
            size.width * 0.05124224, size.height * 0.01157387),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path81.arcToPoint(Offset(size.width * 0.9918478, size.height * 0.07277510),
        radius: Radius.elliptical(
            size.width * 0.05512422, size.height * 0.01245068),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path81.arcToPoint(Offset(size.width * 0.9891304, size.height * 0.07014467),
        radius: Radius.elliptical(
            size.width * 0.02989130, size.height * 0.006751425),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path81.arcToPoint(Offset(size.width * 0.9840839, size.height * 0.06839106),
        radius: Radius.elliptical(
            size.width * 0.01785714, size.height * 0.004033319),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path81.arcToPoint(Offset(size.width * 0.9763199, size.height * 0.06804033),
        radius: Radius.elliptical(
            size.width * 0.01048137, size.height * 0.002367383),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path81.close();

    Paint paint81fill = Paint()..style = PaintingStyle.fill;
    paint81fill.color = Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path81, paint81fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
