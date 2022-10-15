import 'package:flutter/material.dart';

Widget devicesIconColor({@required double xwidth}) {
  return CustomPaint(
    size: Size(xwidth, (xwidth * 0.6190738699007717).toDouble()),
    painter: DevicesIconColor(),
  );
}

class DevicesIconColor extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.6950799, size.height * 0.9870882);
    path0.lineTo(size.width * 0.9861494, size.height * 0.7147150);
    path0.arcToPoint(Offset(size.width * 0.9999311, size.height * 0.6813224),
        radius: Radius.elliptical(
            size.width * 0.02322216, size.height * 0.03751113),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path0.lineTo(size.width * 0.9999311, size.height * 0.6813224);
    path0.lineTo(size.width * 0.9999311, size.height * 0.6130899);
    path0.lineTo(size.width * 0.9837376, size.height * 0.6436999);
    path0.arcToPoint(Offset(size.width * 0.9804989, size.height * 0.6404720),
        radius: Radius.elliptical(
            size.width * 0.03686604, size.height * 0.05955031),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path0.lineTo(size.width * 0.3848539, size.height * 0.08670971);
    path0.cubicTo(
        size.width * 0.3612183,
        size.height * 0.06444791,
        size.width * 0.3254548,
        size.height * 0.06244435,
        size.width * 0.3049890,
        size.height * 0.08158949);
    path0.lineTo(size.width * 0.01798512, size.height * 0.3500668);
    path0.lineTo(0, size.height * 0.3181211);
    path0.lineTo(0, size.height * 0.3849065);
    path0.lineTo(0, size.height * 0.3849065);
    path0.cubicTo(
        size.width * -0.0004134509,
        size.height * 0.3999332,
        size.width * 0.006201764,
        size.height * 0.4159617,
        size.width * 0.01957001,
        size.height * 0.4284283);
    path0.lineTo(size.width * 0.6152150, size.height * 0.9818566);
    path0.cubicTo(
        size.width * 0.6388506,
        size.height * 1.003896,
        size.width * 0.6746141,
        size.height * 1.006233,
        size.width * 0.6950799,
        size.height * 0.9870882);
    path0.close();

    Paint paint0fill = Paint()..style = PaintingStyle.fill;
    paint0fill.color = Color(0xff396caa).withOpacity(1.0);
    canvas.drawPath(path0, paint0fill);

    Path path1 = Path();
    path1.moveTo(size.width * 0.8524669, size.height * 0.8200134);
    path1.lineTo(size.width * 0.8357222, size.height * 0.8357079);
    path1.cubicTo(
        size.width * 0.8334482,
        size.height * 0.8377115,
        size.width * 0.8316566,
        size.height * 0.8357079,
        size.width * 0.8316566,
        size.height * 0.8306990);
    path1.lineTo(size.width * 0.8316566, size.height * 0.8306990);
    path1.arcToPoint(Offset(size.width * 0.8357222, size.height * 0.8182324),
        radius: Radius.elliptical(
            size.width * 0.009647189, size.height * 0.01558326),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path1.lineTo(size.width * 0.8524669, size.height * 0.8026492);
    path1.cubicTo(
        size.width * 0.8546720,
        size.height * 0.8005343,
        size.width * 0.8565325,
        size.height * 0.8026492,
        size.width * 0.8565325,
        size.height * 0.8075467);
    path1.lineTo(size.width * 0.8565325, size.height * 0.8075467);
    path1.arcToPoint(Offset(size.width * 0.8524669, size.height * 0.8200134),
        radius: Radius.elliptical(
            size.width * 0.009785006, size.height * 0.01580588),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path1.close();

    Paint paint1fill = Paint()..style = PaintingStyle.fill;
    paint1fill.color = Color(0xff173d7a).withOpacity(1.0);
    canvas.drawPath(path1, paint1fill);

    Path path2 = Path();
    path2.moveTo(size.width * 0.3848539, size.height * 0.08670971);
    path2.cubicTo(
        size.width * 0.3612183,
        size.height * 0.06444791,
        size.width * 0.3254548,
        size.height * 0.06244435,
        size.width * 0.3049890,
        size.height * 0.08158949);
    path2.lineTo(size.width * 0.01798512, size.height * 0.3500668);
    path2.lineTo(0, size.height * 0.3181211);
    path2.lineTo(0, size.height * 0.3849065);
    path2.lineTo(0, size.height * 0.3849065);
    path2.cubicTo(
        size.width * -0.0004134509,
        size.height * 0.3999332,
        size.width * 0.006201764,
        size.height * 0.4159617,
        size.width * 0.01957001,
        size.height * 0.4284283);
    path2.lineTo(size.width * 0.6152150, size.height * 0.9818566);
    path2.arcToPoint(Offset(size.width * 0.6582139, size.height * 0.9998887),
        radius:
            Radius.elliptical(size.width * 0.09171720, size.height * 0.1481523),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path2.lineTo(size.width * 0.6576626, size.height * 0.3402716);
    path2.close();

    Paint paint2fill = Paint()..style = PaintingStyle.fill;
    paint2fill.color = Color(0xff5793ce).withOpacity(1.0);
    canvas.drawPath(path2, paint2fill);

    Path path3 = Path();
    path3.moveTo(size.width * 0.01378170, size.height * 0.2852850);
    path3.lineTo(size.width * 0.3049201, size.height * 0.01291184);
    path3.cubicTo(
        size.width * 0.3255926,
        size.height * -0.006121995,
        size.width * 0.3610805,
        size.height * -0.003895815,
        size.width * 0.3847161,
        size.height * 0.01814337);
    path3.lineTo(size.width * 0.9802233, size.height * 0.5716830);
    path3.cubicTo(
        size.width * 1.003859,
        size.height * 0.5939448,
        size.width * 1.006477,
        size.height * 0.6273375,
        size.width * 0.9860116,
        size.height * 0.6461487);
    path3.lineTo(size.width * 0.6949421, size.height * 0.9185218);
    path3.cubicTo(
        size.width * 0.6742696,
        size.height * 0.9375557,
        size.width * 0.6387817,
        size.height * 0.9353295,
        size.width * 0.6150772,
        size.height * 0.9132903);
    path3.lineTo(size.width * 0.01957001, size.height * 0.3597507);
    path3.cubicTo(
        size.width * -0.004065601,
        size.height * 0.3377115,
        size.width * -0.006890849,
        size.height * 0.3044301,
        size.width * 0.01378170,
        size.height * 0.2852850);
    path3.close();

    Paint paint3fill = Paint()..style = PaintingStyle.fill;
    paint3fill.color = Color(0xffd4ecff).withOpacity(1.0);
    canvas.drawPath(path3, paint3fill);

    Path path4 = Path();
    path4.moveTo(size.width * 0.6951488, size.height * 0.9257569);
    path4.lineTo(size.width * 0.9862872, size.height * 0.6534951);
    path4.cubicTo(
        size.width * 0.9968302,
        size.height * 0.6435886,
        size.width * 1.001171,
        size.height * 0.6298976,
        size.width * 1.000069,
        size.height * 0.6159840);
    path4.arcToPoint(Offset(size.width * 0.9862872, size.height * 0.6461487),
        radius: Radius.elliptical(
            size.width * 0.02404906, size.height * 0.03884684),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path4.lineTo(size.width * 0.6949421, size.height * 0.9185218);
    path4.cubicTo(
        size.width * 0.6742696,
        size.height * 0.9375557,
        size.width * 0.6387817,
        size.height * 0.9353295,
        size.width * 0.6150772,
        size.height * 0.9132903);
    path4.lineTo(size.width * 0.01957001, size.height * 0.3597507);
    path4.arcToPoint(Offset(size.width * 0.0003445424, size.height * 0.3227961),
        radius: Radius.elliptical(
            size.width * 0.03541896, size.height * 0.05721282),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path4.cubicTo(
        size.width * -0.0004134509,
        size.height * 0.3380454,
        size.width * 0.006201764,
        size.height * 0.3544078,
        size.width * 0.01977674,
        size.height * 0.3673197);
    path4.lineTo(size.width * 0.6153528, size.height * 0.9206367);
    path4.cubicTo(
        size.width * 0.6389884,
        size.height * 0.9425646,
        size.width * 0.6746830,
        size.height * 0.9449020,
        size.width * 0.6951488,
        size.height * 0.9257569);
    path4.close();

    Paint paint4fill = Paint()..style = PaintingStyle.fill;
    paint4fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path4, paint4fill);

    Path path5 = Path();
    path5.moveTo(size.width * 0.03617696, size.height * 0.2959706);
    path5.lineTo(size.width * 0.3159454, size.height * 0.03439448);
    path5.cubicTo(
        size.width * 0.3311053,
        size.height * 0.02014693,
        size.width * 0.3577040,
        size.height * 0.02181656,
        size.width * 0.3752756,
        size.height * 0.03817898);
    path5.lineTo(size.width * 0.9623071, size.height * 0.5835931);
    path5.cubicTo(
        size.width * 0.9798787,
        size.height * 0.5999555,
        size.width * 0.9818082,
        size.height * 0.6246661,
        size.width * 0.9666483,
        size.height * 0.6392476);
    path5.lineTo(size.width * 0.6868798, size.height * 0.9009350);
    path5.cubicTo(
        size.width * 0.6717200,
        size.height * 0.9150712,
        size.width * 0.6451213,
        size.height * 0.9134016,
        size.width * 0.6275496,
        size.height * 0.8970392);
    path5.lineTo(size.width * 0.04051819, size.height * 0.3516251);
    path5.cubicTo(
        size.width * 0.02294653,
        size.height * 0.3349288,
        size.width * 0.02101709,
        size.height * 0.3102182,
        size.width * 0.03617696,
        size.height * 0.2959706);
    path5.close();

    Paint paint5fill = Paint()..style = PaintingStyle.fill;
    paint5fill.color = Color(0xff173d7a).withOpacity(1.0);
    canvas.drawPath(path5, paint5fill);

    Path path6 = Path();
    path6.moveTo(size.width * 0.6164553, size.height * 0.7650267);
    path6.lineTo(size.width * 0.8138093, size.height * 0.5809216);
    path6.lineTo(size.width * 0.8012679, size.height * 0.5691229);
    path6.lineTo(size.width * 0.6038451, size.height * 0.7532280);
    path6.lineTo(size.width * 0.6164553, size.height * 0.7650267);
    path6.close();

    Paint paint6fill = Paint()..style = PaintingStyle.fill;
    paint6fill.color = Color(0xffd4ecff).withOpacity(1.0);
    canvas.drawPath(path6, paint6fill);

    Path path7 = Path();
    path7.moveTo(size.width * 0.7537900, size.height * 0.7113758);
    path7.lineTo(size.width * 0.8537073, size.height * 0.6180988);
    path7.lineTo(size.width * 0.8411659, size.height * 0.6064114);
    path7.lineTo(size.width * 0.7411797, size.height * 0.6995770);
    path7.lineTo(size.width * 0.7537900, size.height * 0.7113758);
    path7.close();

    Paint paint7fill = Paint()..style = PaintingStyle.fill;
    paint7fill.color = Color(0xffd4ecff).withOpacity(1.0);
    canvas.drawPath(path7, paint7fill);

    Path path8 = Path();
    path8.moveTo(size.width * 0.7052784, size.height * 0.7565672);
    path8.lineTo(size.width * 0.7377343, size.height * 0.7262912);
    path8.lineTo(size.width * 0.7251240, size.height * 0.7146037);
    path8.lineTo(size.width * 0.6926681, size.height * 0.7448798);
    path8.lineTo(size.width * 0.7052784, size.height * 0.7565672);
    path8.close();

    Paint paint8fill = Paint()..style = PaintingStyle.fill;
    paint8fill.color = Color(0xffff2c9c).withOpacity(1.0);
    canvas.drawPath(path8, paint8fill);

    Path path9 = Path();
    path9.moveTo(size.width * 0.6563534, size.height * 0.8022039);
    path9.lineTo(size.width * 0.6887404, size.height * 0.7720392);
    path9.lineTo(size.width * 0.6761990, size.height * 0.7602404);
    path9.lineTo(size.width * 0.6437431, size.height * 0.7905165);
    path9.lineTo(size.width * 0.6563534, size.height * 0.8022039);
    path9.close();

    Paint paint9fill = Paint()..style = PaintingStyle.fill;
    paint9fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path9, paint9fill);

    Path path10 = Path();
    path10.moveTo(size.width * 0.7526874, size.height * 0.6752004);
    path10.lineTo(size.width * 0.8337927, size.height * 0.5995102);
    path10.lineTo(size.width * 0.8211825, size.height * 0.5878228);
    path10.lineTo(size.width * 0.7400772, size.height * 0.6634016);
    path10.lineTo(size.width * 0.7526874, size.height * 0.6752004);
    path10.close();

    Paint paint10fill = Paint()..style = PaintingStyle.fill;
    paint10fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path10, paint10fill);

    Path path11 = Path();
    path11.moveTo(size.width * 0.6536659, size.height * 0.7674755);
    path11.lineTo(size.width * 0.7347712, size.height * 0.6918967);
    path11.lineTo(size.width * 0.7221610, size.height * 0.6800980);
    path11.lineTo(size.width * 0.6410557, size.height * 0.7557881);
    path11.lineTo(size.width * 0.6536659, size.height * 0.7674755);
    path11.close();

    Paint paint11fill = Paint()..style = PaintingStyle.fill;
    paint11fill.color = Color(0xffd4ecff).withOpacity(1.0);
    canvas.drawPath(path11, paint11fill);

    Path path12 = Path();
    path12.moveTo(size.width * 0.7136852, size.height * 0.6058549);
    path12.arcToPoint(Offset(size.width * 0.7284316, size.height * 0.6058549),
        radius: Radius.elliptical(
            size.width * 0.01633131, size.height * 0.02638023),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path12.arcToPoint(Offset(size.width * 0.7284316, size.height * 0.5920525),
        radius: Radius.elliptical(
            size.width * 0.004547960, size.height * 0.007346394),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path12.arcToPoint(Offset(size.width * 0.7136852, size.height * 0.5920525),
        radius: Radius.elliptical(
            size.width * 0.01633131, size.height * 0.02638023),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path12.arcToPoint(Offset(size.width * 0.7136852, size.height * 0.6058549),
        radius: Radius.elliptical(
            size.width * 0.004547960, size.height * 0.007346394),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path12.close();

    Paint paint12fill = Paint()..style = PaintingStyle.fill;
    paint12fill.color = Color(0xffff2c9c).withOpacity(1.0);
    canvas.drawPath(path12, paint12fill);

    Path path13 = Path();
    path13.moveTo(size.width * 0.6917723, size.height * 0.6263357);
    path13.arcToPoint(Offset(size.width * 0.7064498, size.height * 0.6263357),
        radius: Radius.elliptical(
            size.width * 0.01619350, size.height * 0.02615761),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path13.arcToPoint(Offset(size.width * 0.7064498, size.height * 0.6125334),
        radius: Radius.elliptical(
            size.width * 0.004547960, size.height * 0.007346394),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path13.arcToPoint(Offset(size.width * 0.6917723, size.height * 0.6125334),
        radius: Radius.elliptical(
            size.width * 0.01619350, size.height * 0.02615761),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path13.arcToPoint(Offset(size.width * 0.6917723, size.height * 0.6263357),
        radius: Radius.elliptical(
            size.width * 0.004547960, size.height * 0.007346394),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path13.close();

    Paint paint13fill = Paint()..style = PaintingStyle.fill;
    paint13fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path13, paint13fill);

    Path path14 = Path();
    path14.moveTo(size.width * 0.6697905, size.height * 0.6468166);
    path14.arcToPoint(Offset(size.width * 0.6844680, size.height * 0.6468166),
        radius: Radius.elliptical(
            size.width * 0.01619350, size.height * 0.02615761),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path14.arcToPoint(Offset(size.width * 0.6844680, size.height * 0.6330142),
        radius: Radius.elliptical(
            size.width * 0.004547960, size.height * 0.007346394),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path14.arcToPoint(Offset(size.width * 0.6697905, size.height * 0.6330142),
        radius: Radius.elliptical(
            size.width * 0.01619350, size.height * 0.02615761),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path14.arcToPoint(Offset(size.width * 0.6697905, size.height * 0.6468166),
        radius: Radius.elliptical(
            size.width * 0.004547960, size.height * 0.007346394),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path14.close();

    Paint paint14fill = Paint()..style = PaintingStyle.fill;
    paint14fill.color = Color(0xffd4ecff).withOpacity(1.0);
    canvas.drawPath(path14, paint14fill);

    Path path15 = Path();
    path15.moveTo(size.width * 0.6477398, size.height * 0.6678540);
    path15.arcToPoint(Offset(size.width * 0.6624173, size.height * 0.6678540),
        radius: Radius.elliptical(
            size.width * 0.01619350, size.height * 0.02615761),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path15.cubicTo(
        size.width * 0.6664829,
        size.height * 0.6640695,
        size.width * 0.6664829,
        size.height * 0.6579475,
        size.width * 0.6624173,
        size.height * 0.6540516);
    path15.arcToPoint(Offset(size.width * 0.6477398, size.height * 0.6540516),
        radius: Radius.elliptical(
            size.width * 0.01619350, size.height * 0.02615761),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path15.cubicTo(
        size.width * 0.6437431,
        size.height * 0.6573909,
        size.width * 0.6437431,
        size.height * 0.6635129,
        size.width * 0.6477398,
        size.height * 0.6678540);
    path15.close();

    Paint paint15fill = Paint()..style = PaintingStyle.fill;
    paint15fill.color = Color(0xffff2c9c).withOpacity(1.0);
    canvas.drawPath(path15, paint15fill);

    Path path16 = Path();
    path16.moveTo(size.width * 0.6258269, size.height * 0.6877783);
    path16.arcToPoint(Offset(size.width * 0.6405733, size.height * 0.6877783),
        radius: Radius.elliptical(
            size.width * 0.01633131, size.height * 0.02638023),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path16.arcToPoint(Offset(size.width * 0.6405733, size.height * 0.6740873),
        radius: Radius.elliptical(
            size.width * 0.004479052, size.height * 0.007235085),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path16.arcToPoint(Offset(size.width * 0.6258269, size.height * 0.6740873),
        radius: Radius.elliptical(
            size.width * 0.01633131, size.height * 0.02638023),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path16.arcToPoint(Offset(size.width * 0.6258269, size.height * 0.6877783),
        radius: Radius.elliptical(
            size.width * 0.004479052, size.height * 0.007235085),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path16.close();

    Paint paint16fill = Paint()..style = PaintingStyle.fill;
    paint16fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path16, paint16fill);

    Path path17 = Path();
    path17.moveTo(size.width * 0.1843991, size.height * 0.2979742);
    path17.lineTo(size.width * 0.2176130, size.height * 0.2670303);
    path17.lineTo(size.width * 0.2047271, size.height * 0.2550089);
    path17.lineTo(size.width * 0.1714443, size.height * 0.2859528);
    path17.lineTo(size.width * 0.1843991, size.height * 0.2979742);
    path17.close();

    Paint paint17fill = Paint()..style = PaintingStyle.fill;
    paint17fill.color = Color(0xffff2c9c).withOpacity(1.0);
    canvas.drawPath(path17, paint17fill);

    Path path18 = Path();
    path18.moveTo(size.width * 0.1380926, size.height * 0.3411621);
    path18.lineTo(size.width * 0.1713065, size.height * 0.3102182);
    path18.lineTo(size.width * 0.1584206, size.height * 0.2980855);
    path18.lineTo(size.width * 0.1252067, size.height * 0.3291407);
    path18.lineTo(size.width * 0.1380926, size.height * 0.3411621);
    path18.close();

    Paint paint18fill = Paint()..style = PaintingStyle.fill;
    paint18fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path18, paint18fill);

    Path path19 = Path();
    path19.moveTo(size.width * 0.3328280, size.height * 0.1582814);
    path19.lineTo(size.width * 0.3660419, size.height * 0.1273375);
    path19.lineTo(size.width * 0.3531560, size.height * 0.1152048);
    path19.lineTo(size.width * 0.3199421, size.height * 0.1462600);
    path19.lineTo(size.width * 0.3328280, size.height * 0.1582814);
    path19.close();

    Paint paint19fill = Paint()..style = PaintingStyle.fill;
    paint19fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path19, paint19fill);

    Path path20 = Path();
    path20.moveTo(size.width * 0.1917723, size.height * 0.3292520);
    path20.lineTo(size.width * 0.2380788, size.height * 0.2860641);
    path20.lineTo(size.width * 0.2251240, size.height * 0.2740427);
    path20.lineTo(size.width * 0.1788864, size.height * 0.3172306);
    path20.lineTo(size.width * 0.1917723, size.height * 0.3292520);
    path20.close();

    Paint paint20fill = Paint()..style = PaintingStyle.fill;
    paint20fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path20, paint20fill);

    Path path21 = Path();
    path21.moveTo(size.width * 0.1585584, size.height * 0.3603072);
    path21.lineTo(size.width * 0.1788864, size.height * 0.3412734);
    path21.lineTo(size.width * 0.1659316, size.height * 0.3292520);
    path21.lineTo(size.width * 0.1456725, size.height * 0.3481745);
    path21.lineTo(size.width * 0.1585584, size.height * 0.3603072);
    path21.close();

    Paint paint21fill = Paint()..style = PaintingStyle.fill;
    paint21fill.color = Color(0xffd4ecff).withOpacity(1.0);
    canvas.drawPath(path21, paint21fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
