import 'package:flutter/material.dart';

Widget actuatorsIconColor({@required double xwidth}) {
  return CustomPaint(
    size: Size(xwidth, (xwidth * 1.6257246865309423).toDouble()),
    painter: ActuatorsIconColor(),
  );
}

class ActuatorsIconColor extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.6224115, size.height * 0.6941489);
    path0.lineTo(size.width * 0.6215303, size.height * 0.8918440);
    path0.cubicTo(
        size.width * 0.6215303,
        size.height * 0.9195035,
        size.width * 0.5912763,
        size.height * 0.9470745,
        size.width * 0.5312087,
        size.height * 0.9681738);
    path0.cubicTo(
        size.width * 0.4103393,
        size.height * 1.010638,
        size.width * 0.2135409,
        size.height * 1.010638,
        size.width * 0.09164341,
        size.height * 0.9681738);
    path0.cubicTo(size.width * 0.03040094, size.height * 0.9468085, 0,
        size.height * 0.9187943, 0, size.height * 0.8907801);
    path0.lineTo(size.width * 0.0008811867, size.height * 0.6930851);
    path0.cubicTo(
        size.width * 0.0008811867,
        size.height * 0.7210993,
        size.width * 0.03142899,
        size.height * 0.7491135,
        size.width * 0.09267146,
        size.height * 0.7704787);
    path0.cubicTo(
        size.width * 0.2144221,
        size.height * 0.8128546,
        size.width * 0.4112204,
        size.height * 0.8128546,
        size.width * 0.5322367,
        size.height * 0.7704787);
    path0.cubicTo(
        size.width * 0.5921574,
        size.height * 0.7493794,
        size.width * 0.6222646,
        size.height * 0.7218085,
        size.width * 0.6224115,
        size.height * 0.6941489);
    path0.close();

    Paint paint0fill = Paint()..style = PaintingStyle.fill;
    paint0fill.color = Color(0xff117488).withOpacity(1.0);
    canvas.drawPath(path0, paint0fill);

    Path path1 = Path();
    path1.moveTo(size.width * 0.6224115, size.height * 0.6941489);
    path1.lineTo(size.width * 0.6215303, size.height * 0.8918440);
    path1.cubicTo(
        size.width * 0.6215303,
        size.height * 0.9195035,
        size.width * 0.5912763,
        size.height * 0.9470745,
        size.width * 0.5312087,
        size.height * 0.9681738);
    path1.cubicTo(
        size.width * 0.4103393,
        size.height * 1.010638,
        size.width * 0.2135409,
        size.height * 1.010638,
        size.width * 0.09164341,
        size.height * 0.9681738);
    path1.cubicTo(size.width * 0.03040094, size.height * 0.9468085, 0,
        size.height * 0.9187943, 0, size.height * 0.8907801);
    path1.lineTo(size.width * 0.0008811867, size.height * 0.6930851);
    path1.cubicTo(
        size.width * 0.0008811867,
        size.height * 0.7210993,
        size.width * 0.03142899,
        size.height * 0.7491135,
        size.width * 0.09267146,
        size.height * 0.7704787);
    path1.cubicTo(
        size.width * 0.2144221,
        size.height * 0.8128546,
        size.width * 0.4112204,
        size.height * 0.8128546,
        size.width * 0.5322367,
        size.height * 0.7704787);
    path1.cubicTo(
        size.width * 0.5921574,
        size.height * 0.7493794,
        size.width * 0.6222646,
        size.height * 0.7218085,
        size.width * 0.6224115,
        size.height * 0.6941489);
    path1.close();

    Paint paint1fill = Paint()..style = PaintingStyle.fill;
    paint1fill.color = Color(0xff117488).withOpacity(1.0);
    canvas.drawPath(path1, paint1fill);

    Path path2 = Path();
    path2.moveTo(size.width * 0.5306212, size.height * 0.6167553);
    path2.cubicTo(
        size.width * 0.6523719,
        size.height * 0.6592199,
        size.width * 0.6531062,
        size.height * 0.7280142,
        size.width * 0.5322367,
        size.height * 0.7704787);
    path2.cubicTo(
        size.width * 0.4113673,
        size.height * 0.8129433,
        size.width * 0.2144221,
        size.height * 0.8128546,
        size.width * 0.09267146,
        size.height * 0.7704787);
    path2.cubicTo(
        size.width * -0.02907916,
        size.height * 0.7281028,
        size.width * -0.02937289,
        size.height * 0.6592199,
        size.width * 0.09120282,
        size.height * 0.6167553);
    path2.cubicTo(
        size.width * 0.2117785,
        size.height * 0.5742908,
        size.width * 0.4088706,
        size.height * 0.5743794,
        size.width * 0.5306212,
        size.height * 0.6167553);
    path2.close();

    Paint paint2fill = Paint()..style = PaintingStyle.fill;
    paint2fill.color = Color(0xff30acc5).withOpacity(1.0);
    canvas.drawPath(path2, paint2fill);

    Path path3 = Path();
    path3.moveTo(size.width * 0.8541636, size.height * 0.2727837);
    path3.lineTo(size.width * 0.8224409, size.height * 0.2618794);
    path3.arcToPoint(Offset(size.width * 0.8142165, size.height * 0.2509752),
        radius: Radius.elliptical(
            size.width * 0.01967984, size.height * 0.01187943),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path3.lineTo(size.width * 0.8453517, size.height * 0.2618794);
    path3.arcToPoint(Offset(size.width * 0.8541636, size.height * 0.2727837),
        radius: Radius.elliptical(
            size.width * 0.01967984, size.height * 0.01187943),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path3.close();

    Paint paint3fill = Paint()..style = PaintingStyle.fill;
    paint3fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path3, paint3fill);

    Path path4 = Path();
    path4.moveTo(size.width * 0.8541636, size.height * 0.2727837);
    path4.lineTo(size.width * 0.8224409, size.height * 0.2618794);
    path4.arcToPoint(Offset(size.width * 0.8142165, size.height * 0.2509752),
        radius: Radius.elliptical(
            size.width * 0.01967984, size.height * 0.01187943),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path4.lineTo(size.width * 0.8453517, size.height * 0.2618794);
    path4.arcToPoint(Offset(size.width * 0.8535761, size.height * 0.2727837),
        radius: Radius.elliptical(
            size.width * 0.01967984, size.height * 0.01187943),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path4.close();

    Paint paint4fill = Paint()..style = PaintingStyle.fill;
    paint4fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path4, paint4fill);

    Path path5 = Path();
    path5.moveTo(size.width * 0.8459392, size.height * 0.2618794);
    path5.lineTo(size.width * 0.8148039, size.height * 0.2509752);
    path5.lineTo(size.width * 0.8137759, size.height * 0.03173759);
    path5.lineTo(size.width * 0.8449111, size.height * 0.04264184);
    path5.lineTo(size.width * 0.8459392, size.height * 0.2618794);
    path5.close();

    Paint paint5fill = Paint()..style = PaintingStyle.fill;
    paint5fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path5, paint5fill);

    Path path6 = Path();
    path6.moveTo(size.width * 0.8619474, size.height * 0.001152482);
    path6.lineTo(size.width * 0.8930827, size.height * 0.01205674);
    path6.arcToPoint(Offset(size.width * 0.8729623, size.height * 0.01320922),
        radius: Radius.elliptical(
            size.width * 0.02041416, size.height * 0.01232270),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path6.lineTo(size.width * 0.8418270, size.height * 0.002304965);
    path6.arcToPoint(Offset(size.width * 0.8619474, size.height * 0.001152482),
        radius: Radius.elliptical(
            size.width * 0.02041416, size.height * 0.01232270),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path6.close();

    Paint paint6fill = Paint()..style = PaintingStyle.fill;
    paint6fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path6, paint6fill);

    Path path7 = Path();
    path7.moveTo(size.width * 0.8729623, size.height * 0.01320922);
    path7.lineTo(size.width * 0.8418270, size.height * 0.002304965);
    path7.arcToPoint(Offset(size.width * 0.8478484, size.height * 0.0007092199),
        radius: Radius.elliptical(
            size.width * 0.03010721, size.height * 0.01817376),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path7.lineTo(size.width * 0.8789837, size.height * 0.01161348);
    path7.arcToPoint(Offset(size.width * 0.8729623, size.height * 0.01320922),
        radius: Radius.elliptical(
            size.width * 0.03010721, size.height * 0.01817376),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path7.close();

    Paint paint7fill = Paint()..style = PaintingStyle.fill;
    paint7fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path7, paint7fill);

    Path path8 = Path();
    path8.moveTo(size.width * 0.8789837, size.height * 0.01161348);
    path8.lineTo(size.width * 0.8478484, size.height * 0.0007092199);
    path8.arcToPoint(Offset(size.width * 0.8568072, 0),
        radius: Radius.elliptical(
            size.width * 0.01967984, size.height * 0.01187943),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path8.lineTo(size.width * 0.8879424, size.height * 0.01090426);
    path8.arcToPoint(Offset(size.width * 0.8789837, size.height * 0.01152482),
        radius: Radius.elliptical(
            size.width * 0.02158907, size.height * 0.01303191),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path8.close();

    Paint paint8fill = Paint()..style = PaintingStyle.fill;
    paint8fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path8, paint8fill);

    Path path9 = Path();
    path9.moveTo(size.width * 0.8879424, size.height * 0.01099291);
    path9.lineTo(size.width * 0.8568072, 0);
    path9.arcToPoint(Offset(size.width * 0.8619474, size.height * 0.001063830),
        radius: Radius.elliptical(
            size.width * 0.01468644, size.height * 0.008865248),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path9.lineTo(size.width * 0.8930827, size.height * 0.01196809);
    path9.arcToPoint(Offset(size.width * 0.8879424, size.height * 0.01090426),
        radius: Radius.elliptical(
            size.width * 0.01468644, size.height * 0.008865248),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path9.close();

    Paint paint9fill = Paint()..style = PaintingStyle.fill;
    paint9fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path9, paint9fill);

    Path path10 = Path();
    path10.moveTo(size.width * 0.8449111, size.height * 0.04264184);
    path10.lineTo(size.width * 0.8137759, size.height * 0.03173759);
    path10.arcToPoint(Offset(size.width * 0.8418270, size.height * 0.002304965),
        radius: Radius.elliptical(
            size.width * 0.06271112, size.height * 0.03785461),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path10.lineTo(size.width * 0.8729623, size.height * 0.01320922);
    path10.arcToPoint(Offset(size.width * 0.8449111, size.height * 0.04264184),
        radius: Radius.elliptical(
            size.width * 0.06227052, size.height * 0.03758865),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path10.close();

    Paint paint10fill = Paint()..style = PaintingStyle.fill;
    paint10fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path10, paint10fill);

    Path path11 = Path();
    path11.moveTo(size.width * 0.8449111, size.height * 0.04264184);
    path11.lineTo(size.width * 0.8137759, size.height * 0.03173759);
    path11.arcToPoint(Offset(size.width * 0.8145102, size.height * 0.02659574),
        radius: Radius.elliptical(
            size.width * 0.05154942, size.height * 0.03111702),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path11.lineTo(size.width * 0.8456455, size.height * 0.03750000);
    path11.arcToPoint(Offset(size.width * 0.8456455, size.height * 0.04237589),
        radius: Radius.elliptical(
            size.width * 0.05154942, size.height * 0.03111702),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path11.close();

    Paint paint11fill = Paint()..style = PaintingStyle.fill;
    paint11fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path11, paint11fill);

    Path path12 = Path();
    path12.moveTo(size.width * 0.8456455, size.height * 0.03776596);
    path12.lineTo(size.width * 0.8145102, size.height * 0.02659574);
    path12.arcToPoint(Offset(size.width * 0.8181818, size.height * 0.01932624),
        radius: Radius.elliptical(
            size.width * 0.06285798, size.height * 0.03794326),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path12.lineTo(size.width * 0.8493171, size.height * 0.03023050);
    path12.arcToPoint(Offset(size.width * 0.8456455, size.height * 0.03750000),
        radius: Radius.elliptical(
            size.width * 0.06285798, size.height * 0.03794326),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path12.close();

    Paint paint12fill = Paint()..style = PaintingStyle.fill;
    paint12fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path12, paint12fill);

    Path path13 = Path();
    path13.moveTo(size.width * 0.8493171, size.height * 0.03049645);
    path13.lineTo(size.width * 0.8181818, size.height * 0.01959220);
    path13.arcToPoint(Offset(size.width * 0.8242033, size.height * 0.01285461),
        radius: Radius.elliptical(
            size.width * 0.06843883, size.height * 0.04131206),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path13.lineTo(size.width * 0.8551917, size.height * 0.02384752);
    path13.arcToPoint(Offset(size.width * 0.8493171, size.height * 0.03049645),
        radius: Radius.elliptical(
            size.width * 0.07166985, size.height * 0.04326241),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path13.close();

    Paint paint13fill = Paint()..style = PaintingStyle.fill;
    paint13fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path13, paint13fill);

    Path path14 = Path();
    path14.moveTo(size.width * 0.8551917, size.height * 0.02384752);
    path14.lineTo(size.width * 0.8242033, size.height * 0.01285461);
    path14.arcToPoint(Offset(size.width * 0.8343369, size.height * 0.005673759),
        radius: Radius.elliptical(
            size.width * 0.06109561, size.height * 0.03687943),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path14.lineTo(size.width * 0.8654722, size.height * 0.01657801);
    path14.arcToPoint(Offset(size.width * 0.8551917, size.height * 0.02384752),
        radius: Radius.elliptical(
            size.width * 0.06344544, size.height * 0.03829787),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path14.close();

    Paint paint14fill = Paint()..style = PaintingStyle.fill;
    paint14fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path14, paint14fill);

    Path path15 = Path();
    path15.moveTo(size.width * 0.8654722, size.height * 0.01657801);
    path15.lineTo(size.width * 0.8343369, size.height * 0.005673759);
    path15.arcToPoint(Offset(size.width * 0.8418270, size.height * 0.002304965),
        radius: Radius.elliptical(
            size.width * 0.06182993, size.height * 0.03732270),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path15.lineTo(size.width * 0.8729623, size.height * 0.01320922);
    path15.arcToPoint(Offset(size.width * 0.8654722, size.height * 0.01657801),
        radius: Radius.elliptical(
            size.width * 0.04508738, size.height * 0.02721631),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path15.close();

    Paint paint15fill = Paint()..style = PaintingStyle.fill;
    paint15fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path15, paint15fill);

    Path path16 = Path();
    path16.moveTo(size.width * 0.8729623, size.height * 0.01320922);
    path16.cubicTo(
        size.width * 0.8885299,
        size.height * 0.007801418,
        size.width * 0.9011602,
        size.height * 0.01214539,
        size.width * 0.9013071,
        size.height * 0.02296099);
    path16.lineTo(size.width * 0.9023351, size.height * 0.2422872);
    path16.arcToPoint(Offset(size.width * 0.8741372, size.height * 0.2716312),
        radius: Radius.elliptical(
            size.width * 0.06182993, size.height * 0.03732270),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path16.cubicTo(
        size.width * 0.8587164,
        size.height * 0.2770390,
        size.width * 0.8459392,
        size.height * 0.2726950,
        size.width * 0.8459392,
        size.height * 0.2618794);
    path16.lineTo(size.width * 0.8449111, size.height * 0.04264184);
    path16.arcToPoint(Offset(size.width * 0.8729623, size.height * 0.01320922),
        radius: Radius.elliptical(
            size.width * 0.06227052, size.height * 0.03758865),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path16.close();

    Paint paint16fill = Paint()..style = PaintingStyle.fill;
    paint16fill.color = Color(0xffc2c3d0).withOpacity(1.0);
    canvas.drawPath(path16, paint16fill);

    Path path17 = Path();
    path17.moveTo(size.width * 0.5780585, size.height * 0.6471631);
    path17.lineTo(size.width * 0.5780585, size.height * 0.6836879);
    path17.cubicTo(
        size.width * 0.5780585,
        size.height * 0.7048759,
        size.width * 0.5519166,
        size.height * 0.7259752,
        size.width * 0.4999266,
        size.height * 0.7421099);
    path17.cubicTo(
        size.width * 0.3952122,
        size.height * 0.7745567,
        size.width * 0.2247026,
        size.height * 0.7745567,
        size.width * 0.1192539,
        size.height * 0.7421099);
    path17.cubicTo(
        size.width * 0.06623586,
        size.height * 0.7257979,
        size.width * 0.03965340,
        size.height * 0.7043440,
        size.width * 0.03980026,
        size.height * 0.6829787);
    path17.lineTo(size.width * 0.03980026, size.height * 0.6463652);
    path17.cubicTo(
        size.width * 0.03980026,
        size.height * 0.6678191,
        size.width * 0.06608900,
        size.height * 0.6892730,
        size.width * 0.1192539,
        size.height * 0.7055851);
    path17.cubicTo(
        size.width * 0.2247026,
        size.height * 0.7380319,
        size.width * 0.3950654,
        size.height * 0.7380319,
        size.width * 0.4997797,
        size.height * 0.7055851);
    path17.cubicTo(
        size.width * 0.5519166,
        size.height * 0.6897163,
        size.width * 0.5779116,
        size.height * 0.6686170,
        size.width * 0.5780585,
        size.height * 0.6471631);
    path17.close();

    Paint paint17fill = Paint()..style = PaintingStyle.fill;
    paint17fill.color = Color(0xff252529).withOpacity(1.0);
    canvas.drawPath(path17, paint17fill);

    Path path18 = Path();
    path18.moveTo(size.width * 0.5780585, size.height * 0.6471631);
    path18.lineTo(size.width * 0.5780585, size.height * 0.6836879);
    path18.cubicTo(
        size.width * 0.5780585,
        size.height * 0.7048759,
        size.width * 0.5519166,
        size.height * 0.7259752,
        size.width * 0.4999266,
        size.height * 0.7421099);
    path18.cubicTo(
        size.width * 0.3952122,
        size.height * 0.7745567,
        size.width * 0.2247026,
        size.height * 0.7745567,
        size.width * 0.1192539,
        size.height * 0.7421099);
    path18.cubicTo(
        size.width * 0.06623586,
        size.height * 0.7257979,
        size.width * 0.03965340,
        size.height * 0.7043440,
        size.width * 0.03980026,
        size.height * 0.6829787);
    path18.lineTo(size.width * 0.03980026, size.height * 0.6463652);
    path18.cubicTo(
        size.width * 0.03980026,
        size.height * 0.6678191,
        size.width * 0.06608900,
        size.height * 0.6892730,
        size.width * 0.1192539,
        size.height * 0.7055851);
    path18.cubicTo(
        size.width * 0.2247026,
        size.height * 0.7380319,
        size.width * 0.3950654,
        size.height * 0.7380319,
        size.width * 0.4997797,
        size.height * 0.7055851);
    path18.cubicTo(
        size.width * 0.5519166,
        size.height * 0.6894504,
        size.width * 0.5779116,
        size.height * 0.6683511,
        size.width * 0.5780585,
        size.height * 0.6472518);
    path18.close();

    Paint paint18fill = Paint()..style = PaintingStyle.fill;
    paint18fill.color = Color(0xff252529).withOpacity(1.0);
    canvas.drawPath(path18, paint18fill);

    Path path19 = Path();
    path19.moveTo(size.width * 0.4993391, size.height * 0.5805851);
    path19.cubicTo(
        size.width * 0.6047878,
        size.height * 0.6173759,
        size.width * 0.6053752,
        size.height * 0.6769504,
        size.width * 0.5005140,
        size.height * 0.7135638);
    path19.cubicTo(
        size.width * 0.3956528,
        size.height * 0.7501773,
        size.width * 0.2254369,
        size.height * 0.7503546,
        size.width * 0.1199883,
        size.height * 0.7135638);
    path19.cubicTo(
        size.width * 0.01453958,
        size.height * 0.6767730,
        size.width * 0.01321780,
        size.height * 0.6172872,
        size.width * 0.1174916,
        size.height * 0.5805851);
    path19.cubicTo(
        size.width * 0.2217653,
        size.height * 0.5438830,
        size.width * 0.3931561,
        size.height * 0.5437943,
        size.width * 0.4993391,
        size.height * 0.5805851);
    path19.close();

    Paint paint19fill = Paint()..style = PaintingStyle.fill;
    paint19fill.color = Color(0xff38373e).withOpacity(1.0);
    canvas.drawPath(path19, paint19fill);

    Path path20 = Path();
    path20.moveTo(size.width * 0.4169482, size.height * 0.4380319);
    path20.lineTo(size.width * 0.5743868, size.height * 0.4932624);
    path20.cubicTo(
        size.width * 0.5545601,
        size.height * 0.4862589,
        size.width * 0.5270965,
        size.height * 0.4872340,
        size.width * 0.4966956,
        size.height * 0.4978723);
    path20.lineTo(size.width * 0.3392569, size.height * 0.4426418);
    path20.cubicTo(
        size.width * 0.3696578,
        size.height * 0.4320035,
        size.width * 0.3965340,
        size.height * 0.4310284,
        size.width * 0.4169482,
        size.height * 0.4380319);
    path20.close();

    Paint paint20fill = Paint()..style = PaintingStyle.fill;
    paint20fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path20, paint20fill);

    Path path21 = Path();
    path21.moveTo(size.width * 0.4966956, size.height * 0.4978723);
    path21.lineTo(size.width * 0.3392569, size.height * 0.4426418);
    path21.arcToPoint(Offset(size.width * 0.4031429, size.height * 0.4346631),
        radius: Radius.elliptical(
            size.width * 0.08679689, size.height * 0.05239362),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path21.lineTo(size.width * 0.5605816, size.height * 0.4898936);
    path21.arcToPoint(Offset(size.width * 0.4966956, size.height * 0.4978723),
        radius: Radius.elliptical(
            size.width * 0.08679689, size.height * 0.05239362),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path21.close();

    Paint paint21fill = Paint()..style = PaintingStyle.fill;
    paint21fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path21, paint21fill);

    Path path22 = Path();
    path22.moveTo(size.width * 0.5605816, size.height * 0.4898936);
    path22.lineTo(size.width * 0.4031429, size.height * 0.4343972);
    path22.arcToPoint(Offset(size.width * 0.4169482, size.height * 0.4377660),
        radius: Radius.elliptical(
            size.width * 0.04949332, size.height * 0.02987589),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path22.lineTo(size.width * 0.5743868, size.height * 0.4929965);
    path22.arcToPoint(Offset(size.width * 0.5605816, size.height * 0.4896277),
        radius: Radius.elliptical(
            size.width * 0.04949332, size.height * 0.02987589),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path22.close();

    Paint paint22fill = Paint()..style = PaintingStyle.fill;
    paint22fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path22, paint22fill);

    Path path23 = Path();
    path23.moveTo(size.width * 0.3993244, size.height * 0.5735816);
    path23.lineTo(size.width * 0.2418857, size.height * 0.5183511);
    path23.arcToPoint(Offset(size.width * 0.3392569, size.height * 0.4426418),
        radius:
            Radius.elliptical(size.width * 0.2401234, size.height * 0.1449468),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path23.lineTo(size.width * 0.4966956, size.height * 0.4978723);
    path23.arcToPoint(Offset(size.width * 0.3993244, size.height * 0.5735816),
        radius:
            Radius.elliptical(size.width * 0.2401234, size.height * 0.1449468),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path23.close();

    Paint paint23fill = Paint()..style = PaintingStyle.fill;
    paint23fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path23, paint23fill);

    Path path24 = Path();
    path24.moveTo(size.width * 0.3993244, size.height * 0.5735816);
    path24.lineTo(size.width * 0.2418857, size.height * 0.5183511);
    path24.arcToPoint(Offset(size.width * 0.2593626, size.height * 0.4947695),
        radius:
            Radius.elliptical(size.width * 0.2716992, size.height * 0.1640071),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path24.lineTo(size.width * 0.4168013, size.height * 0.5496454);
    path24.arcToPoint(Offset(size.width * 0.3993244, size.height * 0.5732270),
        radius:
            Radius.elliptical(size.width * 0.2716992, size.height * 0.1640071),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path24.close();

    Paint paint24fill = Paint()..style = PaintingStyle.fill;
    paint24fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path24, paint24fill);

    Path path25 = Path();
    path25.moveTo(size.width * 0.4168013, size.height * 0.5496454);
    path25.lineTo(size.width * 0.2593626, size.height * 0.4947695);
    path25.arcToPoint(Offset(size.width * 0.3392569, size.height * 0.4426418),
        radius:
            Radius.elliptical(size.width * 0.2255838, size.height * 0.1361702),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path25.lineTo(size.width * 0.4966956, size.height * 0.4978723);
    path25.arcToPoint(Offset(size.width * 0.4168013, size.height * 0.5496454),
        radius:
            Radius.elliptical(size.width * 0.2255838, size.height * 0.1361702),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path25.close();

    Paint paint25fill = Paint()..style = PaintingStyle.fill;
    paint25fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path25, paint25fill);

    Path path26 = Path();
    path26.moveTo(size.width * 0.2562785, size.height * 0.6849291);
    path26.lineTo(size.width * 0.09883977, size.height * 0.6296986);
    path26.lineTo(size.width * 0.2418857, size.height * 0.5183511);
    path26.lineTo(size.width * 0.3993244, size.height * 0.5735816);
    path26.lineTo(size.width * 0.2562785, size.height * 0.6849291);
    path26.close();

    Paint paint26fill = Paint()..style = PaintingStyle.fill;
    paint26fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path26, paint26fill);

    Path path27 = Path();
    path27.moveTo(size.width * 0.2496696, size.height * 0.7281915);
    path27.lineTo(size.width * 0.09208401, size.height * 0.6729610);
    path27.cubicTo(
        size.width * 0.07651638,
        size.height * 0.6674645,
        size.width * 0.07607578,
        size.height * 0.6471631,
        size.width * 0.09883977,
        size.height * 0.6294326);
    path27.lineTo(size.width * 0.2562785, size.height * 0.6846631);
    path27.cubicTo(
        size.width * 0.2335145,
        size.height * 0.7026596,
        size.width * 0.2339551,
        size.height * 0.7226950,
        size.width * 0.2496696,
        size.height * 0.7281915);
    path27.close();

    Paint paint27fill = Paint()..style = PaintingStyle.fill;
    paint27fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path27, paint27fill);

    Path path28 = Path();
    path28.moveTo(size.width * 0.2496696, size.height * 0.7281915);
    path28.lineTo(size.width * 0.09208401, size.height * 0.6729610);
    path28.cubicTo(
        size.width * 0.07871934,
        size.height * 0.6682624,
        size.width * 0.07636951,
        size.height * 0.6528369,
        size.width * 0.09046850,
        size.height * 0.6375000);
    path28.lineTo(size.width * 0.2479072, size.height * 0.6927305);
    path28.cubicTo(
        size.width * 0.2339551,
        size.height * 0.7082447,
        size.width * 0.2361580,
        size.height * 0.7236702,
        size.width * 0.2495227,
        size.height * 0.7281915);
    path28.close();

    Paint paint28fill = Paint()..style = PaintingStyle.fill;
    paint28fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path28, paint28fill);

    Path path29 = Path();
    path29.moveTo(size.width * 0.2479072, size.height * 0.6925532);
    path29.lineTo(size.width * 0.09046850, size.height * 0.6373227);
    path29.arcToPoint(Offset(size.width * 0.09883977, size.height * 0.6294326),
        radius: Radius.elliptical(
            size.width * 0.09399324, size.height * 0.05673759),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path29.lineTo(size.width * 0.2562785, size.height * 0.6846631);
    path29.arcToPoint(Offset(size.width * 0.2479072, size.height * 0.6922872),
        radius: Radius.elliptical(
            size.width * 0.09399324, size.height * 0.05673759),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path29.close();

    Paint paint29fill = Paint()..style = PaintingStyle.fill;
    paint29fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path29, paint29fill);

    Path path30 = Path();
    path30.moveTo(size.width * 0.4966956, size.height * 0.4978723);
    path30.cubicTo(
        size.width * 0.5570568,
        size.height * 0.4768617,
        size.width * 0.6059627,
        size.height * 0.4937057,
        size.width * 0.6062564,
        size.height * 0.5355496);
    path30.arcToPoint(Offset(size.width * 0.4974299, size.height * 0.6492908),
        radius:
            Radius.elliptical(size.width * 0.2402702, size.height * 0.1450355),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path30.lineTo(size.width * 0.2762520, size.height * 0.7264184);
    path30.cubicTo(
        size.width * 0.2382141,
        size.height * 0.7396277,
        size.width * 0.2239683,
        size.height * 0.7100177,
        size.width * 0.2562785,
        size.height * 0.6849291);
    path30.lineTo(size.width * 0.3993244, size.height * 0.5735816);
    path30.arcToPoint(Offset(size.width * 0.4966956, size.height * 0.4978723),
        radius:
            Radius.elliptical(size.width * 0.2401234, size.height * 0.1449468),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path30.close();

    Paint paint30fill = Paint()..style = PaintingStyle.fill;
    paint30fill.color = Color(0xffc2c3d0).withOpacity(1.0);
    canvas.drawPath(path30, paint30fill);

    Path path31 = Path();
    path31.moveTo(size.width * 0.9171685, size.height * 0.003368794);
    path31.lineTo(size.width * 0.9738581, size.height * 0.02331560);
    path31.arcToPoint(Offset(size.width * 0.9462476, size.height * 0.02464539),
        radius: Radius.elliptical(
            size.width * 0.02716992, size.height * 0.01640071),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path31.lineTo(size.width * 0.8895579, size.height * 0.004787234);
    path31.arcToPoint(Offset(size.width * 0.9171685, size.height * 0.003368794),
        radius: Radius.elliptical(
            size.width * 0.02761052, size.height * 0.01666667),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path31.close();

    Paint paint31fill = Paint()..style = PaintingStyle.fill;
    paint31fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path31, paint31fill);

    Path path32 = Path();
    path32.moveTo(size.width * 0.9462476, size.height * 0.02464539);
    path32.lineTo(size.width * 0.8895579, size.height * 0.004787234);
    path32.arcToPoint(Offset(size.width * 0.9120282, size.height * 0.002127660),
        radius: Radius.elliptical(
            size.width * 0.03084153, size.height * 0.01861702),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path32.lineTo(size.width * 0.9693053, size.height * 0.02198582);
    path32.arcToPoint(Offset(size.width * 0.9468351, size.height * 0.02464539),
        radius: Radius.elliptical(
            size.width * 0.03157586, size.height * 0.01906028),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path32.close();

    Paint paint32fill = Paint()..style = PaintingStyle.fill;
    paint32fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path32, paint32fill);

    Path path33 = Path();
    path33.moveTo(size.width * 0.9693053, size.height * 0.02198582);
    path33.lineTo(size.width * 0.9120282, size.height * 0.002127660);
    path33.arcToPoint(Offset(size.width * 0.9171685, size.height * 0.003368794),
        radius: Radius.elliptical(
            size.width * 0.02217653, size.height * 0.01338652),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path33.lineTo(size.width * 0.9738581, size.height * 0.02331560);
    path33.arcToPoint(Offset(size.width * 0.9693053, size.height * 0.02198582),
        radius: Radius.elliptical(
            size.width * 0.02261712, size.height * 0.01365248),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path33.close();

    Paint paint33fill = Paint()..style = PaintingStyle.fill;
    paint33fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path33, paint33fill);

    Path path34 = Path();
    path34.moveTo(size.width * 0.3859598, size.height * 0.2748227);
    path34.lineTo(size.width * 0.3292701, size.height * 0.2549645);
    path34.arcToPoint(Offset(size.width * 0.3172272, size.height * 0.2387411),
        radius: Radius.elliptical(
            size.width * 0.02937289, size.height * 0.01773050),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path34.lineTo(size.width * 0.3739169, size.height * 0.2585993);
    path34.arcToPoint(Offset(size.width * 0.3859598, size.height * 0.2748227),
        radius: Radius.elliptical(
            size.width * 0.02937289, size.height * 0.01773050),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path34.close();

    Paint paint34fill = Paint()..style = PaintingStyle.fill;
    paint34fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path34, paint34fill);

    Path path35 = Path();
    path35.moveTo(size.width * 0.3859598, size.height * 0.2748227);
    path35.lineTo(size.width * 0.3292701, size.height * 0.2549645);
    path35.arcToPoint(Offset(size.width * 0.3172272, size.height * 0.2387411),
        radius: Radius.elliptical(
            size.width * 0.02937289, size.height * 0.01773050),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path35.lineTo(size.width * 0.3739169, size.height * 0.2585993);
    path35.arcToPoint(Offset(size.width * 0.3859598, size.height * 0.2748227),
        radius: Radius.elliptical(
            size.width * 0.02937289, size.height * 0.01773050),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path35.close();

    Paint paint35fill = Paint()..style = PaintingStyle.fill;
    paint35fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path35, paint35fill);

    Path path36 = Path();
    path36.moveTo(size.width * 0.4138640, size.height * 0.2045213);
    path36.lineTo(size.width * 0.3573212, size.height * 0.1845745);
    path36.lineTo(size.width * 0.8895579, size.height * 0.004787234);
    path36.lineTo(size.width * 0.9462476, size.height * 0.02464539);
    path36.lineTo(size.width * 0.4138640, size.height * 0.2045213);
    path36.close();

    Paint paint36fill = Paint()..style = PaintingStyle.fill;
    paint36fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path36, paint36fill);

    Path path37 = Path();
    path37.moveTo(size.width * 0.3739169, size.height * 0.2585993);
    path37.lineTo(size.width * 0.3172272, size.height * 0.2387411);
    path37.lineTo(size.width * 0.3172272, size.height * 0.2273936);
    path37.lineTo(size.width * 0.3737700, size.height * 0.2472518);
    path37.lineTo(size.width * 0.3739169, size.height * 0.2585993);
    path37.close();

    Paint paint37fill = Paint()..style = PaintingStyle.fill;
    paint37fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path37, paint37fill);

    Path path38 = Path();
    path38.moveTo(size.width * 0.3739169, size.height * 0.2472518);
    path38.lineTo(size.width * 0.3172272, size.height * 0.2273936);
    path38.arcToPoint(Offset(size.width * 0.3573212, size.height * 0.1846631),
        radius: Radius.elliptical(
            size.width * 0.08929358, size.height * 0.05390071),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path38.lineTo(size.width * 0.4138640, size.height * 0.2045213);
    path38.arcToPoint(Offset(size.width * 0.3739169, size.height * 0.2472518),
        radius: Radius.elliptical(
            size.width * 0.08973418, size.height * 0.05416667),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path38.close();

    Paint paint38fill = Paint()..style = PaintingStyle.fill;
    paint38fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path38, paint38fill);

    Path path39 = Path();
    path39.moveTo(size.width * 0.3739169, size.height * 0.2472518);
    path39.lineTo(size.width * 0.3172272, size.height * 0.2273936);
    path39.arcToPoint(Offset(size.width * 0.3282420, size.height * 0.2039007),
        radius: Radius.elliptical(
            size.width * 0.08444706, size.height * 0.05097518),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path39.lineTo(size.width * 0.3849317, size.height * 0.2238475);
    path39.arcToPoint(Offset(size.width * 0.3739169, size.height * 0.2475177),
        radius: Radius.elliptical(
            size.width * 0.08180350, size.height * 0.04937943),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path39.close();

    Paint paint39fill = Paint()..style = PaintingStyle.fill;
    paint39fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path39, paint39fill);

    Path path40 = Path();
    path40.moveTo(size.width * 0.3849317, size.height * 0.2235816);
    path40.lineTo(size.width * 0.3282420, size.height * 0.2039007);
    path40.arcToPoint(Offset(size.width * 0.3576149, size.height * 0.1849291),
        radius: Radius.elliptical(
            size.width * 0.08165663, size.height * 0.04929078),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path40.lineTo(size.width * 0.4141577, size.height * 0.2047872);
    path40.arcToPoint(Offset(size.width * 0.3847848, size.height * 0.2238475),
        radius: Radius.elliptical(
            size.width * 0.08180350, size.height * 0.04937943),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path40.close();

    Paint paint40fill = Paint()..style = PaintingStyle.fill;
    paint40fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path40, paint40fill);

    Path path41 = Path();
    path41.moveTo(size.width * 0.4131297, size.height * 0.2039007);
    path41.lineTo(size.width * 0.9455133, size.height * 0.02429078);
    path41.cubicTo(
        size.width * 0.9673961,
        size.height * 0.01684397,
        size.width * 0.9851667,
        size.height * 0.02349291,
        size.width * 0.9851667,
        size.height * 0.03918440);
    path41.arcToPoint(Offset(size.width * 0.9458070, size.height * 0.08173759),
        radius: Radius.elliptical(
            size.width * 0.08988104, size.height * 0.05425532),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path41.lineTo(size.width * 0.4141577, size.height * 0.2726950);
    path41.cubicTo(
        size.width * 0.3912469,
        size.height * 0.2806738,
        size.width * 0.3731826,
        size.height * 0.2741135,
        size.width * 0.3731826,
        size.height * 0.2582447);
    path41.lineTo(size.width * 0.3731826, size.height * 0.2468972);
    path41.arcToPoint(Offset(size.width * 0.4131297, size.height * 0.2039007),
        radius: Radius.elliptical(
            size.width * 0.09017477, size.height * 0.05443262),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path41.close();

    Paint paint41fill = Paint()..style = PaintingStyle.fill;
    paint41fill.color = Color(0xffc2c3d0).withOpacity(1.0);
    canvas.drawPath(path41, paint41fill);

    Path path42 = Path();
    path42.moveTo(size.width * 0.8259656, size.height * 0.3513298);
    path42.lineTo(size.width * 0.8449111, size.height * 0.3447695);
    path42.lineTo(size.width * 0.8593039, size.height * 0.3600177);
    path42.lineTo(size.width * 0.8403583, size.height * 0.3664894);
    path42.lineTo(size.width * 0.8259656, size.height * 0.3513298);
    path42.close();

    Paint paint42fill = Paint()..style = PaintingStyle.fill;
    paint42fill.color = Color(0xff2a2a2a).withOpacity(1.0);
    canvas.drawPath(path42, paint42fill);

    Path path43 = Path();
    path43.moveTo(size.width * 0.8403583, size.height * 0.3664894);
    path43.lineTo(size.width * 0.8593039, size.height * 0.3600177);
    path43.lineTo(size.width * 0.8472610, size.height * 0.3642730);
    path43.lineTo(size.width * 0.8283155, size.height * 0.3707447);
    path43.lineTo(size.width * 0.8403583, size.height * 0.3664894);
    path43.close();

    Paint paint43fill = Paint()..style = PaintingStyle.fill;
    paint43fill.color = Color(0xff232323).withOpacity(1.0);
    canvas.drawPath(path43, paint43fill);

    Path path44 = Path();
    path44.moveTo(size.width * 0.8259656, size.height * 0.3227837);
    path44.lineTo(size.width * 0.8449111, size.height * 0.3162234);
    path44.lineTo(size.width * 0.8449111, size.height * 0.3447695);
    path44.lineTo(size.width * 0.8259656, size.height * 0.3513298);
    path44.lineTo(size.width * 0.8259656, size.height * 0.3227837);
    path44.close();

    Paint paint44fill = Paint()..style = PaintingStyle.fill;
    paint44fill.color = Color(0xff303030).withOpacity(1.0);
    canvas.drawPath(path44, paint44fill);

    Path path45 = Path();
    path45.moveTo(size.width * 0.8525481, size.height * 0.3133865);
    path45.lineTo(size.width * 0.8714936, size.height * 0.3069149);
    path45.lineTo(size.width * 0.8449111, size.height * 0.3162234);
    path45.lineTo(size.width * 0.8259656, size.height * 0.3227837);
    path45.lineTo(size.width * 0.8525481, size.height * 0.3133865);
    path45.close();

    Paint paint45fill = Paint()..style = PaintingStyle.fill;
    paint45fill.color = Color(0xff232323).withOpacity(1.0);
    canvas.drawPath(path45, paint45fill);

    Path path46 = Path();
    path46.moveTo(size.width * 0.8454986, size.height * 0.2990248);
    path46.lineTo(size.width * 0.8644441, size.height * 0.2925532);
    path46.lineTo(size.width * 0.9045381, size.height * 0.3064716);
    path46.lineTo(size.width * 0.8855926, size.height * 0.3129433);
    path46.lineTo(size.width * 0.8454986, size.height * 0.2990248);
    path46.close();

    Paint paint46fill = Paint()..style = PaintingStyle.fill;
    paint46fill.color = Color(0xff1e1e1e).withOpacity(1.0);
    canvas.drawPath(path46, paint46fill);

    Path path47 = Path();
    path47.moveTo(size.width * 0.8855926, size.height * 0.3129433);
    path47.lineTo(size.width * 0.9045381, size.height * 0.3064716);
    path47.lineTo(size.width * 0.9045381, size.height * 0.3183511);
    path47.lineTo(size.width * 0.8855926, size.height * 0.3249113);
    path47.lineTo(size.width * 0.8855926, size.height * 0.3129433);
    path47.close();

    Paint paint47fill = Paint()..style = PaintingStyle.fill;
    paint47fill.color = Color(0xff303030).withOpacity(1.0);
    canvas.drawPath(path47, paint47fill);

    Path path48 = Path();
    path48.moveTo(size.width * 0.8855926, size.height * 0.3249113);
    path48.lineTo(size.width * 0.8525481, size.height * 0.3133865);
    path48.lineTo(size.width * 0.8259656, size.height * 0.3227837);
    path48.lineTo(size.width * 0.8259656, size.height * 0.3513298);
    path48.lineTo(size.width * 0.8403583, size.height * 0.3664894);
    path48.lineTo(size.width * 0.8283155, size.height * 0.3707447);
    path48.lineTo(size.width * 0.8089294, size.height * 0.3503546);
    path48.lineTo(size.width * 0.8090762, size.height * 0.3118794);
    path48.lineTo(size.width * 0.8454986, size.height * 0.2990248);
    path48.lineTo(size.width * 0.8855926, size.height * 0.3129433);
    path48.lineTo(size.width * 0.8855926, size.height * 0.3249113);
    path48.close();

    Paint paint48fill = Paint()..style = PaintingStyle.fill;
    paint48fill.color = Color(0xff2b2b2b).withOpacity(1.0);
    canvas.drawPath(path48, paint48fill);

    Path path49 = Path();
    path49.moveTo(size.width * 0.9619621, size.height * 0.4035461);
    path49.lineTo(size.width * 0.9809076, size.height * 0.3969858);
    path49.lineTo(size.width * 0.9613747, size.height * 0.4039007);
    path49.lineTo(size.width * 0.9424291, size.height * 0.4103723);
    path49.lineTo(size.width * 0.9619621, size.height * 0.4035461);
    path49.close();

    Paint paint49fill = Paint()..style = PaintingStyle.fill;
    paint49fill.color = Color(0xff232323).withOpacity(1.0);
    canvas.drawPath(path49, paint49fill);

    Path path50 = Path();
    path50.moveTo(size.width * 0.8855926, size.height * 0.3129433);
    path50.lineTo(size.width * 0.9045381, size.height * 0.3064716);
    path50.lineTo(size.width * 0.9446321, size.height * 0.3203901);
    path50.lineTo(size.width * 0.9256866, size.height * 0.3268617);
    path50.lineTo(size.width * 0.8855926, size.height * 0.3129433);
    path50.close();

    Paint paint50fill = Paint()..style = PaintingStyle.fill;
    paint50fill.color = Color(0xff1e1e1e).withOpacity(1.0);
    canvas.drawPath(path50, paint50fill);

    Path path51 = Path();
    path51.moveTo(size.width * 0.9256866, size.height * 0.3268617);
    path51.lineTo(size.width * 0.9446321, size.height * 0.3203901);
    path51.lineTo(size.width * 0.9810545, size.height * 0.3585993);
    path51.lineTo(size.width * 0.9621090, size.height * 0.3650709);
    path51.lineTo(size.width * 0.9256866, size.height * 0.3268617);
    path51.close();

    Paint paint51fill = Paint()..style = PaintingStyle.fill;
    paint51fill.color = Color(0xff2a2a2a).withOpacity(1.0);
    canvas.drawPath(path51, paint51fill);

    Path path52 = Path();
    path52.moveTo(size.width * 0.9621090, size.height * 0.3650709);
    path52.lineTo(size.width * 0.9810545, size.height * 0.3585993);
    path52.lineTo(size.width * 0.9809076, size.height * 0.3969858);
    path52.lineTo(size.width * 0.9619621, size.height * 0.4035461);
    path52.lineTo(size.width * 0.9621090, size.height * 0.3650709);
    path52.close();

    Paint paint52fill = Paint()..style = PaintingStyle.fill;
    paint52fill.color = Color(0xff303030).withOpacity(1.0);
    canvas.drawPath(path52, paint52fill);

    Path path53 = Path();
    path53.moveTo(size.width * 0.9619621, size.height * 0.4035461);
    path53.lineTo(size.width * 0.9424291, size.height * 0.4103723);
    path53.lineTo(size.width * 0.9303863, size.height * 0.3977837);
    path53.lineTo(size.width * 0.9449258, size.height * 0.3927305);
    path53.lineTo(size.width * 0.9450727, size.height * 0.3640957);
    path53.lineTo(size.width * 0.9186371, size.height * 0.3363475);
    path53.lineTo(size.width * 0.8855926, size.height * 0.3249113);
    path53.lineTo(size.width * 0.8855926, size.height * 0.3129433);
    path53.lineTo(size.width * 0.9256866, size.height * 0.3268617);
    path53.lineTo(size.width * 0.9621090, size.height * 0.3650709);
    path53.lineTo(size.width * 0.9619621, size.height * 0.4035461);
    path53.close();

    Paint paint53fill = Paint()..style = PaintingStyle.fill;
    paint53fill.color = Color(0xff2b2b2b).withOpacity(1.0);
    canvas.drawPath(path53, paint53fill);

    Path path54 = Path();
    path54.moveTo(size.width * 0.8820679, size.height * 0.2727837);
    path54.lineTo(size.width * 0.9634308, size.height * 0.2442376);
    path54.lineTo(size.width * 0.9631370, size.height * 0.3065603);
    path54.lineTo(size.width * 0.8817741, size.height * 0.3351064);
    path54.lineTo(size.width * 0.8820679, size.height * 0.2727837);
    path54.close();

    Paint paint54fill = Paint()..style = PaintingStyle.fill;
    paint54fill.color = Color(0xffc2c3d0).withOpacity(1.0);
    canvas.drawPath(path54, paint54fill);

    Path path55 = Path();
    path55.moveTo(size.width * 0.8360993, size.height * 0.2436170);
    path55.lineTo(size.width * 0.9176090, size.height * 0.2150709);
    path55.arcToPoint(Offset(size.width * 0.9367014, size.height * 0.2161348),
        radius: Radius.elliptical(
            size.width * 0.01879865, size.height * 0.01134752),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path55.lineTo(size.width * 0.8553385, size.height * 0.2446809);
    path55.arcToPoint(Offset(size.width * 0.8360993, size.height * 0.2436170),
        radius: Radius.elliptical(
            size.width * 0.01894551, size.height * 0.01143617),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path55.close();

    Paint paint55fill = Paint()..style = PaintingStyle.fill;
    paint55fill.color = Color(0xffc2c3d0).withOpacity(1.0);
    canvas.drawPath(path55, paint55fill);

    Path path56 = Path();
    path56.moveTo(size.width * 0.8360993, size.height * 0.2436170);
    path56.lineTo(size.width * 0.9176090, size.height * 0.2150709);
    path56.arcToPoint(Offset(size.width * 0.9258335, size.height * 0.2139184),
        radius: Radius.elliptical(
            size.width * 0.01468644, size.height * 0.008865248),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path56.lineTo(size.width * 0.8444706, size.height * 0.2425532);
    path56.arcToPoint(Offset(size.width * 0.8360993, size.height * 0.2436170),
        radius: Radius.elliptical(
            size.width * 0.01307094, size.height * 0.007890071),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path56.close();

    Paint paint56fill = Paint()..style = PaintingStyle.fill;
    paint56fill.color = Color(0xffc2c3d0).withOpacity(1.0);
    canvas.drawPath(path56, paint56fill);

    Path path57 = Path();
    path57.moveTo(size.width * 0.8444706, size.height * 0.2425532);
    path57.lineTo(size.width * 0.9252460, size.height * 0.2139184);
    path57.arcToPoint(Offset(size.width * 0.9308268, size.height * 0.2147163),
        radius: Radius.elliptical(
            size.width * 0.02041416, size.height * 0.01232270),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path57.lineTo(size.width * 0.8494639, size.height * 0.2432624);
    path57.arcToPoint(Offset(size.width * 0.8438831, size.height * 0.2425532),
        radius: Radius.elliptical(
            size.width * 0.01586136, size.height * 0.009574468),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path57.close();

    Paint paint57fill = Paint()..style = PaintingStyle.fill;
    paint57fill.color = Color(0xffc2c3d0).withOpacity(1.0);
    canvas.drawPath(path57, paint57fill);

    Path path58 = Path();
    path58.moveTo(size.width * 0.8500514, size.height * 0.2432624);
    path58.lineTo(size.width * 0.9314143, size.height * 0.2147163);
    path58.arcToPoint(Offset(size.width * 0.9367014, size.height * 0.2161348),
        radius: Radius.elliptical(
            size.width * 0.02775738, size.height * 0.01675532),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path58.lineTo(size.width * 0.8553385, size.height * 0.2446809);
    path58.arcToPoint(Offset(size.width * 0.8500514, size.height * 0.2432624),
        radius: Radius.elliptical(
            size.width * 0.03260391, size.height * 0.01968085),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path58.close();

    Paint paint58fill = Paint()..style = PaintingStyle.fill;
    paint58fill.color = Color(0xffc2c3d0).withOpacity(1.0);
    canvas.drawPath(path58, paint58fill);

    Path path59 = Path();
    path59.moveTo(size.width * 0.8553385, size.height * 0.2446809);
    path59.lineTo(size.width * 0.9367014, size.height * 0.2161348);
    path59.arcToPoint(Offset(size.width * 0.9634308, size.height * 0.2441489),
        radius: Radius.elliptical(
            size.width * 0.05874578, size.height * 0.03546099),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path59.lineTo(size.width * 0.8820679, size.height * 0.2727837);
    path59.arcToPoint(Offset(size.width * 0.8553385, size.height * 0.2446809),
        radius: Radius.elliptical(
            size.width * 0.05874578, size.height * 0.03546099),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path59.close();

    Paint paint59fill = Paint()..style = PaintingStyle.fill;
    paint59fill.color = Color(0xffc2c3d0).withOpacity(1.0);
    canvas.drawPath(path59, paint59fill);

    Path path60 = Path();
    path60.moveTo(size.width * 0.8553385, size.height * 0.2446809);
    path60.lineTo(size.width * 0.9367014, size.height * 0.2161348);
    path60.lineTo(size.width * 0.9367014, size.height * 0.2161348);
    path60.lineTo(size.width * 0.8551917, size.height * 0.2447695);
    path60.lineTo(size.width * 0.8551917, size.height * 0.2447695);
    path60.close();

    Paint paint60fill = Paint()..style = PaintingStyle.fill;
    paint60fill.color = Color(0xffc2c3d0).withOpacity(1.0);
    canvas.drawPath(path60, paint60fill);

    Path path61 = Path();
    path61.moveTo(size.width * 0.8554854, size.height * 0.2448582);
    path61.lineTo(size.width * 0.9369952, size.height * 0.2162234);
    path61.arcToPoint(Offset(size.width * 0.9427229, size.height * 0.2187943),
        radius: Radius.elliptical(
            size.width * 0.03862535, size.height * 0.02331560),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path61.lineTo(size.width * 0.8613600, size.height * 0.2473404);
    path61.arcToPoint(Offset(size.width * 0.8554854, size.height * 0.2448582),
        radius: Radius.elliptical(
            size.width * 0.03862535, size.height * 0.02331560),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path61.close();

    Paint paint61fill = Paint()..style = PaintingStyle.fill;
    paint61fill.color = Color(0xffc2c3d0).withOpacity(1.0);
    canvas.drawPath(path61, paint61fill);

    Path path62 = Path();
    path62.moveTo(size.width * 0.8613600, size.height * 0.2473404);
    path62.lineTo(size.width * 0.9427229, size.height * 0.2187943);
    path62.arcToPoint(Offset(size.width * 0.9484506, size.height * 0.2221631),
        radius: Radius.elliptical(
            size.width * 0.04097518, size.height * 0.02473404),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path62.lineTo(size.width * 0.8665002, size.height * 0.2507092);
    path62.arcToPoint(Offset(size.width * 0.8607725, size.height * 0.2473404),
        radius: Radius.elliptical(
            size.width * 0.06755764, size.height * 0.04078014),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path62.close();

    Paint paint62fill = Paint()..style = PaintingStyle.fill;
    paint62fill.color = Color(0xffc2c3d0).withOpacity(1.0);
    canvas.drawPath(path62, paint62fill);

    Path path63 = Path();
    path63.moveTo(size.width * 0.8665002, size.height * 0.2507092);
    path63.lineTo(size.width * 0.9478631, size.height * 0.2221631);
    path63.arcToPoint(Offset(size.width * 0.9582905, size.height * 0.2320035),
        radius: Radius.elliptical(
            size.width * 0.06711705, size.height * 0.04051418),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path63.lineTo(size.width * 0.8767807, size.height * 0.2605496);
    path63.arcToPoint(Offset(size.width * 0.8665002, size.height * 0.2507092),
        radius: Radius.elliptical(
            size.width * 0.06241739, size.height * 0.03767730),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path63.close();

    Paint paint63fill = Paint()..style = PaintingStyle.fill;
    paint63fill.color = Color(0xffc2c3d0).withOpacity(1.0);
    canvas.drawPath(path63, paint63fill);

    Path path64 = Path();
    path64.moveTo(size.width * 0.8773682, size.height * 0.2605496);
    path64.lineTo(size.width * 0.9588780, size.height * 0.2320035);
    path64.cubicTo(
        size.width * 0.9597591,
        size.height * 0.2333333,
        size.width * 0.9606403,
        size.height * 0.2346631,
        size.width * 0.9613747,
        size.height * 0.2360816);
    path64.lineTo(size.width * 0.8798649, size.height * 0.2646277);
    path64.arcToPoint(Offset(size.width * 0.8773682, size.height * 0.2605496),
        radius: Radius.elliptical(
            size.width * 0.03730357, size.height * 0.02251773),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path64.close();

    Paint paint64fill = Paint()..style = PaintingStyle.fill;
    paint64fill.color = Color(0xffc2c3d0).withOpacity(1.0);
    canvas.drawPath(path64, paint64fill);

    Path path65 = Path();
    path65.moveTo(size.width * 0.8798649, size.height * 0.2646277);
    path65.lineTo(size.width * 0.9613747, size.height * 0.2360816);
    path65.arcToPoint(Offset(size.width * 0.9629902, size.height * 0.2402482),
        radius: Radius.elliptical(
            size.width * 0.05243061, size.height * 0.03164894),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path65.lineTo(size.width * 0.8811867, size.height * 0.2687943);
    path65.arcToPoint(Offset(size.width * 0.8794243, size.height * 0.2646277),
        radius: Radius.elliptical(
            size.width * 0.06814510, size.height * 0.04113475),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path65.close();

    Paint paint65fill = Paint()..style = PaintingStyle.fill;
    paint65fill.color = Color(0xffc2c3d0).withOpacity(1.0);
    canvas.drawPath(path65, paint65fill);

    Path path66 = Path();
    path66.moveTo(size.width * 0.8811867, size.height * 0.2687943);
    path66.lineTo(size.width * 0.9625496, size.height * 0.2402482);
    path66.arcToPoint(Offset(size.width * 0.9625496, size.height * 0.2441489),
        radius: Radius.elliptical(
            size.width * 0.04949332, size.height * 0.02987589),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path66.lineTo(size.width * 0.8811867, size.height * 0.2727837);
    path66.arcToPoint(Offset(size.width * 0.8811867, size.height * 0.2687943),
        radius: Radius.elliptical(
            size.width * 0.04993391, size.height * 0.03014184),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path66.close();

    Paint paint66fill = Paint()..style = PaintingStyle.fill;
    paint66fill.color = Color(0xffc2c3d0).withOpacity(1.0);
    canvas.drawPath(path66, paint66fill);

    Path path67 = Path();
    path67.moveTo(size.width * 0.8553385, size.height * 0.2446809);
    path67.arcToPoint(Offset(size.width * 0.8820679, size.height * 0.2727837),
        radius: Radius.elliptical(
            size.width * 0.05874578, size.height * 0.03546099),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path67.lineTo(size.width * 0.8820679, size.height * 0.3348404);
    path67.lineTo(size.width * 0.8283155, size.height * 0.3160461);
    path67.lineTo(size.width * 0.8283155, size.height * 0.2539894);
    path67.cubicTo(
        size.width * 0.8283155,
        size.height * 0.2437057,
        size.width * 0.8403583,
        size.height * 0.2393617,
        size.width * 0.8553385,
        size.height * 0.2446809);
    path67.close();

    Paint paint67fill = Paint()..style = PaintingStyle.fill;
    paint67fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path67, paint67fill);

    Path path68 = Path();
    path68.moveTo(size.width * 0.4790718, size.height * 0.6080674);
    path68.lineTo(size.width * 0.4182699, size.height * 0.5867908);
    path68.arcToPoint(Offset(size.width * 0.4035835, size.height * 0.5645390),
        radius: Radius.elliptical(
            size.width * 0.03847848, size.height * 0.02322695),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path68.lineTo(size.width * 0.4642385, size.height * 0.5858156);
    path68.arcToPoint(Offset(size.width * 0.4790718, size.height * 0.6080674),
        radius: Radius.elliptical(
            size.width * 0.03818476, size.height * 0.02304965),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path68.close();

    Paint paint68fill = Paint()..style = PaintingStyle.fill;
    paint68fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path68, paint68fill);

    Path path69 = Path();
    path69.moveTo(size.width * 0.4790718, size.height * 0.6080674);
    path69.lineTo(size.width * 0.4182699, size.height * 0.5867908);
    path69.arcToPoint(Offset(size.width * 0.4035835, size.height * 0.5645390),
        radius: Radius.elliptical(
            size.width * 0.03847848, size.height * 0.02322695),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path69.lineTo(size.width * 0.4642385, size.height * 0.5858156);
    path69.arcToPoint(Offset(size.width * 0.4789250, size.height * 0.6080674),
        radius: Radius.elliptical(
            size.width * 0.03818476, size.height * 0.02304965),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path69.close();

    Paint paint69fill = Paint()..style = PaintingStyle.fill;
    paint69fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path69, paint69fill);

    Path path70 = Path();
    path70.moveTo(size.width * 0.5169628, size.height * 0.1393617);
    path70.lineTo(size.width * 0.5776179, size.height * 0.1606383);
    path70.arcToPoint(Offset(size.width * 0.5400206, size.height * 0.1628546),
        radius: Radius.elliptical(
            size.width * 0.03686298, size.height * 0.02225177),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path70.lineTo(size.width * 0.4793655, size.height * 0.1418440);
    path70.arcToPoint(Offset(size.width * 0.5169628, size.height * 0.1393617),
        radius: Radius.elliptical(
            size.width * 0.03686298, size.height * 0.02225177),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path70.close();

    Paint paint70fill = Paint()..style = PaintingStyle.fill;
    paint70fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path70, paint70fill);

    Path path71 = Path();
    path71.moveTo(size.width * 0.5400206, size.height * 0.1628546);
    path71.lineTo(size.width * 0.4793655, size.height * 0.1418440);
    path71.arcToPoint(Offset(size.width * 0.4953738, size.height * 0.1379433),
        radius: Radius.elliptical(
            size.width * 0.05463357, size.height * 0.03297872),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path71.lineTo(size.width * 0.5561756, size.height * 0.1592199);
    path71.arcToPoint(Offset(size.width * 0.5400206, size.height * 0.1631206),
        radius: Radius.elliptical(
            size.width * 0.05389925, size.height * 0.03253546),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path71.close();

    Paint paint71fill = Paint()..style = PaintingStyle.fill;
    paint71fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path71, paint71fill);

    Path path72 = Path();
    path72.moveTo(size.width * 0.5561756, size.height * 0.1589539);
    path72.lineTo(size.width * 0.4953738, size.height * 0.1376773);
    path72.arcToPoint(Offset(size.width * 0.5160817, size.height * 0.1390071),
        radius: Radius.elliptical(
            size.width * 0.03054780, size.height * 0.01843972),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path72.lineTo(size.width * 0.5767367, size.height * 0.1602837);
    path72.arcToPoint(Offset(size.width * 0.5561756, size.height * 0.1589539),
        radius: Radius.elliptical(
            size.width * 0.02937289, size.height * 0.01773050),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path72.close();

    Paint paint72fill = Paint()..style = PaintingStyle.fill;
    paint72fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path72, paint72fill);

    Path path73 = Path();
    path73.moveTo(size.width * 0.5767367, size.height * 0.1602837);
    path73.lineTo(size.width * 0.5160817, size.height * 0.1390071);
    path73.lineTo(size.width * 0.5169628, size.height * 0.1390071);
    path73.lineTo(size.width * 0.5776179, size.height * 0.1602837);
    path73.lineTo(size.width * 0.5767367, size.height * 0.1602837);
    path73.close();

    Paint paint73fill = Paint()..style = PaintingStyle.fill;
    paint73fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path73, paint73fill);

    Path path74 = Path();
    path74.moveTo(size.width * 0.4636511, size.height * 0.5858156);
    path74.lineTo(size.width * 0.4029960, size.height * 0.5645390);
    path74.lineTo(size.width * 0.4266412, size.height * 0.1948582);
    path74.lineTo(size.width * 0.4872962, size.height * 0.2161348);
    path74.lineTo(size.width * 0.4636511, size.height * 0.5858156);
    path74.close();

    Paint paint74fill = Paint()..style = PaintingStyle.fill;
    paint74fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path74, paint74fill);

    Path path75 = Path();
    path75.moveTo(size.width * 0.4872962, size.height * 0.2161348);
    path75.lineTo(size.width * 0.4266412, size.height * 0.1950355);
    path75.arcToPoint(Offset(size.width * 0.4793655, size.height * 0.1418440),
        radius:
            Radius.elliptical(size.width * 0.1166104, size.height * 0.07039007),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path75.lineTo(size.width * 0.5400206, size.height * 0.1631206);
    path75.arcToPoint(Offset(size.width * 0.4872962, size.height * 0.2161348),
        radius:
            Radius.elliptical(size.width * 0.1174916, size.height * 0.07092199),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path75.close();

    Paint paint75fill = Paint()..style = PaintingStyle.fill;
    paint75fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path75, paint75fill);

    Path path76 = Path();
    path76.moveTo(size.width * 0.4872962, size.height * 0.2161348);
    path76.lineTo(size.width * 0.4266412, size.height * 0.1950355);
    path76.arcToPoint(Offset(size.width * 0.4358937, size.height * 0.1726950),
        radius:
            Radius.elliptical(size.width * 0.1017771, size.height * 0.06143617),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path76.lineTo(size.width * 0.4965487, size.height * 0.1939716);
    path76.arcToPoint(Offset(size.width * 0.4872962, size.height * 0.2163121),
        radius:
            Radius.elliptical(size.width * 0.1017771, size.height * 0.06143617),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path76.close();

    Paint paint76fill = Paint()..style = PaintingStyle.fill;
    paint76fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path76, paint76fill);

    Path path77 = Path();
    path77.moveTo(size.width * 0.4965487, size.height * 0.1937943);
    path77.lineTo(size.width * 0.4358937, size.height * 0.1725177);
    path77.arcToPoint(Offset(size.width * 0.4536643, size.height * 0.1547872),
        radius:
            Radius.elliptical(size.width * 0.1236599, size.height * 0.07464539),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path77.lineTo(size.width * 0.5140256, size.height * 0.1764184);
    path77.arcToPoint(Offset(size.width * 0.4962550, size.height * 0.1941489),
        radius:
            Radius.elliptical(size.width * 0.1288001, size.height * 0.07774823),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path77.close();

    Paint paint77fill = Paint()..style = PaintingStyle.fill;
    paint77fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path77, paint77fill);

    Path path78 = Path();
    path78.moveTo(size.width * 0.5140256, size.height * 0.1764184);
    path78.lineTo(size.width * 0.4533705, size.height * 0.1551418);
    path78.arcToPoint(Offset(size.width * 0.4793655, size.height * 0.1418440),
        radius: Radius.elliptical(
            size.width * 0.09237774, size.height * 0.05576241),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path78.lineTo(size.width * 0.5400206, size.height * 0.1631206);
    path78.arcToPoint(Offset(size.width * 0.5140256, size.height * 0.1764184),
        radius: Radius.elliptical(
            size.width * 0.09443384, size.height * 0.05700355),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path78.close();

    Paint paint78fill = Paint()..style = PaintingStyle.fill;
    paint78fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path78, paint78fill);

    Path path79 = Path();
    path79.moveTo(size.width * 0.5400206, size.height * 0.1628546);
    path79.cubicTo(
        size.width * 0.5682185,
        size.height * 0.1530142,
        size.width * 0.5915700,
        size.height * 0.1602837,
        size.width * 0.5930386,
        size.height * 0.1793440);
    path79.lineTo(size.width * 0.6200617, size.height * 0.5312943);
    path79.arcToPoint(Offset(size.width * 0.5673373, size.height * 0.5882092),
        radius:
            Radius.elliptical(size.width * 0.1158760, size.height * 0.06994681),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path79.lineTo(size.width * 0.5166691, size.height * 0.6059397);
    path79.cubicTo(
        size.width * 0.4864150,
        size.height * 0.6164894,
        size.width * 0.4621824,
        size.height * 0.6073582,
        size.width * 0.4636511,
        size.height * 0.5859043);
    path79.lineTo(size.width * 0.4872962, size.height * 0.2162234);
    path79.arcToPoint(Offset(size.width * 0.5400206, size.height * 0.1628546),
        radius:
            Radius.elliptical(size.width * 0.1174916, size.height * 0.07092199),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path79.close();

    Paint paint79fill = Paint()..style = PaintingStyle.fill;
    paint79fill.color = Color(0xffc2c3d0).withOpacity(1.0);
    canvas.drawPath(path79, paint79fill);

    Path path80 = Path();
    path80.moveTo(size.width * 0.5727713, size.height * 0.5070035);
    path80.lineTo(size.width * 0.5925980, size.height * 0.5139184);
    path80.arcToPoint(Offset(size.width * 0.5580849, size.height * 0.5159574),
        radius: Radius.elliptical(
            size.width * 0.03407255, size.height * 0.02056738),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path80.lineTo(size.width * 0.5382582, size.height * 0.5090426);
    path80.arcToPoint(Offset(size.width * 0.5727713, size.height * 0.5070035),
        radius: Radius.elliptical(
            size.width * 0.03333823, size.height * 0.02012411),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path80.close();

    Paint paint80fill = Paint()..style = PaintingStyle.fill;
    paint80fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path80, paint80fill);

    Path path81 = Path();
    path81.moveTo(size.width * 0.5580849, size.height * 0.5159574);
    path81.lineTo(size.width * 0.5382582, size.height * 0.5090426);
    path81.arcToPoint(Offset(size.width * 0.5663093, size.height * 0.5054965),
        radius: Radius.elliptical(
            size.width * 0.03877221, size.height * 0.02340426),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path81.lineTo(size.width * 0.5861360, size.height * 0.5125000);
    path81.arcToPoint(Offset(size.width * 0.5580849, size.height * 0.5159574),
        radius: Radius.elliptical(
            size.width * 0.03789103, size.height * 0.02287234),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path81.close();

    Paint paint81fill = Paint()..style = PaintingStyle.fill;
    paint81fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path81, paint81fill);

    Path path82 = Path();
    path82.moveTo(size.width * 0.5859891, size.height * 0.5125000);
    path82.lineTo(size.width * 0.5661624, size.height * 0.5053191);
    path82.arcToPoint(Offset(size.width * 0.5721839, size.height * 0.5068262),
        radius: Radius.elliptical(
            size.width * 0.02379204, size.height * 0.01436170),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path82.lineTo(size.width * 0.5920106, size.height * 0.5137411);
    path82.arcToPoint(Offset(size.width * 0.5859891, size.height * 0.5123227),
        radius: Radius.elliptical(
            size.width * 0.02335145, size.height * 0.01409574),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path82.close();

    Paint paint82fill = Paint()..style = PaintingStyle.fill;
    paint82fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path82, paint82fill);

    Path path83 = Path();
    path83.moveTo(size.width * 0.5241592, size.height * 0.5843085);
    path83.lineTo(size.width * 0.5043325, size.height * 0.5773936);
    path83.arcToPoint(Offset(size.width * 0.4896461, size.height * 0.5588652),
        radius: Radius.elliptical(
            size.width * 0.03377882, size.height * 0.02039007),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path83.arcToPoint(Offset(size.width * 0.5373770, size.height * 0.5090426),
        radius:
            Radius.elliptical(size.width * 0.1050081, size.height * 0.06338652),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path83.lineTo(size.width * 0.5580849, size.height * 0.5159574);
    path83.arcToPoint(Offset(size.width * 0.5103539, size.height * 0.5657801),
        radius:
            Radius.elliptical(size.width * 0.1054487, size.height * 0.06365248),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path83.arcToPoint(Offset(size.width * 0.5241592, size.height * 0.5843085),
        radius: Radius.elliptical(
            size.width * 0.03348509, size.height * 0.02021277),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path83.close();

    Paint paint83fill = Paint()..style = PaintingStyle.fill;
    paint83fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path83, paint83fill);

    Path path84 = Path();
    path84.moveTo(size.width * 0.5241592, size.height * 0.5843085);
    path84.lineTo(size.width * 0.5043325, size.height * 0.5773936);
    path84.arcToPoint(Offset(size.width * 0.4896461, size.height * 0.5588652),
        radius: Radius.elliptical(
            size.width * 0.03377882, size.height * 0.02039007),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path84.arcToPoint(Offset(size.width * 0.5022764, size.height * 0.5322695),
        radius: Radius.elliptical(
            size.width * 0.09663680, size.height * 0.05833333),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path84.lineTo(size.width * 0.5221031, size.height * 0.5391844);
    path84.arcToPoint(Offset(size.width * 0.5094728, size.height * 0.5657801),
        radius: Radius.elliptical(
            size.width * 0.09707740, size.height * 0.05859929),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path84.arcToPoint(Offset(size.width * 0.5234249, size.height * 0.5843085),
        radius: Radius.elliptical(
            size.width * 0.03348509, size.height * 0.02021277),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path84.close();

    Paint paint84fill = Paint()..style = PaintingStyle.fill;
    paint84fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path84, paint84fill);

    Path path85 = Path();
    path85.moveTo(size.width * 0.5228374, size.height * 0.5388298);
    path85.lineTo(size.width * 0.5030107, size.height * 0.5319149);
    path85.arcToPoint(Offset(size.width * 0.5381113, size.height * 0.5090426),
        radius: Radius.elliptical(
            size.width * 0.09869291, size.height * 0.05957447),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path85.lineTo(size.width * 0.5580849, size.height * 0.5159574);
    path85.arcToPoint(Offset(size.width * 0.5229843, size.height * 0.5388298),
        radius: Radius.elliptical(
            size.width * 0.09751799, size.height * 0.05886525),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path85.close();

    Paint paint85fill = Paint()..style = PaintingStyle.fill;
    paint85fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path85, paint85fill);

    Path path86 = Path();
    path86.moveTo(size.width * 0.5580849, size.height * 0.5159574);
    path86.cubicTo(
        size.width * 0.5845205,
        size.height * 0.5070922,
        size.width * 0.6059627,
        size.height * 0.5140957,
        size.width * 0.6061096,
        size.height * 0.5324468);
    path86.arcToPoint(Offset(size.width * 0.5580849, size.height * 0.5823582),
        radius:
            Radius.elliptical(size.width * 0.1054487, size.height * 0.06365248),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path86.cubicTo(
        size.width * 0.5316493,
        size.height * 0.5912234,
        size.width * 0.5102071,
        size.height * 0.5841312,
        size.width * 0.5100602,
        size.height * 0.5657801);
    path86.arcToPoint(Offset(size.width * 0.5580849, size.height * 0.5159574),
        radius:
            Radius.elliptical(size.width * 0.1054487, size.height * 0.06365248),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path86.close();

    Paint paint86fill = Paint()..style = PaintingStyle.fill;
    paint86fill.color = Color(0xff252529).withOpacity(1.0);
    canvas.drawPath(path86, paint86fill);

    Path path87 = Path();
    path87.moveTo(size.width * 0.9518285, size.height * 0.3038121);
    path87.lineTo(size.width * 0.9208401, size.height * 0.2925532);
    path87.arcToPoint(Offset(size.width * 0.9126157, size.height * 0.2816489),
        radius: Radius.elliptical(
            size.width * 0.01953297, size.height * 0.01179078),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path87.lineTo(size.width * 0.9436041, size.height * 0.2925532);
    path87.arcToPoint(Offset(size.width * 0.9518285, size.height * 0.3038121),
        radius: Radius.elliptical(
            size.width * 0.02026729, size.height * 0.01223404),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path87.close();

    Paint paint87fill = Paint()..style = PaintingStyle.fill;
    paint87fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path87, paint87fill);

    Path path88 = Path();
    path88.moveTo(size.width * 0.9518285, size.height * 0.3038121);
    path88.lineTo(size.width * 0.9208401, size.height * 0.2925532);
    path88.arcToPoint(Offset(size.width * 0.9126157, size.height * 0.2816489),
        radius: Radius.elliptical(
            size.width * 0.01953297, size.height * 0.01179078),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path88.lineTo(size.width * 0.9436041, size.height * 0.2925532);
    path88.arcToPoint(Offset(size.width * 0.9518285, size.height * 0.3034574),
        radius: Radius.elliptical(
            size.width * 0.02026729, size.height * 0.01223404),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path88.close();

    Paint paint88fill = Paint()..style = PaintingStyle.fill;
    paint88fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path88, paint88fill);

    Path path89 = Path();
    path89.moveTo(size.width * 0.9436041, size.height * 0.2929078);
    path89.lineTo(size.width * 0.9126157, size.height * 0.2820035);
    path89.lineTo(size.width * 0.9115876, size.height * 0.06267730);
    path89.lineTo(size.width * 0.9427229, size.height * 0.07358156);
    path89.lineTo(size.width * 0.9436041, size.height * 0.2929078);
    path89.close();

    Paint paint89fill = Paint()..style = PaintingStyle.fill;
    paint89fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path89, paint89fill);

    Path path90 = Path();
    path90.moveTo(size.width * 0.9596123, size.height * 0.03218085);
    path90.lineTo(size.width * 0.9907475, size.height * 0.04308511);
    path90.arcToPoint(Offset(size.width * 0.9707740, size.height * 0.04432624),
        radius: Radius.elliptical(
            size.width * 0.01938611, size.height * 0.01170213),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path90.lineTo(size.width * 0.9399324, size.height * 0.03333333);
    path90.arcToPoint(Offset(size.width * 0.9596123, size.height * 0.03218085),
        radius: Radius.elliptical(
            size.width * 0.01938611, size.height * 0.01170213),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path90.close();

    Paint paint90fill = Paint()..style = PaintingStyle.fill;
    paint90fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path90, paint90fill);

    Path path91 = Path();
    path91.moveTo(size.width * 0.9707740, size.height * 0.04432624);
    path91.lineTo(size.width * 0.9399324, size.height * 0.03333333);
    path91.arcToPoint(Offset(size.width * 0.9458070, size.height * 0.03173759),
        radius: Radius.elliptical(
            size.width * 0.02937289, size.height * 0.01773050),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path91.lineTo(size.width * 0.9766486, size.height * 0.04264184);
    path91.arcToPoint(Offset(size.width * 0.9707740, size.height * 0.04423759),
        radius: Radius.elliptical(
            size.width * 0.02937289, size.height * 0.01773050),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path91.close();

    Paint paint91fill = Paint()..style = PaintingStyle.fill;
    paint91fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path91, paint91fill);

    Path path92 = Path();
    path92.moveTo(size.width * 0.9766486, size.height * 0.04264184);
    path92.lineTo(size.width * 0.9455133, size.height * 0.03173759);
    path92.arcToPoint(Offset(size.width * 0.9546189, size.height * 0.03111702),
        radius: Radius.elliptical(
            size.width * 0.01835806, size.height * 0.01108156),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path92.lineTo(size.width * 0.9857541, size.height * 0.04202128);
    path92.arcToPoint(Offset(size.width * 0.9766486, size.height * 0.04264184),
        radius: Radius.elliptical(
            size.width * 0.01821119, size.height * 0.01099291),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path92.close();

    Paint paint92fill = Paint()..style = PaintingStyle.fill;
    paint92fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path92, paint92fill);

    Path path93 = Path();
    path93.moveTo(size.width * 0.9857541, size.height * 0.04202128);
    path93.lineTo(size.width * 0.9546189, size.height * 0.03111702);
    path93.arcToPoint(Offset(size.width * 0.9596123, size.height * 0.03218085),
        radius: Radius.elliptical(
            size.width * 0.01468644, size.height * 0.008865248),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path93.lineTo(size.width * 0.9907475, size.height * 0.04308511);
    path93.arcToPoint(Offset(size.width * 0.9857541, size.height * 0.04202128),
        radius: Radius.elliptical(
            size.width * 0.01468644, size.height * 0.008865248),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path93.close();

    Paint paint93fill = Paint()..style = PaintingStyle.fill;
    paint93fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path93, paint93fill);

    Path path94 = Path();
    path94.moveTo(size.width * 0.9425760, size.height * 0.07358156);
    path94.lineTo(size.width * 0.9115876, size.height * 0.06267730);
    path94.arcToPoint(Offset(size.width * 0.9399324, size.height * 0.03333333),
        radius: Radius.elliptical(
            size.width * 0.06138934, size.height * 0.03705674),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path94.lineTo(size.width * 0.9707740, size.height * 0.04432624);
    path94.arcToPoint(Offset(size.width * 0.9425760, size.height * 0.07358156),
        radius: Radius.elliptical(
            size.width * 0.06197680, size.height * 0.03741135),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path94.close();

    Paint paint94fill = Paint()..style = PaintingStyle.fill;
    paint94fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path94, paint94fill);

    Path path95 = Path();
    path95.moveTo(size.width * 0.9425760, size.height * 0.07358156);
    path95.lineTo(size.width * 0.9115876, size.height * 0.06267730);
    path95.arcToPoint(Offset(size.width * 0.9115876, size.height * 0.05789007),
        radius: Radius.elliptical(
            size.width * 0.03715670, size.height * 0.02242908),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path95.lineTo(size.width * 0.9427229, size.height * 0.06879433);
    path95.arcToPoint(Offset(size.width * 0.9418417, size.height * 0.07358156),
        radius: Radius.elliptical(
            size.width * 0.03745043, size.height * 0.02260638),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path95.close();

    Paint paint95fill = Paint()..style = PaintingStyle.fill;
    paint95fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path95, paint95fill);

    Path path96 = Path();
    path96.moveTo(size.width * 0.9434572, size.height * 0.06879433);
    path96.lineTo(size.width * 0.9123219, size.height * 0.05789007);
    path96.arcToPoint(Offset(size.width * 0.9159935, size.height * 0.05062057),
        radius: Radius.elliptical(
            size.width * 0.05389925, size.height * 0.03253546),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path96.lineTo(size.width * 0.9469819, size.height * 0.06152482);
    path96.arcToPoint(Offset(size.width * 0.9434572, size.height * 0.06879433),
        radius: Radius.elliptical(
            size.width * 0.06227052, size.height * 0.03758865),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path96.close();

    Paint paint96fill = Paint()..style = PaintingStyle.fill;
    paint96fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path96, paint96fill);

    Path path97 = Path();
    path97.moveTo(size.width * 0.9469819, size.height * 0.06152482);
    path97.lineTo(size.width * 0.9159935, size.height * 0.05062057);
    path97.arcToPoint(Offset(size.width * 0.9218681, size.height * 0.04388298),
        radius: Radius.elliptical(
            size.width * 0.06755764, size.height * 0.04078014),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path97.lineTo(size.width * 0.9530034, size.height * 0.05478723);
    path97.arcToPoint(Offset(size.width * 0.9469819, size.height * 0.06152482),
        radius: Radius.elliptical(
            size.width * 0.06843883, size.height * 0.04131206),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path97.close();

    Paint paint97fill = Paint()..style = PaintingStyle.fill;
    paint97fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path97, paint97fill);

    Path path98 = Path();
    path98.moveTo(size.width * 0.9530034, size.height * 0.05478723);
    path98.lineTo(size.width * 0.9218681, size.height * 0.04432624);
    path98.arcToPoint(Offset(size.width * 0.9321486, size.height * 0.03714539),
        radius: Radius.elliptical(
            size.width * 0.06182993, size.height * 0.03732270),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path98.lineTo(size.width * 0.9632839, size.height * 0.04804965);
    path98.arcToPoint(Offset(size.width * 0.9530034, size.height * 0.05523050),
        radius: Radius.elliptical(
            size.width * 0.06182993, size.height * 0.03732270),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path98.close();

    Paint paint98fill = Paint()..style = PaintingStyle.fill;
    paint98fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path98, paint98fill);

    Path path99 = Path();
    path99.moveTo(size.width * 0.9632839, size.height * 0.04760638);
    path99.lineTo(size.width * 0.9321486, size.height * 0.03670213);
    path99.arcToPoint(Offset(size.width * 0.9399324, size.height * 0.03333333),
        radius: Radius.elliptical(
            size.width * 0.03818476, size.height * 0.02304965),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path99.lineTo(size.width * 0.9707740, size.height * 0.04432624);
    path99.arcToPoint(Offset(size.width * 0.9632839, size.height * 0.04769504),
        radius: Radius.elliptical(
            size.width * 0.03818476, size.height * 0.02304965),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path99.close();

    Paint paint99fill = Paint()..style = PaintingStyle.fill;
    paint99fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path99, paint99fill);

    Path path100 = Path();
    path100.moveTo(size.width * 0.9707740, size.height * 0.04432624);
    path100.cubicTo(
        size.width * 0.9863416,
        size.height * 0.03882979,
        size.width * 0.9986782,
        size.height * 0.04317376,
        size.width * 0.9986782,
        size.height * 0.05398936);
    path100.lineTo(size.width * 0.9997063, size.height * 0.2732270);
    path100.arcToPoint(Offset(size.width * 0.9716552, size.height * 0.3025709),
        radius: Radius.elliptical(
            size.width * 0.06182993, size.height * 0.03732270),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path100.cubicTo(
        size.width * 0.9560875,
        size.height * 0.3080674,
        size.width * 0.9434572,
        size.height * 0.3036348,
        size.width * 0.9433103,
        size.height * 0.2929078);
    path100.lineTo(size.width * 0.9425760, size.height * 0.07358156);
    path100.arcToPoint(Offset(size.width * 0.9707740, size.height * 0.04432624),
        radius: Radius.elliptical(
            size.width * 0.06197680, size.height * 0.03741135),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path100.close();

    Paint paint100fill = Paint()..style = PaintingStyle.fill;
    paint100fill.color = Color(0xffc2c3d0).withOpacity(1.0);
    canvas.drawPath(path100, paint100fill);

    Path path101 = Path();
    path101.moveTo(size.width * 0.9806139, size.height * 0.2659574);
    path101.lineTo(size.width * 0.9881040, size.height * 0.2686170);
    path101.arcToPoint(Offset(size.width * 0.9751799, size.height * 0.2694149),
        radius: Radius.elliptical(
            size.width * 0.01277721, size.height * 0.007712766),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path101.lineTo(size.width * 0.9676898, size.height * 0.2667553);
    path101.arcToPoint(Offset(size.width * 0.9806139, size.height * 0.2659574),
        radius: Radius.elliptical(
            size.width * 0.01277721, size.height * 0.007712766),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path101.close();

    Paint paint101fill = Paint()..style = PaintingStyle.fill;
    paint101fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path101, paint101fill);

    Path path102 = Path();
    path102.moveTo(size.width * 0.9751799, size.height * 0.2694149);
    path102.lineTo(size.width * 0.9676898, size.height * 0.2667553);
    path102.arcToPoint(Offset(size.width * 0.9782641, size.height * 0.2654255),
        radius: Radius.elliptical(
            size.width * 0.01468644, size.height * 0.008865248),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path102.lineTo(size.width * 0.9859010, size.height * 0.2680851);
    path102.arcToPoint(Offset(size.width * 0.9751799, size.height * 0.2694149),
        radius: Radius.elliptical(
            size.width * 0.01468644, size.height * 0.008865248),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path102.close();

    Paint paint102fill = Paint()..style = PaintingStyle.fill;
    paint102fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path102, paint102fill);

    Path path103 = Path();
    path103.moveTo(size.width * 0.9859010, size.height * 0.2680851);
    path103.lineTo(size.width * 0.9782641, size.height * 0.2654255);
    path103.arcToPoint(Offset(size.width * 0.9806139, size.height * 0.2659574),
        radius: Radius.elliptical(
            size.width * 0.006462036, size.height * 0.003900709),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path103.lineTo(size.width * 0.9881040, size.height * 0.2686170);
    path103.arcToPoint(Offset(size.width * 0.9859010, size.height * 0.2680851),
        radius: Radius.elliptical(
            size.width * 0.006902629, size.height * 0.004166667),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path103.close();

    Paint paint103fill = Paint()..style = PaintingStyle.fill;
    paint103fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path103, paint103fill);

    Path path104 = Path();
    path104.moveTo(size.width * 0.9624027, size.height * 0.2953901);
    path104.lineTo(size.width * 0.9546189, size.height * 0.2925532);
    path104.arcToPoint(Offset(size.width * 0.9493318, size.height * 0.2855496),
        radius: Radius.elliptical(
            size.width * 0.01263034, size.height * 0.007624113),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path104.arcToPoint(Offset(size.width * 0.9675430, size.height * 0.2665780),
        radius: Radius.elliptical(
            size.width * 0.03980026, size.height * 0.02402482),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path104.lineTo(size.width * 0.9750330, size.height * 0.2692376);
    path104.arcToPoint(Offset(size.width * 0.9569687, size.height * 0.2882092),
        radius: Radius.elliptical(
            size.width * 0.03965340, size.height * 0.02393617),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path104.arcToPoint(Offset(size.width * 0.9624027, size.height * 0.2953901),
        radius: Radius.elliptical(
            size.width * 0.01233661, size.height * 0.007446809),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path104.close();

    Paint paint104fill = Paint()..style = PaintingStyle.fill;
    paint104fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path104, paint104fill);

    Path path105 = Path();
    path105.moveTo(size.width * 0.9624027, size.height * 0.2953901);
    path105.lineTo(size.width * 0.9546189, size.height * 0.2925532);
    path105.arcToPoint(Offset(size.width * 0.9493318, size.height * 0.2855496),
        radius: Radius.elliptical(
            size.width * 0.01263034, size.height * 0.007624113),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path105.arcToPoint(Offset(size.width * 0.9546189, size.height * 0.2754433),
        radius: Radius.elliptical(
            size.width * 0.03745043, size.height * 0.02260638),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path105.lineTo(size.width * 0.9621090, size.height * 0.2781028);
    path105.arcToPoint(Offset(size.width * 0.9574093, size.height * 0.2883865),
        radius: Radius.elliptical(
            size.width * 0.03510060, size.height * 0.02118794),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path105.arcToPoint(Offset(size.width * 0.9626964, size.height * 0.2953901),
        radius: Radius.elliptical(
            size.width * 0.01233661, size.height * 0.007446809),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path105.close();

    Paint paint105fill = Paint()..style = PaintingStyle.fill;
    paint105fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path105, paint105fill);

    Path path106 = Path();
    path106.moveTo(size.width * 0.9618152, size.height * 0.2781028);
    path106.lineTo(size.width * 0.9543252, size.height * 0.2754433);
    path106.arcToPoint(Offset(size.width * 0.9676898, size.height * 0.2665780),
        radius: Radius.elliptical(
            size.width * 0.03847848, size.height * 0.02322695),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path106.lineTo(size.width * 0.9751799, size.height * 0.2692376);
    path106.arcToPoint(Offset(size.width * 0.9618152, size.height * 0.2781028),
        radius: Radius.elliptical(
            size.width * 0.03730357, size.height * 0.02251773),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path106.close();

    Paint paint106fill = Paint()..style = PaintingStyle.fill;
    paint106fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path106, paint106fill);

    Path path107 = Path();
    path107.moveTo(size.width * 0.9751799, size.height * 0.2694149);
    path107.cubicTo(
        size.width * 0.9853136,
        size.height * 0.2658688,
        size.width * 0.9933911,
        size.height * 0.2687057,
        size.width * 0.9933911,
        size.height * 0.2757092);
    path107.arcToPoint(Offset(size.width * 0.9753268, size.height * 0.2946809),
        radius: Radius.elliptical(
            size.width * 0.04009399, size.height * 0.02420213),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path107.cubicTo(
        size.width * 0.9651931,
        size.height * 0.2981383,
        size.width * 0.9571156,
        size.height * 0.2953014,
        size.width * 0.9571156,
        size.height * 0.2883865);
    path107.arcToPoint(Offset(size.width * 0.9751799, size.height * 0.2694149),
        radius: Radius.elliptical(
            size.width * 0.03965340, size.height * 0.02393617),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path107.close();

    Paint paint107fill = Paint()..style = PaintingStyle.fill;
    paint107fill.color = Color(0xff252529).withOpacity(1.0);
    canvas.drawPath(path107, paint107fill);

    Path path108 = Path();
    path108.moveTo(size.width * 0.9863416, size.height * 0.05132979);
    path108.lineTo(size.width * 0.9938317, size.height * 0.05398936);
    path108.arcToPoint(Offset(size.width * 0.9809076, size.height * 0.05478723),
        radius: Radius.elliptical(
            size.width * 0.01277721, size.height * 0.007712766),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path108.lineTo(size.width * 0.9734175, size.height * 0.05212766);
    path108.arcToPoint(Offset(size.width * 0.9863416, size.height * 0.05132979),
        radius: Radius.elliptical(
            size.width * 0.01277721, size.height * 0.007712766),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path108.close();

    Paint paint108fill = Paint()..style = PaintingStyle.fill;
    paint108fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path108, paint108fill);

    Path path109 = Path();
    path109.moveTo(size.width * 0.9809076, size.height * 0.05478723);
    path109.lineTo(size.width * 0.9734175, size.height * 0.05212766);
    path109.arcToPoint(Offset(size.width * 0.9839918, size.height * 0.05079787),
        radius: Radius.elliptical(
            size.width * 0.01351153, size.height * 0.008156028),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path109.lineTo(size.width * 0.9916287, size.height * 0.05345745);
    path109.arcToPoint(Offset(size.width * 0.9809076, size.height * 0.05478723),
        radius: Radius.elliptical(
            size.width * 0.01380526, size.height * 0.008333333),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path109.close();

    Paint paint109fill = Paint()..style = PaintingStyle.fill;
    paint109fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path109, paint109fill);

    Path path110 = Path();
    path110.moveTo(size.width * 0.9916287, size.height * 0.05319149);
    path110.lineTo(size.width * 0.9839918, size.height * 0.05079787);
    path110.arcToPoint(Offset(size.width * 0.9863416, size.height * 0.05132979),
        radius: Radius.elliptical(
            size.width * 0.006462036, size.height * 0.003900709),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path110.lineTo(size.width * 0.9938317, size.height * 0.05398936);
    path110.arcToPoint(Offset(size.width * 0.9916287, size.height * 0.05319149),
        radius: Radius.elliptical(
            size.width * 0.005727713, size.height * 0.003457447),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path110.close();

    Paint paint110fill = Paint()..style = PaintingStyle.fill;
    paint110fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path110, paint110fill);

    Path path111 = Path();
    path111.moveTo(size.width * 0.9679836, size.height * 0.08085106);
    path111.lineTo(size.width * 0.9604935, size.height * 0.07819149);
    path111.arcToPoint(Offset(size.width * 0.9546189, size.height * 0.07092199),
        radius: Radius.elliptical(
            size.width * 0.01277721, size.height * 0.007712766),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path111.arcToPoint(Offset(size.width * 0.9728301, size.height * 0.05195035),
        radius: Radius.elliptical(
            size.width * 0.03935967, size.height * 0.02375887),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path111.lineTo(size.width * 0.9803202, size.height * 0.05460993);
    path111.arcToPoint(Offset(size.width * 0.9621090, size.height * 0.07358156),
        radius: Radius.elliptical(
            size.width * 0.03980026, size.height * 0.02402482),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path111.arcToPoint(Offset(size.width * 0.9679836, size.height * 0.08085106),
        radius: Radius.elliptical(
            size.width * 0.01292407, size.height * 0.007801418),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path111.close();

    Paint paint111fill = Paint()..style = PaintingStyle.fill;
    paint111fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path111, paint111fill);

    Path path112 = Path();
    path112.moveTo(size.width * 0.9679836, size.height * 0.08085106);
    path112.lineTo(size.width * 0.9604935, size.height * 0.07819149);
    path112.arcToPoint(Offset(size.width * 0.9546189, size.height * 0.07092199),
        radius: Radius.elliptical(
            size.width * 0.01277721, size.height * 0.007712766),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path112.arcToPoint(Offset(size.width * 0.9593185, size.height * 0.06063830),
        radius: Radius.elliptical(
            size.width * 0.03554120, size.height * 0.02145390),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path112.lineTo(size.width * 0.9669555, size.height * 0.06329787);
    path112.arcToPoint(Offset(size.width * 0.9621090, size.height * 0.07358156),
        radius: Radius.elliptical(
            size.width * 0.03583492, size.height * 0.02163121),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path112.arcToPoint(Offset(size.width * 0.9673961, size.height * 0.08067376),
        radius: Radius.elliptical(
            size.width * 0.01292407, size.height * 0.007801418),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path112.close();

    Paint paint112fill = Paint()..style = PaintingStyle.fill;
    paint112fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path112, paint112fill);

    Path path113 = Path();
    path113.moveTo(size.width * 0.9675430, size.height * 0.06347518);
    path113.lineTo(size.width * 0.9599060, size.height * 0.06081560);
    path113.arcToPoint(Offset(size.width * 0.9734175, size.height * 0.05195035),
        radius: Radius.elliptical(
            size.width * 0.03656925, size.height * 0.02207447),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path113.lineTo(size.width * 0.9809076, size.height * 0.05460993);
    path113.arcToPoint(Offset(size.width * 0.9675430, size.height * 0.06347518),
        radius: Radius.elliptical(
            size.width * 0.03627552, size.height * 0.02189716),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path113.close();

    Paint paint113fill = Paint()..style = PaintingStyle.fill;
    paint113fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path113, paint113fill);

    Path path114 = Path();
    path114.moveTo(size.width * 0.9809076, size.height * 0.05478723);
    path114.cubicTo(
        size.width * 0.9910413,
        size.height * 0.05124113,
        size.width * 0.9992657,
        size.height * 0.05407801,
        size.width * 0.9992657,
        size.height * 0.06108156);
    path114.arcToPoint(Offset(size.width * 0.9810545, size.height * 0.07978723),
        radius: Radius.elliptical(
            size.width * 0.04009399, size.height * 0.02420213),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path114.cubicTo(
        size.width * 0.9709208,
        size.height * 0.08333333,
        size.width * 0.9626964,
        size.height * 0.08049645,
        size.width * 0.9626964,
        size.height * 0.07349291);
    path114.arcToPoint(Offset(size.width * 0.9809076, size.height * 0.05478723),
        radius: Radius.elliptical(
            size.width * 0.03980026, size.height * 0.02402482),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path114.close();

    Paint paint114fill = Paint()..style = PaintingStyle.fill;
    paint114fill.color = Color(0xff252529).withOpacity(1.0);
    canvas.drawPath(path114, paint114fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
