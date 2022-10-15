import 'package:flutter/material.dart';

Widget indicatorsIconColor({@required double xwidth}) {
  return CustomPaint(
    size: Size(xwidth, (xwidth * 1.003368197128169).toDouble()),
    painter: IndicatorsIconColor(),
  );
}

class IndicatorsIconColor extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.4999114, 0);
    path0.arcToPoint(Offset(size.width, size.height * 0.5000000),
        radius:
            Radius.elliptical(size.width * 0.5016841, size.height * 0.5000000),
        rotation: 0,
        largeArc: true,
        clockwise: false);
    path0.arcToPoint(Offset(size.width * 0.4999114, 0),
        radius:
            Radius.elliptical(size.width * 0.5007977, size.height * 0.4991166),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path0.close();

    Paint paint0fill = Paint()..style = PaintingStyle.fill;
    paint0fill.color = Color(0xff545454).withOpacity(1.0);
    canvas.drawPath(path0, paint0fill);

    Path path1 = Path();
    path1.moveTo(size.width * 0.4999114, size.height * 0.04240283);
    path1.arcToPoint(Offset(size.width * 0.9572771, size.height * 0.5000000),
        radius:
            Radius.elliptical(size.width * 0.4591385, size.height * 0.4575972),
        rotation: 0,
        largeArc: true,
        clockwise: false);
    path1.arcToPoint(Offset(size.width * 0.4999114, size.height * 0.04240283),
        radius:
            Radius.elliptical(size.width * 0.4582521, size.height * 0.4567138),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path1.close();

    Paint paint1fill = Paint()..style = PaintingStyle.fill;
    paint1fill.color = Color(0xfff2f2f2).withOpacity(1.0);
    canvas.drawPath(path1, paint1fill);

    Path path2 = Path();
    path2.moveTo(size.width * 0.4999114, size.height * 0.08992933);
    path2.arcToPoint(Offset(size.width * 0.1747917, size.height * 0.7489399),
        radius:
            Radius.elliptical(size.width * 0.4110973, size.height * 0.4097173),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path2.lineTo(size.width * 0.1925191, size.height * 0.7312721);
    path2.arcToPoint(Offset(size.width * 0.8088991, size.height * 0.7312721),
        radius:
            Radius.elliptical(size.width * 0.3864563, size.height * 0.3851590),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path2.lineTo(size.width * 0.8266265, size.height * 0.7489399);
    path2.arcToPoint(Offset(size.width * 0.4999114, size.height * 0.08992933),
        radius:
            Radius.elliptical(size.width * 0.4110973, size.height * 0.4097173),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path2.close();

    Paint paint2fill = Paint()..style = PaintingStyle.fill;
    paint2fill.color = Color(0xff4d4d4d).withOpacity(1.0);
    canvas.drawPath(path2, paint2fill);

    Path path3 = Path();
    path3.moveTo(size.width * 0.8509130, size.height * 0.2863958);
    path3.lineTo(size.width * 0.8303492, size.height * 0.2982332);
    path3.arcToPoint(Offset(size.width * 0.8736040, size.height * 0.3980565),
        radius:
            Radius.elliptical(size.width * 0.4786385, size.height * 0.4770318),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path3.arcToPoint(Offset(size.width * 0.8863677, size.height * 0.5000000),
        radius:
            Radius.elliptical(size.width * 0.3664244, size.height * 0.3651943),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path3.arcToPoint(Offset(size.width * 0.8081900, size.height * 0.7319788),
        radius:
            Radius.elliptical(size.width * 0.3852154, size.height * 0.3839223),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path3.lineTo(size.width * 0.8259174, size.height * 0.7496466);
    path3.arcToPoint(Offset(size.width * 0.9101223, size.height * 0.5000000),
        radius:
            Radius.elliptical(size.width * 0.4100337, size.height * 0.4086572),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path3.arcToPoint(Offset(size.width * 0.8954086, size.height * 0.3916961),
        radius:
            Radius.elliptical(size.width * 0.3848608, size.height * 0.3835689),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path3.arcToPoint(Offset(size.width * 0.8509130, size.height * 0.2863958),
        radius:
            Radius.elliptical(size.width * 0.3878745, size.height * 0.3865724),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path3.close();

    Paint paint3fill = Paint()..style = PaintingStyle.fill;
    paint3fill.color = Color(0xff00bf00).withOpacity(1.0);
    canvas.drawPath(path3, paint3fill);

    Paint paint4fill = Paint()..style = PaintingStyle.fill;
    paint4fill.color = Color(0xff4d4d4d).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.4919341, size.height * 0.1084806,
            size.width * 0.01825917, size.height * 0.07561837),
        paint4fill);

    Paint paint5fill = Paint()..style = PaintingStyle.fill;
    paint5fill.color = Color(0xff4d4d4d).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.3157242, size.height * 0.1556537,
            size.width * 0.01825917, size.height * 0.07561837),
        paint5fill);

    Path path6 = Path();
    path6.moveTo(size.width * 0.1586598, size.height * 0.3113074);
    path6.lineTo(size.width * 0.2242510, size.height * 0.3491166);
    path6.lineTo(size.width * 0.2332920, size.height * 0.3332155);
    path6.lineTo(size.width * 0.1678780, size.height * 0.2955830);
    path6.lineTo(size.width * 0.1586598, size.height * 0.3113074);
    path6.close();

    Paint paint6fill = Paint()..style = PaintingStyle.fill;
    paint6fill.color = Color(0xff4d4d4d).withOpacity(1.0);
    canvas.drawPath(path6, paint6fill);

    Paint paint7fill = Paint()..style = PaintingStyle.fill;
    paint7fill.color = Color(0xff00bf00).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.7968445, size.height * 0.6367491,
            size.width * 0.01825917, size.height * 0.07544170),
        paint7fill);

    Paint paint8fill = Paint()..style = PaintingStyle.fill;
    paint8fill.color = Color(0xff4d4d4d).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.1109732, size.height * 0.4893993,
            size.width * 0.07569580, size.height * 0.01819788),
        paint8fill);

    Paint paint9fill = Paint()..style = PaintingStyle.fill;
    paint9fill.color = Color(0xff00bf00).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.8152810, size.height * 0.4893993,
            size.width * 0.07569580, size.height * 0.01819788),
        paint9fill);

    Path path10 = Path();
    path10.moveTo(size.width * 0.1586598, size.height * 0.6855124);
    path10.lineTo(size.width * 0.1678780, size.height * 0.7012367);
    path10.lineTo(size.width * 0.2332920, size.height * 0.6634276);
    path10.lineTo(size.width * 0.2242510, size.height * 0.6477032);
    path10.lineTo(size.width * 0.1586598, size.height * 0.6855124);
    path10.close();

    Paint paint10fill = Paint()..style = PaintingStyle.fill;
    paint10fill.color = Color(0xff4d4d4d).withOpacity(1.0);
    canvas.drawPath(path10, paint10fill);

    Paint paint11fill = Paint()..style = PaintingStyle.fill;
    paint11fill.color = Color(0xff00bf00).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.7681262, size.height * 0.3132509,
            size.width * 0.07569580, size.height * 0.01819788),
        paint11fill);

    Paint paint12fill = Paint()..style = PaintingStyle.fill;
    paint12fill.color = Color(0xff4d4d4d).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.6392484, size.height * 0.1842756,
            size.width * 0.07587307, size.height * 0.01819788),
        paint12fill);

    Path path13 = Path();
    path13.moveTo(size.width * 0.6224074, size.height * 0.7314488);
    path13.lineTo(size.width * 0.3795426, size.height * 0.7314488);
    path13.cubicTo(
        size.width * 0.3510016,
        size.height * 0.7314488,
        size.width * 0.3279560,
        size.height * 0.7593640,
        size.width * 0.3279560,
        size.height * 0.7938163);
    path13.cubicTo(
        size.width * 0.3279560,
        size.height * 0.8282686,
        size.width * 0.3510016,
        size.height * 0.8561837,
        size.width * 0.3795426,
        size.height * 0.8561837);
    path13.lineTo(size.width * 0.6224074, size.height * 0.8561837);
    path13.cubicTo(
        size.width * 0.6509484,
        size.height * 0.8561837,
        size.width * 0.6739940,
        size.height * 0.8282686,
        size.width * 0.6739940,
        size.height * 0.7938163);
    path13.cubicTo(
        size.width * 0.6739940,
        size.height * 0.7593640,
        size.width * 0.6509484,
        size.height * 0.7314488,
        size.width * 0.6224074,
        size.height * 0.7314488);
    path13.close();

    Paint paint13fill = Paint()..style = PaintingStyle.fill;
    paint13fill.color = Color(0xffcedbee).withOpacity(1.0);
    canvas.drawPath(path13, paint13fill);

    Path path14 = Path();
    path14.moveTo(size.width * 0.3947882, size.height * 0.1265018);
    path14.lineTo(size.width * 0.4070200, size.height * 0.1719081);
    path14.lineTo(size.width * 0.4162383, size.height * 0.1696113);
    path14.lineTo(size.width * 0.4040064, size.height * 0.1240283);
    path14.lineTo(size.width * 0.3947882, size.height * 0.1265018);
    path14.close();

    Paint paint14fill = Paint()..style = PaintingStyle.fill;
    paint14fill.color = Color(0xff4d4d4d).withOpacity(1.0);
    canvas.drawPath(path14, paint14fill);

    Path path15 = Path();
    path15.moveTo(size.width * 0.2228328, size.height * 0.2286219);
    path15.lineTo(size.width * 0.2561603, size.height * 0.2618375);
    path15.lineTo(size.width * 0.2627194, size.height * 0.2553004);
    path15.lineTo(size.width * 0.2293920, size.height * 0.2219081);
    path15.lineTo(size.width * 0.2228328, size.height * 0.2286219);
    path15.close();

    Paint paint15fill = Paint()..style = PaintingStyle.fill;
    paint15fill.color = Color(0xff4d4d4d).withOpacity(1.0);
    canvas.drawPath(path15, paint15fill);

    Path path16 = Path();
    path16.moveTo(size.width * 0.1248006, size.height * 0.4030035);
    path16.lineTo(size.width * 0.1703599, size.height * 0.4151943);
    path16.lineTo(size.width * 0.1728417, size.height * 0.4061837);
    path16.lineTo(size.width * 0.1272824, size.height * 0.3939929);
    path16.lineTo(size.width * 0.1248006, size.height * 0.4030035);
    path16.close();

    Paint paint16fill = Paint()..style = PaintingStyle.fill;
    paint16fill.color = Color(0xff4d4d4d).withOpacity(1.0);
    canvas.drawPath(path16, paint16fill);

    Paint paint17fill = Paint()..style = PaintingStyle.fill;
    paint17fill.color = Color(0xff00bf00).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.8452402, size.height * 0.5690813,
            size.width * 0.009395497, size.height * 0.04699647),
        paint17fill);

    Path path18 = Path();
    path18.moveTo(size.width * 0.1248006, size.height * 0.5939929);
    path18.lineTo(size.width * 0.1272824, size.height * 0.6031802);
    path18.lineTo(size.width * 0.1728417, size.height * 0.5909894);
    path18.lineTo(size.width * 0.1703599, size.height * 0.5818021);
    path18.lineTo(size.width * 0.1248006, size.height * 0.5939929);
    path18.close();

    Paint paint18fill = Paint()..style = PaintingStyle.fill;
    paint18fill.color = Color(0xff4d4d4d).withOpacity(1.0);
    canvas.drawPath(path18, paint18fill);

    Path path19 = Path();
    path19.moveTo(size.width * 0.8259174, size.height * 0.4061837);
    path19.lineTo(size.width * 0.8285765, size.height * 0.4153710);
    path19.lineTo(size.width * 0.8739585, size.height * 0.4030035);
    path19.lineTo(size.width * 0.8716540, size.height * 0.3939929);
    path19.lineTo(size.width * 0.8259174, size.height * 0.4061837);
    path19.close();

    Paint paint19fill = Paint()..style = PaintingStyle.fill;
    paint19fill.color = Color(0xff00bf00).withOpacity(1.0);
    canvas.drawPath(path19, paint19fill);

    Paint paint20fill = Paint()..style = PaintingStyle.fill;
    paint20fill.color = Color(0xff4d4d4d).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.7324942, size.height * 0.2372792,
            size.width * 0.04733203, size.height * 0.009363958),
        paint20fill);

    Paint paint21fill = Paint()..style = PaintingStyle.fill;
    paint21fill.color = Color(0xff4d4d4d).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.5697571, size.height * 0.1432862,
            size.width * 0.04733203, size.height * 0.009363958),
        paint21fill);

    Paint paint22fill = Paint()..style = PaintingStyle.fill;
    paint22fill.color = Color(0xff57667f).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.3898245, size.height * 0.7604240,
            size.width * 0.02925013, size.height * 0.06678445),
        paint22fill);

    Paint paint23fill = Paint()..style = PaintingStyle.fill;
    paint23fill.color = Color(0xff57667f).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.4316611, size.height * 0.7604240,
            size.width * 0.02942741, size.height * 0.06678445),
        paint23fill);

    Paint paint24fill = Paint()..style = PaintingStyle.fill;
    paint24fill.color = Color(0xff57667f).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.4717249, size.height * 0.7604240,
            size.width * 0.02942741, size.height * 0.06678445),
        paint24fill);

    Paint paint25fill = Paint()..style = PaintingStyle.fill;
    paint25fill.color = Color(0xff57667f).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.5472434, size.height * 0.7604240,
            size.width * 0.02925013, size.height * 0.06678445),
        paint25fill);

    Paint paint26fill = Paint()..style = PaintingStyle.fill;
    paint26fill.color = Color(0xff57667f).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.5876618, size.height * 0.7604240,
            size.width * 0.02942741, size.height * 0.06678445),
        paint26fill);

    Path path27 = Path();
    path27.moveTo(size.width * 0.4830704, size.height * 0.4862191);
    path27.lineTo(size.width * 0.5163978, size.height * 0.5196113);
    path27.cubicTo(
        size.width * 0.5163978,
        size.height * 0.5196113,
        size.width * 0.7686580,
        size.height * 0.2503534,
        size.width * 0.7587307,
        size.height * 0.2404594);
    path27.cubicTo(
        size.width * 0.7518171,
        size.height * 0.2335689,
        size.width * 0.4830704,
        size.height * 0.4862191,
        size.width * 0.4830704,
        size.height * 0.4862191);
    path27.close();

    Paint paint27fill = Paint()..style = PaintingStyle.fill;
    paint27fill.color = Color(0xff00bf00).withOpacity(1.0);
    canvas.drawPath(path27, paint27fill);

    Path path28 = Path();
    path28.moveTo(size.width * 0.5158660, size.height * 0.4556537);
    path28.lineTo(size.width * 0.4830704, size.height * 0.4862191);
    path28.lineTo(size.width * 0.5163978, size.height * 0.5196113);
    path28.cubicTo(
        size.width * 0.5163978,
        size.height * 0.5196113,
        size.width * 0.5284524,
        size.height * 0.5068905,
        size.width * 0.5470661,
        size.height * 0.4867491);
    path28.arcToPoint(Offset(size.width * 0.5358979, size.height * 0.4669611),
        radius: Radius.elliptical(
            size.width * 0.04538202, size.height * 0.04522968),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path28.arcToPoint(Offset(size.width * 0.5158660, size.height * 0.4556537),
        radius: Radius.elliptical(
            size.width * 0.04396384, size.height * 0.04381625),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path28.close();

    Paint paint28fill = Paint()..style = PaintingStyle.fill;
    paint28fill.color = Color(0xffcedbee).withOpacity(1.0);
    canvas.drawPath(path28, paint28fill);

    Path path29 = Path();
    path29.moveTo(size.width * 0.4681794, size.height * 0.4713781);
    path29.arcToPoint(Offset(size.width * 0.5312888, size.height * 0.4713781),
        radius: Radius.elliptical(
            size.width * 0.04467293, size.height * 0.04452297),
        rotation: 0,
        largeArc: true,
        clockwise: false);
    path29.arcToPoint(Offset(size.width * 0.4681794, size.height * 0.4713781),
        radius: Radius.elliptical(
            size.width * 0.04431838, size.height * 0.04416961),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path29.close();

    Paint paint29fill = Paint()..style = PaintingStyle.fill;
    paint29fill.color = Color(0xff00bf00).withOpacity(1.0);
    canvas.drawPath(path29, paint29fill);

    Path path30 = Path();
    path30.moveTo(size.width * 0.4665839, size.height * 0.5325088);
    path30.lineTo(size.width * 0.4681794, size.height * 0.5344523);
    path30.arcToPoint(Offset(size.width * 0.5428116, size.height * 0.4913428),
        radius: Radius.elliptical(
            size.width * 0.04467293, size.height * 0.04452297),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path30.cubicTo(
        size.width * 0.6069846,
        size.height * 0.4220848,
        size.width * 0.7667080,
        size.height * 0.2484099,
        size.width * 0.7587307,
        size.height * 0.2404594);
    path30.close();

    Paint paint30fill = Paint()..style = PaintingStyle.fill;
    paint30fill.color = Color(0xffcedbee).withOpacity(1.0);
    canvas.drawPath(path30, paint30fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
