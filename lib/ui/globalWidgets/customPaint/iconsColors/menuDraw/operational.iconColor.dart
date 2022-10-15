import 'package:flutter/material.dart';

Widget operationalIconColor({@required double xwidth}) {
  return CustomPaint(
    size: Size(xwidth, (xwidth * 0.9855414112839855).toDouble()),
    painter: OperationalIconColor(),
  );
}

class OperationalIconColor extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.6867830, size.height * 0.5707224);
    path0.arcToPoint(Offset(size.width * 0.7125570, size.height * 0.5056610),
        radius: Radius.elliptical(
            size.width * 0.09193777, size.height * 0.09328656),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path0.cubicTo(
        size.width * 0.7318875,
        size.height * 0.4854090,
        size.width * 0.7454031,
        size.height * 0.4685058,
        size.width * 0.7454031,
        size.height * 0.4356562);
    path0.lineTo(size.width * 0.7454031, size.height * 0.4294371);
    path0.lineTo(size.width * 0.8255540, size.height * 0.4294371);
    path0.lineTo(size.width * 0.8255540, size.height * 0.4356562);
    path0.cubicTo(
        size.width * 0.8255540,
        size.height * 0.4685058,
        size.width * 0.8392268,
        size.height * 0.4854090,
        size.width * 0.8584001,
        size.height * 0.5056610);
    path0.arcToPoint(Offset(size.width * 0.8843313, size.height * 0.5707224),
        radius: Radius.elliptical(
            size.width * 0.09209492, size.height * 0.09344602),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path0.lineTo(size.width * 0.8843313, size.height * 0.7939723);
    path0.arcToPoint(Offset(size.width * 0.8470847, size.height * 0.8317653),
        radius: Radius.elliptical(
            size.width * 0.03740374, size.height * 0.03795248),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path0.lineTo(size.width * 0.7240295, size.height * 0.8317653);
    path0.arcToPoint(Offset(size.width * 0.6867830, size.height * 0.7939723),
        radius: Radius.elliptical(
            size.width * 0.03724658, size.height * 0.03779302),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path0.close();
    path0.moveTo(size.width * 0.3979255, size.height * 0.5707224);
    path0.arcToPoint(Offset(size.width * 0.4243281, size.height * 0.5056610),
        radius: Radius.elliptical(
            size.width * 0.09193777, size.height * 0.09328656),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path0.cubicTo(
        size.width * 0.4436587,
        size.height * 0.4854090,
        size.width * 0.4571743,
        size.height * 0.4685058,
        size.width * 0.4571743,
        size.height * 0.4356562);
    path0.lineTo(size.width * 0.4571743, size.height * 0.4294371);
    path0.lineTo(size.width * 0.5373252, size.height * 0.4294371);
    path0.lineTo(size.width * 0.5373252, size.height * 0.4356562);
    path0.cubicTo(
        size.width * 0.5373252,
        size.height * 0.4685058,
        size.width * 0.5509980,
        size.height * 0.4854090,
        size.width * 0.5701713,
        size.height * 0.5056610);
    path0.arcToPoint(Offset(size.width * 0.5961025, size.height * 0.5707224),
        radius: Radius.elliptical(
            size.width * 0.09209492, size.height * 0.09344602),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path0.lineTo(size.width * 0.5961025, size.height * 0.7939723);
    path0.arcToPoint(Offset(size.width * 0.5588559, size.height * 0.8317653),
        radius: Radius.elliptical(
            size.width * 0.03724658, size.height * 0.03779302),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path0.lineTo(size.width * 0.4351721, size.height * 0.8317653);
    path0.arcToPoint(Offset(size.width * 0.3979255, size.height * 0.7939723),
        radius: Radius.elliptical(
            size.width * 0.03724658, size.height * 0.03779302),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path0.lineTo(size.width * 0.3979255, size.height * 0.5707224);
    path0.close();
    path0.moveTo(size.width * 0.1571586, size.height * 0.3713921);
    path0.arcToPoint(Offset(size.width * 0.1632878, size.height * 0.3653325),
        radius: Radius.elliptical(
            size.width * 0.005972026, size.height * 0.006059640),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path0.lineTo(size.width * 0.2514537, size.height * 0.3653325);
    path0.arcToPoint(Offset(size.width * 0.2575829, size.height * 0.3713921),
        radius: Radius.elliptical(
            size.width * 0.005972026, size.height * 0.006059640),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path0.lineTo(size.width * 0.2575829, size.height * 0.4032850);
    path0.lineTo(size.width * 0.1571586, size.height * 0.4032850);
    path0.close();
    path0.moveTo(size.width * 0.1090680, size.height * 0.5707224);
    path0.arcToPoint(Offset(size.width * 0.1349992, size.height * 0.5056610),
        radius: Radius.elliptical(
            size.width * 0.09130913, size.height * 0.09264870),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path0.cubicTo(
        size.width * 0.1541726,
        size.height * 0.4854090,
        size.width * 0.1678454,
        size.height * 0.4685058,
        size.width * 0.1678454,
        size.height * 0.4356562);
    path0.lineTo(size.width * 0.1678454, size.height * 0.4294371);
    path0.lineTo(size.width * 0.2479962, size.height * 0.4294371);
    path0.lineTo(size.width * 0.2479962, size.height * 0.4356562);
    path0.cubicTo(
        size.width * 0.2479962,
        size.height * 0.4685058,
        size.width * 0.2615119,
        size.height * 0.4854090,
        size.width * 0.2808424,
        size.height * 0.5056610);
    path0.arcToPoint(Offset(size.width * 0.3066164, size.height * 0.5707224),
        radius: Radius.elliptical(
            size.width * 0.09193777, size.height * 0.09328656),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path0.lineTo(size.width * 0.3066164, size.height * 0.7939723);
    path0.arcToPoint(Offset(size.width * 0.2693698, size.height * 0.8317653),
        radius: Radius.elliptical(
            size.width * 0.03724658, size.height * 0.03779302),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path0.lineTo(size.width * 0.1463146, size.height * 0.8317653);
    path0.arcToPoint(Offset(size.width * 0.1090680, size.height * 0.7939723),
        radius: Radius.elliptical(
            size.width * 0.03724658, size.height * 0.03779302),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path0.close();
    path0.moveTo(size.width * 0.9308502, size.height);
    path0.lineTo(size.width * 0.06914977, size.height);
    path0.arcToPoint(Offset(size.width * 0.06914977, size.height * 0.8590336),
        radius: Radius.elliptical(
            size.width * 0.06946409, size.height * 0.07048318),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path0.lineTo(size.width * 0.9308502, size.height * 0.8590336);
    path0.arcToPoint(Offset(size.width * 0.9308502, size.height * 1.000000),
        radius: Radius.elliptical(
            size.width * 0.06946409, size.height * 0.07048318),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path0.close();

    Paint paint0fill = Paint()..style = PaintingStyle.fill;
    paint0fill.color = Color(0xff545454).withOpacity(1.0);
    canvas.drawPath(path0, paint0fill);

    Path path1 = Path();
    path1.moveTo(size.width * 0.1584158, size.height * 0.5833200);
    path1.lineTo(size.width * 0.2572686, size.height * 0.5833200);
    path1.lineTo(size.width * 0.2572686, size.height * 0.7813746);
    path1.lineTo(size.width * 0.1584158, size.height * 0.7813746);
    path1.close();

    Paint paint1stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint1stroke.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path1, paint1stroke);

    Paint paint1fill = Paint()..style = PaintingStyle.fill;
    paint1fill.color = Color(0xffe55d4c).withOpacity(1.0);
    canvas.drawPath(path1, paint1fill);

    Path path2 = Path();
    path2.moveTo(size.width * 0.4472733, size.height * 0.5833200);
    path2.lineTo(size.width * 0.5461260, size.height * 0.5833200);
    path2.lineTo(size.width * 0.5461260, size.height * 0.7813746);
    path2.lineTo(size.width * 0.4472733, size.height * 0.7813746);
    path2.lineTo(size.width * 0.4472733, size.height * 0.5833200);
    path2.close();

    Paint paint2stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint2stroke.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path2, paint2stroke);

    Paint paint2fill = Paint()..style = PaintingStyle.fill;
    paint2fill.color = Color(0xffe55d4c).withOpacity(1.0);
    canvas.drawPath(path2, paint2fill);

    Path path3 = Path();
    path3.moveTo(size.width * 0.7361308, size.height * 0.5833200);
    path3.lineTo(size.width * 0.8348263, size.height * 0.5833200);
    path3.lineTo(size.width * 0.8348263, size.height * 0.7813746);
    path3.lineTo(size.width * 0.7361308, size.height * 0.7813746);
    path3.close();

    Paint paint3stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint3stroke.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path3, paint3stroke);

    Paint paint3fill = Paint()..style = PaintingStyle.fill;
    paint3fill.color = Color(0xffe55d4c).withOpacity(1.0);
    canvas.drawPath(path3, paint3fill);

    Path path4 = Path();
    path4.moveTo(size.width * 0.4835769, size.height * 0.1637697);
    path4.lineTo(size.width * 0.4835769, size.height * 0.2318609);
    path4.lineTo(size.width * 0.4521452, size.height * 0.2318609);
    path4.arcToPoint(Offset(size.width * 0.4398868, size.height * 0.2444586),
        radius: Radius.elliptical(
            size.width * 0.01225837, size.height * 0.01243821),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path4.lineTo(size.width * 0.4398868, size.height * 0.3082443);
    path4.arcToPoint(Offset(size.width * 0.4213421, size.height * 0.3371073),
        radius: Radius.elliptical(
            size.width * 0.03143171, size.height * 0.03189284),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path4.lineTo(size.width * 0.4213421, size.height * 0.3814384);
    path4.arcToPoint(Offset(size.width * 0.4337577, size.height * 0.3940360),
        radius: Radius.elliptical(
            size.width * 0.01241553, size.height * 0.01259767),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path4.lineTo(size.width * 0.5594845, size.height * 0.3940360);
    path4.arcToPoint(Offset(size.width * 0.5717429, size.height * 0.3814384),
        radius: Radius.elliptical(
            size.width * 0.01225837, size.height * 0.01243821),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path4.lineTo(size.width * 0.5717429, size.height * 0.3366289);
    path4.arcToPoint(Offset(size.width * 0.5519409, size.height * 0.3072875),
        radius: Radius.elliptical(
            size.width * 0.03143171, size.height * 0.03189284),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path4.lineTo(size.width * 0.5519409, size.height * 0.2444586);
    path4.arcToPoint(Offset(size.width * 0.5396825, size.height * 0.2318609),
        radius: Radius.elliptical(
            size.width * 0.01225837, size.height * 0.01243821),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path4.lineTo(size.width * 0.5082508, size.height * 0.2318609);
    path4.lineTo(size.width * 0.5082508, size.height * 0.1637697);
    path4.arcToPoint(Offset(size.width * 0.4578029, size.height * 0.1077978),
        radius: Radius.elliptical(
            size.width * 0.04133270, size.height * 0.04193908),
        rotation: 0,
        largeArc: true,
        clockwise: false);
    path4.lineTo(size.width * 0.1338991, size.height * 0.1077978);
    path4.lineTo(size.width * 0.1338991, size.height * 0.1329931);
    path4.lineTo(size.width * 0.4557599, size.height * 0.1329931);
    path4.arcToPoint(Offset(size.width * 0.4835769, size.height * 0.1637697),
        radius: Radius.elliptical(
            size.width * 0.04070407, size.height * 0.04130123),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path4.close();
    path4.moveTo(size.width * 0.5464404, size.height * 0.3683623);
    path4.lineTo(size.width * 0.4463303, size.height * 0.3683623);
    path4.lineTo(size.width * 0.4463303, size.height * 0.3364695);
    path4.arcToPoint(Offset(size.width * 0.4523024, size.height * 0.3302504),
        radius: Radius.elliptical(
            size.width * 0.005972026, size.height * 0.006059640),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path4.lineTo(size.width * 0.5409398, size.height * 0.3302504);
    path4.arcToPoint(Offset(size.width * 0.5470690, size.height * 0.3364695),
        radius: Radius.elliptical(
            size.width * 0.005972026, size.height * 0.006059640),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path4.lineTo(size.width * 0.5470690, size.height * 0.3683623);
    path4.close();
    path4.moveTo(size.width * 0.5272670, size.height * 0.3029820);
    path4.lineTo(size.width * 0.4644036, size.height * 0.3029820);
    path4.lineTo(size.width * 0.4644036, size.height * 0.2568968);
    path4.lineTo(size.width * 0.5272670, size.height * 0.2568968);
    path4.close();
    path4.moveTo(size.width * 0.4958353, size.height * 0.1074789);
    path4.arcToPoint(Offset(size.width * 0.4801194, size.height * 0.1234253),
        radius: Radius.elliptical(
            size.width * 0.01571586, size.height * 0.01594642),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path4.arcToPoint(Offset(size.width * 0.4959925, size.height * 0.1071599),
        radius: Radius.elliptical(
            size.width * 0.01571586, size.height * 0.01594642),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path4.close();

    Paint paint4fill = Paint()..style = PaintingStyle.fill;
    paint4fill.color = Color(0xff545454).withOpacity(1.0);
    canvas.drawPath(path4, paint4fill);

    Path path5 = Path();
    path5.moveTo(size.width * 0.1257269, size.height * 0.8875777);
    path5.arcToPoint(Offset(size.width * 0.1669024, size.height * 0.9295168),
        radius: Radius.elliptical(
            size.width * 0.04133270, size.height * 0.04193908),
        rotation: 0,
        largeArc: true,
        clockwise: false);
    path5.arcToPoint(Offset(size.width * 0.1257269, size.height * 0.8875777),
        radius: Radius.elliptical(
            size.width * 0.04133270, size.height * 0.04193908),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path5.close();
    path5.moveTo(size.width * 0.1257269, size.height * 0.9462606);
    path5.arcToPoint(Offset(size.width * 0.1422285, size.height * 0.9295168),
        radius: Radius.elliptical(
            size.width * 0.01571586, size.height * 0.01594642),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path5.arcToPoint(Offset(size.width * 0.1257269, size.height * 0.9462606),
        radius: Radius.elliptical(
            size.width * 0.01571586, size.height * 0.01594642),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path5.close();

    Paint paint5fill = Paint()..style = PaintingStyle.fill;
    paint5fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path5, paint5fill);

    Path path6 = Path();
    path6.moveTo(size.width * 0.3730945, size.height * 0.8875777);
    path6.arcToPoint(Offset(size.width * 0.4142700, size.height * 0.9295168),
        radius: Radius.elliptical(
            size.width * 0.04133270, size.height * 0.04193908),
        rotation: 0,
        largeArc: true,
        clockwise: false);
    path6.arcToPoint(Offset(size.width * 0.3730945, size.height * 0.8875777),
        radius: Radius.elliptical(
            size.width * 0.04133270, size.height * 0.04193908),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path6.close();
    path6.moveTo(size.width * 0.3730945, size.height * 0.9462606);
    path6.arcToPoint(Offset(size.width * 0.3895961, size.height * 0.9295168),
        radius: Radius.elliptical(
            size.width * 0.01571586, size.height * 0.01594642),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path6.arcToPoint(Offset(size.width * 0.3730945, size.height * 0.9462606),
        radius: Radius.elliptical(
            size.width * 0.01571586, size.height * 0.01594642),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path6.close();

    Paint paint6fill = Paint()..style = PaintingStyle.fill;
    paint6fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path6, paint6fill);

    Path path7 = Path();
    path7.moveTo(size.width * 0.6203049, size.height * 0.8875777);
    path7.arcToPoint(Offset(size.width * 0.6613233, size.height * 0.9295168),
        radius: Radius.elliptical(
            size.width * 0.04133270, size.height * 0.04193908),
        rotation: 0,
        largeArc: true,
        clockwise: false);
    path7.arcToPoint(Offset(size.width * 0.6203049, size.height * 0.8875777),
        radius: Radius.elliptical(
            size.width * 0.04117555, size.height * 0.04177962),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path7.close();
    path7.moveTo(size.width * 0.6203049, size.height * 0.9462606);
    path7.arcToPoint(Offset(size.width * 0.6360207, size.height * 0.9295168),
        radius: Radius.elliptical(
            size.width * 0.01650165, size.height * 0.01674374),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path7.arcToPoint(Offset(size.width * 0.6203049, size.height * 0.9462606),
        radius: Radius.elliptical(
            size.width * 0.01571586, size.height * 0.01594642),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path7.close();

    Paint paint7fill = Paint()..style = PaintingStyle.fill;
    paint7fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path7, paint7fill);

    Path path8 = Path();
    path8.moveTo(size.width * 0.8673582, size.height * 0.8875777);
    path8.arcToPoint(Offset(size.width * 0.9085337, size.height * 0.9295168),
        radius: Radius.elliptical(
            size.width * 0.04133270, size.height * 0.04193908),
        rotation: 0,
        largeArc: true,
        clockwise: false);
    path8.arcToPoint(Offset(size.width * 0.8673582, size.height * 0.8875777),
        radius: Radius.elliptical(
            size.width * 0.04117555, size.height * 0.04177962),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path8.close();
    path8.moveTo(size.width * 0.8673582, size.height * 0.9462606);
    path8.arcToPoint(Offset(size.width * 0.8830740, size.height * 0.9295168),
        radius: Radius.elliptical(
            size.width * 0.01650165, size.height * 0.01674374),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path8.arcToPoint(Offset(size.width * 0.8673582, size.height * 0.9462606),
        radius: Radius.elliptical(
            size.width * 0.01571586, size.height * 0.01594642),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path8.close();

    Paint paint8fill = Paint()..style = PaintingStyle.fill;
    paint8fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path8, paint8fill);

    Path path9 = Path();
    path9.moveTo(size.width * 0.9900990, size.height * 0.2495615);
    path9.lineTo(size.width * 0.9545812, size.height * 0.2495615);
    path9.arcToPoint(Offset(size.width * 0.7435172, size.height * 0.03603891),
        radius:
            Radius.elliptical(size.width * 0.2123212, size.height * 0.2154361),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path9.lineTo(size.width * 0.7435172, 0);
    path9.arcToPoint(Offset(size.width * 0.9900990, size.height * 0.2495615),
        radius:
            Radius.elliptical(size.width * 0.2478391, size.height * 0.2514750),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path9.close();

    Paint paint9fill = Paint()..style = PaintingStyle.fill;
    paint9fill.color = Color(0xff545454).withOpacity(1.0);
    canvas.drawPath(path9, paint9fill);

    Path path10 = Path();
    path10.moveTo(size.width * 0.9195348, size.height * 0.2500399);
    path10.lineTo(size.width * 0.8841741, size.height * 0.2500399);
    path10.arcToPoint(Offset(size.width * 0.7439887, size.height * 0.1077978),
        radius:
            Radius.elliptical(size.width * 0.1414427, size.height * 0.1435178),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path10.lineTo(size.width * 0.7439887, size.height * 0.07175889);
    path10.arcToPoint(Offset(size.width * 0.9195348, size.height * 0.2500399),
        radius:
            Radius.elliptical(size.width * 0.1771177, size.height * 0.1797162),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path10.close();

    Paint paint10fill = Paint()..style = PaintingStyle.fill;
    paint10fill.color = Color(0xff545454).withOpacity(1.0);
    canvas.drawPath(path10, paint10fill);

    Path path11 = Path();
    path11.moveTo(size.width * 0.8486563, size.height * 0.2505183);
    path11.lineTo(size.width * 0.8134528, size.height * 0.2505183);
    path11.arcToPoint(Offset(size.width * 0.7443030, size.height * 0.1798756),
        radius: Radius.elliptical(
            size.width * 0.07087852, size.height * 0.07191835),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path11.lineTo(size.width * 0.7443030, size.height * 0.1435178);
    path11.arcToPoint(Offset(size.width * 0.8486563, size.height * 0.2505183),
        radius:
            Radius.elliptical(size.width * 0.1060820, size.height * 0.1076383),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path11.close();

    Paint paint11fill = Paint()..style = PaintingStyle.fill;
    paint11fill.color = Color(0xff545454).withOpacity(1.0);
    canvas.drawPath(path11, paint11fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
