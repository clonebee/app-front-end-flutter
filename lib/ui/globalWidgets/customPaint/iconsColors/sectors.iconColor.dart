import 'package:flutter/material.dart';

Widget sectorsIconColor({@required double xwidth}) {
  return CustomPaint(
    size: Size(xwidth, (xwidth * 0.5234766178554559).toDouble()),
    painter: SectorsIconColor(),
  );
}

class SectorsIconColor extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.1362778, size.height * 0.4112976);
    path0.lineTo(size.width * 0.1332074, size.height * 0.4111171);
    path0.lineTo(size.width * 0.1338687, size.height * 0.3496661);
    path0.lineTo(size.width * 0.1070383, size.height * 0.3498466);
    path0.lineTo(size.width * 0.1068966, size.height * 0.3904530);
    path0.lineTo(size.width * 0.1038262, size.height * 0.3904530);
    path0.lineTo(size.width * 0.1039679, size.height * 0.3439812);
    path0.lineTo(size.width * 0.1369863, size.height * 0.3437105);
    path0.lineTo(size.width * 0.1362778, size.height * 0.4112976);
    path0.close();

    Paint paint0fill = Paint()..style = PaintingStyle.fill;
    paint0fill.color = Color(0xff464647).withOpacity(1.0);
    canvas.drawPath(path0, paint0fill);

    Path path1 = Path();
    path1.moveTo(size.width * 0.3316013, size.height * 0.4173434);
    path1.lineTo(size.width * 0.3285309, size.height * 0.4172532);
    path1.lineTo(size.width * 0.3291450, size.height * 0.3557120);
    path1.lineTo(size.width * 0.3023146, size.height * 0.3559827);
    path1.lineTo(size.width * 0.3021729, size.height * 0.3964988);
    path1.lineTo(size.width * 0.2991025, size.height * 0.3964988);
    path1.lineTo(size.width * 0.2992442, size.height * 0.3501173);
    path1.lineTo(size.width * 0.3323099, size.height * 0.3498466);
    path1.lineTo(size.width * 0.3316013, size.height * 0.4173434);
    path1.close();

    Paint paint1fill = Paint()..style = PaintingStyle.fill;
    paint1fill.color = Color(0xff464647).withOpacity(1.0);
    canvas.drawPath(path1, paint1fill);

    Path path2 = Path();
    path2.moveTo(size.width * 0.2326878, size.height * 0.4166215);
    path2.lineTo(size.width * 0.2296174, size.height * 0.4165313);
    path2.lineTo(size.width * 0.2302787, size.height * 0.3550803);
    path2.lineTo(size.width * 0.2034010, size.height * 0.3552608);
    path2.lineTo(size.width * 0.2033066, size.height * 0.3958672);
    path2.lineTo(size.width * 0.2002362, size.height * 0.3958672);
    path2.lineTo(size.width * 0.2003779, size.height * 0.3493954);
    path2.lineTo(size.width * 0.2333963, size.height * 0.3491247);
    path2.lineTo(size.width * 0.2326878, size.height * 0.4166215);
    path2.close();

    Paint paint2fill = Paint()..style = PaintingStyle.fill;
    paint2fill.color = Color(0xff464647).withOpacity(1.0);
    canvas.drawPath(path2, paint2fill);

    Path path3 = Path();
    path3.moveTo(size.width * 0.1526689, size.height * 0.9083198);
    path3.cubicTo(
        size.width * 0.1526689,
        size.height * 0.9295254,
        size.width * 0.1469060,
        size.height * 0.9466703,
        size.width * 0.1397260,
        size.height * 0.9466703);
    path3.lineTo(size.width * 0.09404818, size.height * 0.9466703);
    path3.cubicTo(
        size.width * 0.08686821,
        size.height * 0.9466703,
        size.width * 0.08110534,
        size.height * 0.9295254,
        size.width * 0.08110534,
        size.height * 0.9083198);
    path3.lineTo(size.width * 0.08110534, size.height * 0.4761776);
    path3.cubicTo(
        size.width * 0.08110534,
        size.height * 0.4549720,
        size.width * 0.08686821,
        size.height * 0.4377369,
        size.width * 0.09404818,
        size.height * 0.4377369);
    path3.lineTo(size.width * 0.1397260, size.height * 0.4377369);
    path3.cubicTo(
        size.width * 0.1469060,
        size.height * 0.4377369,
        size.width * 0.1526689,
        size.height * 0.4549720,
        size.width * 0.1526689,
        size.height * 0.4761776);
    path3.close();

    Paint paint3fill = Paint()..style = PaintingStyle.fill;
    paint3fill.color = Color(0xff7a7a7c).withOpacity(1.0);
    canvas.drawPath(path3, paint3fill);

    Path path4 = Path();
    path4.moveTo(size.width * 0.1345772, size.height * 0.9083198);
    path4.cubicTo(
        size.width * 0.1345772,
        size.height * 0.9295254,
        size.width * 0.1287671,
        size.height * 0.9466703,
        size.width * 0.1216344,
        size.height * 0.9466703);
    path4.lineTo(size.width * 0.07590931, size.height * 0.9466703);
    path4.cubicTo(
        size.width * 0.06877657,
        size.height * 0.9466703,
        size.width * 0.06296646,
        size.height * 0.9295254,
        size.width * 0.06296646,
        size.height * 0.9083198);
    path4.lineTo(size.width * 0.06296646, size.height * 0.4761776);
    path4.cubicTo(
        size.width * 0.06296646,
        size.height * 0.4549720,
        size.width * 0.06877657,
        size.height * 0.4377369,
        size.width * 0.07590931,
        size.height * 0.4377369);
    path4.lineTo(size.width * 0.1216344, size.height * 0.4377369);
    path4.cubicTo(
        size.width * 0.1287671,
        size.height * 0.4377369,
        size.width * 0.1345772,
        size.height * 0.4549720,
        size.width * 0.1345772,
        size.height * 0.4761776);
    path4.close();

    Paint paint4fill = Paint()..style = PaintingStyle.fill;
    paint4fill.color = Color(0xffa3a3a5).withOpacity(1.0);
    canvas.drawPath(path4, paint4fill);

    Path path5 = Path();
    path5.moveTo(size.width * 0.07590931, size.height * 0.4377369);
    path5.cubicTo(
        size.width * 0.06877657,
        size.height * 0.4377369,
        size.width * 0.06296646,
        size.height * 0.4549720,
        size.width * 0.06296646,
        size.height * 0.4761776);
    path5.lineTo(size.width * 0.06296646, size.height * 0.9083198);
    path5.cubicTo(
        size.width * 0.06296646,
        size.height * 0.9295254,
        size.width * 0.06877657,
        size.height * 0.9466703,
        size.width * 0.07590931,
        size.height * 0.9466703);
    path5.lineTo(size.width * 0.08323099, size.height * 0.9466703);
    path5.lineTo(size.width * 0.08323099, size.height * 0.4377369);
    path5.close();

    Paint paint5fill = Paint()..style = PaintingStyle.fill;
    paint5fill.color = Color(0xffb5b5b7).withOpacity(1.0);
    canvas.drawPath(path5, paint5fill);

    Path path6 = Path();
    path6.moveTo(size.width * 0.1216344, size.height * 0.4377369);
    path6.lineTo(size.width * 0.1143127, size.height * 0.4377369);
    path6.lineTo(size.width * 0.1143127, size.height * 0.9466703);
    path6.lineTo(size.width * 0.1216344, size.height * 0.9466703);
    path6.cubicTo(
        size.width * 0.1287671,
        size.height * 0.9466703,
        size.width * 0.1345772,
        size.height * 0.9295254,
        size.width * 0.1345772,
        size.height * 0.9083198);
    path6.lineTo(size.width * 0.1345772, size.height * 0.4761776);
    path6.cubicTo(
        size.width * 0.1345772,
        size.height * 0.4549720,
        size.width * 0.1287671,
        size.height * 0.4377369,
        size.width * 0.1216344,
        size.height * 0.4377369);
    path6.close();

    Paint paint6fill = Paint()..style = PaintingStyle.fill;
    paint6fill.color = Color(0xff9b9b9b).withOpacity(1.0);
    canvas.drawPath(path6, paint6fill);

    Paint paint7fill = Paint()..style = PaintingStyle.fill;
    paint7fill.color = Color(0xffdcdadb).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.07732641, size.height * 0.4080491,
            size.width * 0.04274917, size.height * 0.02968778),
        paint7fill);

    Paint paint8fill = Paint()..style = PaintingStyle.fill;
    paint8fill.color = Color(0xfff0f0f4).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.1200283, size.height * 0.4080491,
            size.width * 0.01865848, size.height * 0.02977802),
        paint8fill);

    Paint paint9fill = Paint()..style = PaintingStyle.fill;
    paint9fill.color = Color(0xff4c4b4c).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.08332546, size.height * 0.4000180,
            size.width * 0.03651393, size.height * 0.008933406),
        paint9fill);

    Paint paint10fill = Paint()..style = PaintingStyle.fill;
    paint10fill.color = Color(0xff666466).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.1177137, size.height * 0.4000180,
            size.width * 0.01228153, size.height * 0.008933406),
        paint10fill);

    Paint paint11fill = Paint()..style = PaintingStyle.fill;
    paint11fill.color = Color(0xff666466).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.09428436, size.height * 0.3866631,
            size.width * 0.01875295, size.height * 0.01344523),
        paint11fill);

    Paint paint12fill = Paint()..style = PaintingStyle.fill;
    paint12fill.color = Color(0xff757475).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.1125177, size.height * 0.3866631,
            size.width * 0.006235239, size.height * 0.01344523),
        paint12fill);

    Path path13 = Path();
    path13.moveTo(size.width * 0.2503543, size.height * 0.9083198);
    path13.cubicTo(
        size.width * 0.2503543,
        size.height * 0.9295254,
        size.width * 0.2445442,
        size.height * 0.9466703,
        size.width * 0.2374114,
        size.height * 0.9466703);
    path13.lineTo(size.width * 0.1914974, size.height * 0.9466703);
    path13.cubicTo(
        size.width * 0.1843647,
        size.height * 0.9466703,
        size.width * 0.1785546,
        size.height * 0.9295254,
        size.width * 0.1785546,
        size.height * 0.9083198);
    path13.lineTo(size.width * 0.1785546, size.height * 0.4761776);
    path13.cubicTo(
        size.width * 0.1785546,
        size.height * 0.4549720,
        size.width * 0.1843647,
        size.height * 0.4377369,
        size.width * 0.1914974,
        size.height * 0.4377369);
    path13.lineTo(size.width * 0.2372225, size.height * 0.4377369);
    path13.cubicTo(
        size.width * 0.2443552,
        size.height * 0.4377369,
        size.width * 0.2501653,
        size.height * 0.4549720,
        size.width * 0.2501653,
        size.height * 0.4761776);
    path13.close();

    Paint paint13fill = Paint()..style = PaintingStyle.fill;
    paint13fill.color = Color(0xff7a7a7c).withOpacity(1.0);
    canvas.drawPath(path13, paint13fill);

    Path path14 = Path();
    path14.moveTo(size.width * 0.2320265, size.height * 0.9083198);
    path14.cubicTo(
        size.width * 0.2320265,
        size.height * 0.9295254,
        size.width * 0.2262163,
        size.height * 0.9466703,
        size.width * 0.2190836,
        size.height * 0.9466703);
    path14.lineTo(size.width * 0.1734058, size.height * 0.9466703);
    path14.cubicTo(
        size.width * 0.1662258,
        size.height * 0.9466703,
        size.width * 0.1604629,
        size.height * 0.9295254,
        size.width * 0.1604629,
        size.height * 0.9083198);
    path14.lineTo(size.width * 0.1604629, size.height * 0.4761776);
    path14.cubicTo(
        size.width * 0.1604629,
        size.height * 0.4549720,
        size.width * 0.1662258,
        size.height * 0.4377369,
        size.width * 0.1734058,
        size.height * 0.4377369);
    path14.lineTo(size.width * 0.2190836, size.height * 0.4377369);
    path14.cubicTo(
        size.width * 0.2262163,
        size.height * 0.4377369,
        size.width * 0.2320265,
        size.height * 0.4549720,
        size.width * 0.2320265,
        size.height * 0.4761776);
    path14.close();

    Paint paint14fill = Paint()..style = PaintingStyle.fill;
    paint14fill.color = Color(0xffa3a3a5).withOpacity(1.0);
    canvas.drawPath(path14, paint14fill);

    Path path15 = Path();
    path15.moveTo(size.width * 0.1734058, size.height * 0.4377369);
    path15.cubicTo(
        size.width * 0.1662258,
        size.height * 0.4377369,
        size.width * 0.1604629,
        size.height * 0.4549720,
        size.width * 0.1604629,
        size.height * 0.4761776);
    path15.lineTo(size.width * 0.1604629, size.height * 0.9083198);
    path15.cubicTo(
        size.width * 0.1604629,
        size.height * 0.9295254,
        size.width * 0.1662258,
        size.height * 0.9466703,
        size.width * 0.1734058,
        size.height * 0.9466703);
    path15.lineTo(size.width * 0.1807274, size.height * 0.9466703);
    path15.lineTo(size.width * 0.1807274, size.height * 0.4377369);
    path15.close();

    Paint paint15fill = Paint()..style = PaintingStyle.fill;
    paint15fill.color = Color(0xff353535).withOpacity(1.0);
    canvas.drawPath(path15, paint15fill);

    Path path16 = Path();
    path16.moveTo(size.width * 0.2190836, size.height * 0.4377369);
    path16.lineTo(size.width * 0.2117619, size.height * 0.4377369);
    path16.lineTo(size.width * 0.2117619, size.height * 0.9466703);
    path16.lineTo(size.width * 0.2190836, size.height * 0.9466703);
    path16.cubicTo(
        size.width * 0.2262163,
        size.height * 0.9466703,
        size.width * 0.2320265,
        size.height * 0.9295254,
        size.width * 0.2320265,
        size.height * 0.9083198);
    path16.lineTo(size.width * 0.2320265, size.height * 0.4761776);
    path16.cubicTo(
        size.width * 0.2320265,
        size.height * 0.4549720,
        size.width * 0.2262163,
        size.height * 0.4377369,
        size.width * 0.2190836,
        size.height * 0.4377369);
    path16.close();

    Paint paint16fill = Paint()..style = PaintingStyle.fill;
    paint16fill.color = Color(0xff9b9b9b).withOpacity(1.0);
    canvas.drawPath(path16, paint16fill);

    Paint paint17fill = Paint()..style = PaintingStyle.fill;
    paint17fill.color = Color(0xffdcdadb).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.1747756, size.height * 0.4080491,
            size.width * 0.04270194, size.height * 0.02968778),
        paint17fill);

    Paint paint18fill = Paint()..style = PaintingStyle.fill;
    paint18fill.color = Color(0xfff0f0f4).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.2175248, size.height * 0.4080491,
            size.width * 0.01870572, size.height * 0.02977802),
        paint18fill);

    Paint paint19fill = Paint()..style = PaintingStyle.fill;
    paint19fill.color = Color(0xff4c4b4c).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.1807747, size.height * 0.4000180,
            size.width * 0.03651393, size.height * 0.008933406),
        paint19fill);

    Paint paint20fill = Paint()..style = PaintingStyle.fill;
    paint20fill.color = Color(0xff666466).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.2152102, size.height * 0.4000180,
            size.width * 0.01228153, size.height * 0.008933406),
        paint20fill);

    Paint paint21fill = Paint()..style = PaintingStyle.fill;
    paint21fill.color = Color(0xff666466).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.1917336, size.height * 0.3866631,
            size.width * 0.01875295, size.height * 0.01344523),
        paint21fill);

    Paint paint22fill = Paint()..style = PaintingStyle.fill;
    paint22fill.color = Color(0xff757475).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.2100142, size.height * 0.3866631,
            size.width * 0.006235239, size.height * 0.01344523),
        paint22fill);

    Path path23 = Path();
    path23.moveTo(size.width * 0.3476145, size.height * 0.9083198);
    path23.cubicTo(
        size.width * 0.3476145,
        size.height * 0.9295254,
        size.width * 0.3418044,
        size.height * 0.9466703,
        size.width * 0.3346717,
        size.height * 0.9466703);
    path23.lineTo(size.width * 0.2889939, size.height * 0.9466703);
    path23.cubicTo(
        size.width * 0.2818139,
        size.height * 0.9466703,
        size.width * 0.2760510,
        size.height * 0.9295254,
        size.width * 0.2760510,
        size.height * 0.9083198);
    path23.lineTo(size.width * 0.2760510, size.height * 0.4761776);
    path23.cubicTo(
        size.width * 0.2760510,
        size.height * 0.4549720,
        size.width * 0.2818139,
        size.height * 0.4377369,
        size.width * 0.2889939,
        size.height * 0.4377369);
    path23.lineTo(size.width * 0.3346717, size.height * 0.4377369);
    path23.cubicTo(
        size.width * 0.3418044,
        size.height * 0.4377369,
        size.width * 0.3476145,
        size.height * 0.4549720,
        size.width * 0.3476145,
        size.height * 0.4761776);
    path23.close();

    Paint paint23fill = Paint()..style = PaintingStyle.fill;
    paint23fill.color = Color(0xff7a7a7c).withOpacity(1.0);
    canvas.drawPath(path23, paint23fill);

    Path path24 = Path();
    path24.moveTo(size.width * 0.3295229, size.height * 0.9083198);
    path24.cubicTo(
        size.width * 0.3295229,
        size.height * 0.9295254,
        size.width * 0.3237128,
        size.height * 0.9466703,
        size.width * 0.3165801,
        size.height * 0.9466703);
    path24.lineTo(size.width * 0.2708550, size.height * 0.9466703);
    path24.cubicTo(
        size.width * 0.2636750,
        size.height * 0.9466703,
        size.width * 0.2579121,
        size.height * 0.9295254,
        size.width * 0.2579121,
        size.height * 0.9083198);
    path24.lineTo(size.width * 0.2579121, size.height * 0.4761776);
    path24.cubicTo(
        size.width * 0.2579121,
        size.height * 0.4549720,
        size.width * 0.2636750,
        size.height * 0.4377369,
        size.width * 0.2708550,
        size.height * 0.4377369);
    path24.lineTo(size.width * 0.3164856, size.height * 0.4377369);
    path24.cubicTo(
        size.width * 0.3236183,
        size.height * 0.4377369,
        size.width * 0.3294284,
        size.height * 0.4549720,
        size.width * 0.3294284,
        size.height * 0.4761776);
    path24.close();

    Paint paint24fill = Paint()..style = PaintingStyle.fill;
    paint24fill.color = Color(0xffa3a3a5).withOpacity(1.0);
    canvas.drawPath(path24, paint24fill);

    Path path25 = Path();
    path25.moveTo(size.width * 0.2708550, size.height * 0.4377369);
    path25.cubicTo(
        size.width * 0.2636750,
        size.height * 0.4377369,
        size.width * 0.2579121,
        size.height * 0.4549720,
        size.width * 0.2579121,
        size.height * 0.4761776);
    path25.lineTo(size.width * 0.2579121, size.height * 0.9083198);
    path25.cubicTo(
        size.width * 0.2579121,
        size.height * 0.9295254,
        size.width * 0.2636750,
        size.height * 0.9466703,
        size.width * 0.2708550,
        size.height * 0.9466703);
    path25.lineTo(size.width * 0.2781767, size.height * 0.9466703);
    path25.lineTo(size.width * 0.2781767, size.height * 0.4377369);
    path25.close();

    Paint paint25fill = Paint()..style = PaintingStyle.fill;
    paint25fill.color = Color(0xff353535).withOpacity(1.0);
    canvas.drawPath(path25, paint25fill);

    Path path26 = Path();
    path26.moveTo(size.width * 0.3164856, size.height * 0.4377369);
    path26.lineTo(size.width * 0.3092111, size.height * 0.4377369);
    path26.lineTo(size.width * 0.3092111, size.height * 0.9466703);
    path26.lineTo(size.width * 0.3164856, size.height * 0.9466703);
    path26.cubicTo(
        size.width * 0.3236183,
        size.height * 0.9466703,
        size.width * 0.3294284,
        size.height * 0.9295254,
        size.width * 0.3294284,
        size.height * 0.9083198);
    path26.lineTo(size.width * 0.3294284, size.height * 0.4761776);
    path26.cubicTo(
        size.width * 0.3295229,
        size.height * 0.4549720,
        size.width * 0.3237128,
        size.height * 0.4377369,
        size.width * 0.3164856,
        size.height * 0.4377369);
    path26.close();

    Paint paint26fill = Paint()..style = PaintingStyle.fill;
    paint26fill.color = Color(0xff9b9b9b).withOpacity(1.0);
    canvas.drawPath(path26, paint26fill);

    Paint paint27fill = Paint()..style = PaintingStyle.fill;
    paint27fill.color = Color(0xffdcdadb).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.2722721, size.height * 0.4080491,
            size.width * 0.04270194, size.height * 0.02968778),
        paint27fill);

    Paint paint28fill = Paint()..style = PaintingStyle.fill;
    paint28fill.color = Color(0xfff0f0f4).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.3149740, size.height * 0.4080491,
            size.width * 0.01870572, size.height * 0.02977802),
        paint28fill);

    Paint paint29fill = Paint()..style = PaintingStyle.fill;
    paint29fill.color = Color(0xff4c4b4c).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.2782711, size.height * 0.4000180,
            size.width * 0.03651393, size.height * 0.008933406),
        paint29fill);

    Paint paint30fill = Paint()..style = PaintingStyle.fill;
    paint30fill.color = Color(0xff666466).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.3126594, size.height * 0.4000180,
            size.width * 0.01228153, size.height * 0.008933406),
        paint30fill);

    Paint paint31fill = Paint()..style = PaintingStyle.fill;
    paint31fill.color = Color(0xff666466).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.2892300, size.height * 0.3866631,
            size.width * 0.01875295, size.height * 0.01344523),
        paint31fill);

    Paint paint32fill = Paint()..style = PaintingStyle.fill;
    paint32fill.color = Color(0xff757475).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.3074634, size.height * 0.3866631,
            size.width * 0.006282475, size.height * 0.01344523),
        paint32fill);

    Paint paint33fill = Paint()..style = PaintingStyle.fill;
    paint33fill.color = Color(0xffebebeb).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.001322626, size.height * 0.9417073,
            size.width * 0.9895135, size.height * 0.04719365),
        paint33fill);

    Paint paint34fill = Paint()..style = PaintingStyle.fill;
    paint34fill.color = Color(0xffbababa).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.7830893, size.height * 0.005684894,
            size.width * 0.04199339, size.height * 0.6789388),
        paint34fill);

    Paint paint35fill = Paint()..style = PaintingStyle.fill;
    paint35fill.color = Color(0xffe8e3e8).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.7830893, size.height * 0.005684894,
            size.width * 0.02102031, size.height * 0.6789388),
        paint35fill);

    Paint paint36fill = Paint()..style = PaintingStyle.fill;
    paint36fill.color = Color(0xff4c4b4c).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.7758621, 0, size.width * 0.05583373,
            size.height * 0.01371594),
        paint36fill);

    Paint paint37fill = Paint()..style = PaintingStyle.fill;
    paint37fill.color = Color(0xff4c4b4c).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.7758621, size.height * 0.08256632,
            size.width * 0.05583373, size.height * 0.01380617),
        paint37fill);

    Paint paint38fill = Paint()..style = PaintingStyle.fill;
    paint38fill.color = Color(0xff4c4b4c).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.7758621, size.height * 0.1651326,
            size.width * 0.05583373, size.height * 0.01380617),
        paint38fill);

    Paint paint39fill = Paint()..style = PaintingStyle.fill;
    paint39fill.color = Color(0xff4c4b4c).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.7758621, size.height * 0.2545569,
            size.width * 0.05583373, size.height * 0.01371594),
        paint39fill);

    Paint paint40fill = Paint()..style = PaintingStyle.fill;
    paint40fill.color = Color(0xff4c4b4c).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.7758621, size.height * 0.3371233,
            size.width * 0.05583373, size.height * 0.01371594),
        paint40fill);

    Paint paint41fill = Paint()..style = PaintingStyle.fill;
    paint41fill.color = Color(0xff4c4b4c).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.7758621, size.height * 0.4196896,
            size.width * 0.05583373, size.height * 0.01380617),
        paint41fill);

    Paint paint42fill = Paint()..style = PaintingStyle.fill;
    paint42fill.color = Color(0xff4c4b4c).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.7758621, size.height * 0.5022559,
            size.width * 0.05583373, size.height * 0.01371594),
        paint42fill);

    Paint paint43fill = Paint()..style = PaintingStyle.fill;
    paint43fill.color = Color(0xff4c4b4c).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.7758621, size.height * 0.5917704,
            size.width * 0.05583373, size.height * 0.01371594),
        paint43fill);

    Paint paint44fill = Paint()..style = PaintingStyle.fill;
    paint44fill.color = Color(0xff000000).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.7830893, size.height * 0.01371594,
            size.width * 0.04185168, size.height * 0.02319076),
        paint44fill);

    Paint paint45fill = Paint()..style = PaintingStyle.fill;
    paint45fill.color = Color(0xff000000).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.7830893, size.height * 0.09628226,
            size.width * 0.04185168, size.height * 0.02319076),
        paint45fill);

    Paint paint46fill = Paint()..style = PaintingStyle.fill;
    paint46fill.color = Color(0xff000000).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.7830893, size.height * 0.1789388,
            size.width * 0.04185168, size.height * 0.02319076),
        paint46fill);

    Paint paint47fill = Paint()..style = PaintingStyle.fill;
    paint47fill.color = Color(0xff000000).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.7830893, size.height * 0.2683631,
            size.width * 0.04185168, size.height * 0.02319076),
        paint47fill);

    Paint paint48fill = Paint()..style = PaintingStyle.fill;
    paint48fill.color = Color(0xff000000).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.7830893, size.height * 0.3509294,
            size.width * 0.04185168, size.height * 0.02319076),
        paint48fill);

    Paint paint49fill = Paint()..style = PaintingStyle.fill;
    paint49fill.color = Color(0xff000000).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.7830893, size.height * 0.4334958,
            size.width * 0.04185168, size.height * 0.02319076),
        paint49fill);

    Paint paint50fill = Paint()..style = PaintingStyle.fill;
    paint50fill.color = Color(0xff000000).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.7830893, size.height * 0.5160621,
            size.width * 0.04185168, size.height * 0.02319076),
        paint50fill);

    Paint paint51fill = Paint()..style = PaintingStyle.fill;
    paint51fill.color = Color(0xff01a0e2).withOpacity(1.0);
    canvas.drawRRect(
        RRect.fromRectAndCorners(
            Rect.fromLTWH(size.width * 0.4445914, size.height * 0.3085183,
                size.width * 0.1401512, size.height * 0.5524274),
            bottomRight: Radius.circular(size.width * 0.01771375),
            bottomLeft: Radius.circular(size.width * 0.01771375),
            topLeft: Radius.circular(size.width * 0.01771375),
            topRight: Radius.circular(size.width * 0.01771375)),
        paint51fill);

    Path path52 = Path();
    path52.moveTo(size.width * 0.5668399, size.height * 0.3085183);
    path52.lineTo(size.width * 0.5506377, size.height * 0.3085183);
    path52.lineTo(size.width * 0.5506377, size.height * 0.8609457);
    path52.lineTo(size.width * 0.5668399, size.height * 0.8609457);
    path52.arcToPoint(Offset(size.width * 0.5845536, size.height * 0.8271070),
        radius: Radius.elliptical(
            size.width * 0.01771375, size.height * 0.03383866),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path52.lineTo(size.width * 0.5845536, size.height * 0.3423570);
    path52.arcToPoint(Offset(size.width * 0.5668399, size.height * 0.3085183),
        radius: Radius.elliptical(
            size.width * 0.01771375, size.height * 0.03383866),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path52.close();

    Paint paint52fill = Paint()..style = PaintingStyle.fill;
    paint52fill.color = Color(0xff018ac1).withOpacity(1.0);
    canvas.drawPath(path52, paint52fill);

    Path path53 = Path();
    path53.moveTo(size.width * 0.4445914, size.height * 0.3423570);
    path53.lineTo(size.width * 0.4445914, size.height * 0.8271070);
    path53.arcToPoint(Offset(size.width * 0.4623051, size.height * 0.8609457),
        radius: Radius.elliptical(
            size.width * 0.01771375, size.height * 0.03383866),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path53.lineTo(size.width * 0.4785073, size.height * 0.8609457);
    path53.lineTo(size.width * 0.4785073, size.height * 0.3085183);
    path53.lineTo(size.width * 0.4623051, size.height * 0.3085183);
    path53.arcToPoint(Offset(size.width * 0.4445914, size.height * 0.3423570),
        radius: Radius.elliptical(
            size.width * 0.01771375, size.height * 0.03383866),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path53.close();

    Paint paint53fill = Paint()..style = PaintingStyle.fill;
    paint53fill.color = Color(0xff5fc6f2).withOpacity(1.0);
    canvas.drawPath(path53, paint53fill);

    Path path54 = Path();
    path54.moveTo(size.width * 0.5668399, size.height * 0.3085183);
    path54.lineTo(size.width * 0.4623051, size.height * 0.3085183);
    path54.arcToPoint(Offset(size.width * 0.4445914, size.height * 0.3423570),
        radius: Radius.elliptical(
            size.width * 0.01771375, size.height * 0.03383866),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path54.lineTo(size.width * 0.4445914, size.height * 0.3789930);
    path54.lineTo(size.width * 0.5847426, size.height * 0.3789930);
    path54.lineTo(size.width * 0.5847426, size.height * 0.3423570);
    path54.arcToPoint(Offset(size.width * 0.5668399, size.height * 0.3085183),
        radius: Radius.elliptical(
            size.width * 0.01771375, size.height * 0.03383866),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path54.close();

    Paint paint54fill = Paint()..style = PaintingStyle.fill;
    paint54fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path54, paint54fill);

    Paint paint55fill = Paint()..style = PaintingStyle.fill;
    paint55fill.color = Color(0xffdbdddd).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.4755786, size.height * 0.2789208,
            size.width * 0.07855456, size.height * 0.02959755),
        paint55fill);

    Paint paint56fill = Paint()..style = PaintingStyle.fill;
    paint56fill.color = Color(0xffa9a8a9).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.5253661, size.height * 0.2789208,
            size.width * 0.02876712, size.height * 0.02959755),
        paint56fill);

    Paint paint57fill = Paint()..style = PaintingStyle.fill;
    paint57fill.color = Color(0xffdbdddd).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.4851677, size.height * 0.2535643,
            size.width * 0.05899858, size.height * 0.02959755),
        paint57fill);

    Paint paint58fill = Paint()..style = PaintingStyle.fill;
    paint58fill.color = Color(0xffa9a8a9).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.5225791, size.height * 0.2535643,
            size.width * 0.02163439, size.height * 0.02959755),
        paint58fill);

    Paint paint59fill = Paint()..style = PaintingStyle.fill;
    paint59fill.color = Color(0xff01a0e2).withOpacity(1.0);
    canvas.drawRRect(
        RRect.fromRectAndCorners(
            Rect.fromLTWH(size.width * 0.6057629, size.height * 0.3085183,
                size.width * 0.1401512, size.height * 0.5524274),
            bottomRight: Radius.circular(size.width * 0.01771375),
            bottomLeft: Radius.circular(size.width * 0.01771375),
            topLeft: Radius.circular(size.width * 0.01771375),
            topRight: Radius.circular(size.width * 0.01771375)),
        paint59fill);

    Path path60 = Path();
    path60.moveTo(size.width * 0.7282003, size.height * 0.3085183);
    path60.lineTo(size.width * 0.7119981, size.height * 0.3085183);
    path60.lineTo(size.width * 0.7119981, size.height * 0.8609457);
    path60.lineTo(size.width * 0.7282003, size.height * 0.8609457);
    path60.arcToPoint(Offset(size.width * 0.7459140, size.height * 0.8271070),
        radius: Radius.elliptical(
            size.width * 0.01771375, size.height * 0.03383866),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path60.lineTo(size.width * 0.7459140, size.height * 0.3423570);
    path60.arcToPoint(Offset(size.width * 0.7282003, size.height * 0.3085183),
        radius: Radius.elliptical(
            size.width * 0.01771375, size.height * 0.03383866),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path60.close();

    Paint paint60fill = Paint()..style = PaintingStyle.fill;
    paint60fill.color = Color(0xff018ac1).withOpacity(1.0);
    canvas.drawPath(path60, paint60fill);

    Path path61 = Path();
    path61.moveTo(size.width * 0.6057629, size.height * 0.3423570);
    path61.lineTo(size.width * 0.6057629, size.height * 0.8271070);
    path61.arcToPoint(Offset(size.width * 0.6235239, size.height * 0.8609457),
        radius: Radius.elliptical(
            size.width * 0.01771375, size.height * 0.03383866),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path61.lineTo(size.width * 0.6397260, size.height * 0.8609457);
    path61.lineTo(size.width * 0.6397260, size.height * 0.3085183);
    path61.lineTo(size.width * 0.6235239, size.height * 0.3085183);
    path61.arcToPoint(Offset(size.width * 0.6057629, size.height * 0.3423570),
        radius: Radius.elliptical(
            size.width * 0.01771375, size.height * 0.03383866),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path61.close();

    Paint paint61fill = Paint()..style = PaintingStyle.fill;
    paint61fill.color = Color(0xff5fc6f2).withOpacity(1.0);
    canvas.drawPath(path61, paint61fill);

    Path path62 = Path();
    path62.moveTo(size.width * 0.7282003, size.height * 0.3085183);
    path62.lineTo(size.width * 0.6235239, size.height * 0.3085183);
    path62.arcToPoint(Offset(size.width * 0.6058101, size.height * 0.3423570),
        radius: Radius.elliptical(
            size.width * 0.01771375, size.height * 0.03383866),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path62.lineTo(size.width * 0.6058101, size.height * 0.3789930);
    path62.lineTo(size.width * 0.7459613, size.height * 0.3789930);
    path62.lineTo(size.width * 0.7459613, size.height * 0.3423570);
    path62.arcToPoint(Offset(size.width * 0.7282003, size.height * 0.3085183),
        radius: Radius.elliptical(
            size.width * 0.01771375, size.height * 0.03383866),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path62.close();

    Paint paint62fill = Paint()..style = PaintingStyle.fill;
    paint62fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path62, paint62fill);

    Paint paint63fill = Paint()..style = PaintingStyle.fill;
    paint63fill.color = Color(0xffdbdddd).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.6367501, size.height * 0.2789208,
            size.width * 0.07855456, size.height * 0.02959755),
        paint63fill);

    Paint paint64fill = Paint()..style = PaintingStyle.fill;
    paint64fill.color = Color(0xffa9a8a9).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.6865376, size.height * 0.2789208,
            size.width * 0.02876712, size.height * 0.02959755),
        paint64fill);

    Paint paint65fill = Paint()..style = PaintingStyle.fill;
    paint65fill.color = Color(0xffdbdddd).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.6463392, size.height * 0.2535643,
            size.width * 0.05899858, size.height * 0.02959755),
        paint65fill);

    Paint paint66fill = Paint()..style = PaintingStyle.fill;
    paint66fill.color = Color(0xffa9a8a9).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.6837506, size.height * 0.2535643,
            size.width * 0.02163439, size.height * 0.02959755),
        paint66fill);

    Paint paint67fill = Paint()..style = PaintingStyle.fill;
    paint67fill.color = Color(0xffd9dbda).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.7004724, size.height * 0.3889190,
            size.width * 0.1920642, size.height * 0.5849125),
        paint67fill);

    Paint paint68fill = Paint()..style = PaintingStyle.fill;
    paint68fill.color = Color(0xffc5c7c6).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.8868682, size.height * 0.3889190,
            size.width * 0.1017005, size.height * 0.5849125),
        paint68fill);

    Paint paint69fill = Paint()..style = PaintingStyle.fill;
    paint69fill.color = Color(0xff27a2cc).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.7465281, size.height * 0.4136437,
            size.width * 0.09726027, size.height * 0.5597365),
        paint69fill);

    Paint paint70fill = Paint()..style = PaintingStyle.fill;
    paint70fill.color = Color(0xff66cafe).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.7552197, size.height * 0.4136437,
            size.width * 0.08852149, size.height * 0.5597365),
        paint70fill);

    Path path71 = Path();
    path71.moveTo(size.width * 0.9877185, size.height * 0.4624616);
    path71.lineTo(size.width * 0.7000000, size.height * 0.4618300);
    path71.lineTo(size.width * 0.7005196, size.height * 0.4155387);
    path71.lineTo(size.width * 0.9877185, size.height * 0.4144559);
    path71.lineTo(size.width * 0.9877185, size.height * 0.4624616);
    path71.close();

    Paint paint71fill = Paint()..style = PaintingStyle.fill;
    paint71fill.color = Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path71, paint71fill);

    Paint paint72fill = Paint()..style = PaintingStyle.fill;
    paint72fill.color = Color(0xffebebeb).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.6890411, size.height * 0.3729471,
            size.width * 0.2215872, size.height * 0.04159899),
        paint72fill);

    Paint paint73fill = Paint()..style = PaintingStyle.fill;
    paint73fill.color = Color(0xffcecece).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.8860652, size.height * 0.3729471,
            size.width * 0.1139821, size.height * 0.04159899),
        paint73fill);

    Paint paint74fill = Paint()..style = PaintingStyle.fill;
    paint74fill.color = Color(0xffc5c4c6).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.7733113, size.height * 0.4778018,
            size.width * 0.04747284, size.height * 0.09384588),
        paint74fill);

    Paint paint75fill = Paint()..style = PaintingStyle.fill;
    paint75fill.color = Color(0xff353535).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.7781767, size.height * 0.4840282,
            size.width * 0.03774209, size.height * 0.08130301),
        paint75fill);

    Paint paint76fill = Paint()..style = PaintingStyle.fill;
    paint76fill.color = Color(0xff4c4b4c).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.7835616, size.height * 0.4908861,
            size.width * 0.03235711, size.height * 0.07444505),
        paint76fill);

    Paint paint77fill = Paint()..style = PaintingStyle.fill;
    paint77fill.color = Color(0xffc5c4c6).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.7948040, size.height * 0.4788847,
            size.width * 0.003117619, size.height * 0.08996571),
        paint77fill);

    Paint paint78fill = Paint()..style = PaintingStyle.fill;
    paint78fill.color = Color(0xffc5c4c6).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.7733113, size.height * 0.6039524,
            size.width * 0.04747284, size.height * 0.09384588),
        paint78fill);

    Paint paint79fill = Paint()..style = PaintingStyle.fill;
    paint79fill.color = Color(0xff353535).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.7781767, size.height * 0.6102689,
            size.width * 0.03774209, size.height * 0.08130301),
        paint79fill);

    Paint paint80fill = Paint()..style = PaintingStyle.fill;
    paint80fill.color = Color(0xff4c4b4c).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.7835616, size.height * 0.6171269,
            size.width * 0.03235711, size.height * 0.07444505),
        paint80fill);

    Paint paint81fill = Paint()..style = PaintingStyle.fill;
    paint81fill.color = Color(0xffc5c4c6).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.7948040, size.height * 0.6051254,
            size.width * 0.003117619, size.height * 0.08996571),
        paint81fill);

    Paint paint82fill = Paint()..style = PaintingStyle.fill;
    paint82fill.color = Color(0xffc5c4c6).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.7733113, size.height * 0.7217109,
            size.width * 0.04747284, size.height * 0.09384588),
        paint82fill);

    Paint paint83fill = Paint()..style = PaintingStyle.fill;
    paint83fill.color = Color(0xff353535).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.7781767, size.height * 0.7280274,
            size.width * 0.03774209, size.height * 0.08130301),
        paint83fill);

    Paint paint84fill = Paint()..style = PaintingStyle.fill;
    paint84fill.color = Color(0xff4c4b4c).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.7835616, size.height * 0.7348854,
            size.width * 0.03235711, size.height * 0.07444505),
        paint84fill);

    Paint paint85fill = Paint()..style = PaintingStyle.fill;
    paint85fill.color = Color(0xffc5c4c6).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.7948040, size.height * 0.7228840,
            size.width * 0.003117619, size.height * 0.08996571),
        paint85fill);

    Paint paint86fill = Paint()..style = PaintingStyle.fill;
    paint86fill.color = Color(0xffc5c4c6).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.7733113, size.height * 0.8389280,
            size.width * 0.04747284, size.height * 0.09384588),
        paint86fill);

    Paint paint87fill = Paint()..style = PaintingStyle.fill;
    paint87fill.color = Color(0xff353535).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.7781767, size.height * 0.8451543,
            size.width * 0.03774209, size.height * 0.08130301),
        paint87fill);

    Paint paint88fill = Paint()..style = PaintingStyle.fill;
    paint88fill.color = Color(0xff4c4b4c).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.7835616, size.height * 0.8520123,
            size.width * 0.03235711, size.height * 0.07444505),
        paint88fill);

    Paint paint89fill = Paint()..style = PaintingStyle.fill;
    paint89fill.color = Color(0xffc5c4c6).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.7948040, size.height * 0.8400108,
            size.width * 0.003117619, size.height * 0.08996571),
        paint89fill);

    Path path90 = Path();
    path90.moveTo(size.width * 0.6291923, size.height * 0.8597726);
    path90.lineTo(size.width * 0.7005196, size.height * 0.8597726);
    path90.lineTo(size.width * 0.7005196, size.height * 0.4157192);
    path90.lineTo(size.width * 0.7005196, size.height * 0.4157192);
    path90.lineTo(size.width * 0.6291923, size.height * 0.8597726);
    path90.close();

    Paint paint90fill = Paint()..style = PaintingStyle.fill;
    paint90fill.color = Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path90, paint90fill);

    Path path91 = Path();
    path91.moveTo(size.width * 0.4222957, size.height * 0.7734164);
    path91.lineTo(size.width * 0.3520076, size.height * 0.7734164);
    path91.lineTo(size.width * 0.3506377, size.height * 0.8874752);
    path91.lineTo(size.width * 0.4242796, size.height * 0.8874752);
    path91.lineTo(size.width * 0.4222957, size.height * 0.7734164);
    path91.close();

    Paint paint91fill = Paint()..style = PaintingStyle.fill;
    paint91fill.color = Color(0xffd45958).withOpacity(1.0);
    canvas.drawPath(path91, paint91fill);

    Path path92 = Path();
    path92.moveTo(size.width * 0.3875768, size.height * 0.9382783);
    path92.lineTo(size.width * 0.3427492, size.height * 0.9392709);
    path92.lineTo(size.width * 0.3427019, size.height * 0.9082296);
    path92.lineTo(size.width * 0.3875295, size.height * 0.9073272);
    path92.lineTo(size.width * 0.3875768, size.height * 0.9382783);
    path92.close();

    Paint paint92fill = Paint()..style = PaintingStyle.fill;
    paint92fill.color = Color(0xff5a5859).withOpacity(1.0);
    canvas.drawPath(path92, paint92fill);

    Path path93 = Path();
    path93.moveTo(size.width * 0.4324043, size.height * 0.9366540);
    path93.lineTo(size.width * 0.3875768, size.height * 0.9375564);
    path93.lineTo(size.width * 0.3875295, size.height * 0.9073272);
    path93.lineTo(size.width * 0.4323571, size.height * 0.9063346);
    path93.lineTo(size.width * 0.4324043, size.height * 0.9366540);
    path93.close();

    Paint paint93fill = Paint()..style = PaintingStyle.fill;
    paint93fill.color = Color(0xff7a7a7c).withOpacity(1.0);
    canvas.drawPath(path93, paint93fill);

    Paint paint94fill = Paint()..style = PaintingStyle.fill;
    paint94fill.color = Color(0xffc5c4c6).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.6760038, size.height * 0.7319076,
            size.width * 0.02645253, size.height * 0.1301209),
        paint94fill);

    Paint paint95fill = Paint()..style = PaintingStyle.fill;
    paint95fill.color = Color(0xff353535).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.6787435, size.height * 0.7405703,
            size.width * 0.02102031, size.height * 0.1127955),
        paint95fill);

    Paint paint96fill = Paint()..style = PaintingStyle.fill;
    paint96fill.color = Color(0xff4c4b4c).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.6817194, size.height * 0.7501354,
            size.width * 0.01799717, size.height * 0.1032305),
        paint96fill);

    Paint paint97fill = Paint()..style = PaintingStyle.fill;
    paint97fill.color = Color(0xffc5c4c6).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.6880019, size.height * 0.7334416,
            size.width * 0.001747756, size.height * 0.1247067),
        paint97fill);

    Paint paint98fill = Paint()..style = PaintingStyle.fill;
    paint98fill.color = Color(0xffc5c4c6).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.7160605, size.height * 0.7319076,
            size.width * 0.02645253, size.height * 0.1301209),
        paint98fill);

    Paint paint99fill = Paint()..style = PaintingStyle.fill;
    paint99fill.color = Color(0xff353535).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.7187530, size.height * 0.7405703,
            size.width * 0.02102031, size.height * 0.1127955),
        paint99fill);

    Paint paint100fill = Paint()..style = PaintingStyle.fill;
    paint100fill.color = Color(0xff4c4b4c).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.7217761, size.height * 0.7501354,
            size.width * 0.01804440, size.height * 0.1032305),
        paint100fill);

    Paint paint101fill = Paint()..style = PaintingStyle.fill;
    paint101fill.color = Color(0xffc5c4c6).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.7280586, size.height * 0.7334416,
            size.width * 0.001747756, size.height * 0.1247067),
        paint101fill);

    Paint paint102fill = Paint()..style = PaintingStyle.fill;
    paint102fill.color = Color(0xffebebeb).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.3284837, size.height * 0.6637791,
            size.width * 0.4023146, size.height * 0.3120375),
        paint102fill);

    Paint paint103fill = Paint()..style = PaintingStyle.fill;
    paint103fill.color = Color(0xffcecece).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.7260274, size.height * 0.6637791,
            size.width * 0.02952291, size.height * 0.3110449),
        paint103fill);

    Paint paint104fill = Paint()..style = PaintingStyle.fill;
    paint104fill.color = Color(0xffebebeb).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.9590931, size.height * 0.6637791,
            size.width * 0.02952291, size.height * 0.3110449),
        paint104fill);

    Paint paint105fill = Paint()..style = PaintingStyle.fill;
    paint105fill.color = Color(0xffcecece).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.9750590, size.height * 0.6637791,
            size.width * 0.01355692, size.height * 0.3110449),
        paint105fill);

    Paint paint106fill = Paint()..style = PaintingStyle.fill;
    paint106fill.color = Color(0xffcecece).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.7260274, size.height * 0.6637791,
            size.width * 0.2615494, size.height * 0.1005234),
        paint106fill);

    Paint paint107fill = Paint()..style = PaintingStyle.fill;
    paint107fill.color = Color(0xff00acff).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.6973547, size.height * 0.6619744,
            size.width * 0.2979688, size.height * 0.03077062),
        paint107fill);

    Paint paint108fill = Paint()..style = PaintingStyle.fill;
    paint108fill.color = Color(0xffa8a8a8).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.5051488, size.height * 0.7308248,
            size.width * 0.05134624, size.height * 0.2451724),
        paint108fill);

    Paint paint109fill = Paint()..style = PaintingStyle.fill;
    paint109fill.color = Color(0xffc6c6c6).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.5099197, size.height * 0.7308248,
            size.width * 0.05134624, size.height * 0.2451724),
        paint109fill);

    Paint paint110fill = Paint()..style = PaintingStyle.fill;
    paint110fill.color = Color(0xff66cafe).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.3175248, size.height * 0.6619744,
            size.width * 0.4087860, size.height * 0.03077062),
        paint110fill);

    Paint paint111fill = Paint()..style = PaintingStyle.fill;
    paint111fill.color = Color(0xff000000).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.3281530, size.height * 0.6926548,
            size.width * 0.6594709, size.height * 0.02201769),
        paint111fill);

    Paint paint112fill = Paint()..style = PaintingStyle.fill;
    paint112fill.color = Color(0xffc5c4c6).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.3421823, size.height * 0.7903808,
            size.width * 0.02801134, size.height * 0.07787403),
        paint112fill);

    Paint paint113fill = Paint()..style = PaintingStyle.fill;
    paint113fill.color = Color(0xff1a6687).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.3450165, size.height * 0.7956145,
            size.width * 0.02224846, size.height * 0.06758708),
        paint113fill);

    Paint paint114fill = Paint()..style = PaintingStyle.fill;
    paint114fill.color = Color(0xff3397c4).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.3482286, size.height * 0.8012994,
            size.width * 0.01908361, size.height * 0.06181195),
        paint114fill);

    Paint paint115fill = Paint()..style = PaintingStyle.fill;
    paint115fill.color = Color(0xffc5c4c6).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.3548418, size.height * 0.7912832,
            size.width * 0.001842230, size.height * 0.07462552),
        paint115fill);

    Paint paint116fill = Paint()..style = PaintingStyle.fill;
    paint116fill.color = Color(0xffc5c4c6).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.3822390, size.height * 0.7903808,
            size.width * 0.02801134, size.height * 0.07787403),
        paint116fill);

    Paint paint117fill = Paint()..style = PaintingStyle.fill;
    paint117fill.color = Color(0xff1a6687).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.3850732, size.height * 0.7956145,
            size.width * 0.02224846, size.height * 0.06758708),
        paint117fill);

    Paint paint118fill = Paint()..style = PaintingStyle.fill;
    paint118fill.color = Color(0xff3397c4).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.3882853, size.height * 0.8012994,
            size.width * 0.01908361, size.height * 0.06181195),
        paint118fill);

    Paint paint119fill = Paint()..style = PaintingStyle.fill;
    paint119fill.color = Color(0xffc5c4c6).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.3948984, size.height * 0.7912832,
            size.width * 0.001842230, size.height * 0.07462552),
        paint119fill);

    Paint paint120fill = Paint()..style = PaintingStyle.fill;
    paint120fill.color = Color(0xffc5c4c6).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.4224846, size.height * 0.7892980,
            size.width * 0.02801134, size.height * 0.07796427),
        paint120fill);

    Paint paint121fill = Paint()..style = PaintingStyle.fill;
    paint121fill.color = Color(0xff1a6687).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.4253661, size.height * 0.7945317,
            size.width * 0.02224846, size.height * 0.06749684),
        paint121fill);

    Paint paint122fill = Paint()..style = PaintingStyle.fill;
    paint122fill.color = Color(0xff3397c4).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.4285782, size.height * 0.8002166,
            size.width * 0.01908361, size.height * 0.06181195),
        paint122fill);

    Paint paint123fill = Paint()..style = PaintingStyle.fill;
    paint123fill.color = Color(0xffc5c4c6).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.4351441, size.height * 0.7902003,
            size.width * 0.001842230, size.height * 0.07462552),
        paint123fill);

    Paint paint124fill = Paint()..style = PaintingStyle.fill;
    paint124fill.color = Color(0xffc5c4c6).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.4625413, size.height * 0.7892980,
            size.width * 0.02801134, size.height * 0.07796427),
        paint124fill);

    Paint paint125fill = Paint()..style = PaintingStyle.fill;
    paint125fill.color = Color(0xff1a6687).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.4654228, size.height * 0.7945317,
            size.width * 0.02224846, size.height * 0.06749684),
        paint125fill);

    Paint paint126fill = Paint()..style = PaintingStyle.fill;
    paint126fill.color = Color(0xff3397c4).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.4685876, size.height * 0.8002166,
            size.width * 0.01908361, size.height * 0.06181195),
        paint126fill);

    Paint paint127fill = Paint()..style = PaintingStyle.fill;
    paint127fill.color = Color(0xffc5c4c6).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.4752008, size.height * 0.7902003,
            size.width * 0.001842230, size.height * 0.07462552),
        paint127fill);

    Paint paint128fill = Paint()..style = PaintingStyle.fill;
    paint128fill.color = Color(0xffc5c4c6).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.5705716, size.height * 0.7921855,
            size.width * 0.02801134, size.height * 0.07787403),
        paint128fill);

    Paint paint129fill = Paint()..style = PaintingStyle.fill;
    paint129fill.color = Color(0xff1a6687).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.5734530, size.height * 0.7973290,
            size.width * 0.02224846, size.height * 0.06758708),
        paint129fill);

    Paint paint130fill = Paint()..style = PaintingStyle.fill;
    paint130fill.color = Color(0xff3397c4).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.5766179, size.height * 0.8031041,
            size.width * 0.01908361, size.height * 0.06181195),
        paint130fill);

    Paint paint131fill = Paint()..style = PaintingStyle.fill;
    paint131fill.color = Color(0xffc5c4c6).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.5832310, size.height * 0.7930879,
            size.width * 0.001842230, size.height * 0.07471576),
        paint131fill);

    Paint paint132fill = Paint()..style = PaintingStyle.fill;
    paint132fill.color = Color(0xffc5c4c6).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.6106282, size.height * 0.7921855,
            size.width * 0.02801134, size.height * 0.07787403),
        paint132fill);

    Paint paint133fill = Paint()..style = PaintingStyle.fill;
    paint133fill.color = Color(0xff1a6687).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.6135097, size.height * 0.7973290,
            size.width * 0.02224846, size.height * 0.06758708),
        paint133fill);

    Paint paint134fill = Paint()..style = PaintingStyle.fill;
    paint134fill.color = Color(0xff3397c4).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.6166745, size.height * 0.8031041,
            size.width * 0.01908361, size.height * 0.06181195),
        paint134fill);

    Paint paint135fill = Paint()..style = PaintingStyle.fill;
    paint135fill.color = Color(0xffc5c4c6).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.6232877, size.height * 0.7930879,
            size.width * 0.001842230, size.height * 0.07471576),
        paint135fill);

    Paint paint136fill = Paint()..style = PaintingStyle.fill;
    paint136fill.color = Color(0xffc5c4c6).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.6508739, size.height * 0.7911027,
            size.width * 0.02801134, size.height * 0.07796427),
        paint136fill);

    Paint paint137fill = Paint()..style = PaintingStyle.fill;
    paint137fill.color = Color(0xff1a6687).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.6537553, size.height * 0.7963364,
            size.width * 0.02224846, size.height * 0.06749684),
        paint137fill);

    Paint paint138fill = Paint()..style = PaintingStyle.fill;
    paint138fill.color = Color(0xff3397c4).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.6569674, size.height * 0.8020213,
            size.width * 0.01908361, size.height * 0.06181195),
        paint138fill);

    Paint paint139fill = Paint()..style = PaintingStyle.fill;
    paint139fill.color = Color(0xffc5c4c6).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.6635805, size.height * 0.7920051,
            size.width * 0.001842230, size.height * 0.07471576),
        paint139fill);

    Paint paint140fill = Paint()..style = PaintingStyle.fill;
    paint140fill.color = Color(0xffc5c4c6).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.6909778, size.height * 0.7911027,
            size.width * 0.02801134, size.height * 0.07796427),
        paint140fill);

    Paint paint141fill = Paint()..style = PaintingStyle.fill;
    paint141fill.color = Color(0xff1a6687).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.6938120, size.height * 0.7963364,
            size.width * 0.02224846, size.height * 0.06749684),
        paint141fill);

    Paint paint142fill = Paint()..style = PaintingStyle.fill;
    paint142fill.color = Color(0xff3397c4).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.6970241, size.height * 0.8020213,
            size.width * 0.01908361, size.height * 0.06181195),
        paint142fill);

    Paint paint143fill = Paint()..style = PaintingStyle.fill;
    paint143fill.color = Color(0xffc5c4c6).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.7036372, size.height * 0.7920051,
            size.width * 0.001842230, size.height * 0.07471576),
        paint143fill);

    Paint paint144fill = Paint()..style = PaintingStyle.fill;
    paint144fill.color = Color(0xffc5c4c6).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.5225791, size.height * 0.7725140,
            size.width * 0.02097308, size.height * 0.05775131),
        paint144fill);

    Paint paint145fill = Paint()..style = PaintingStyle.fill;
    paint145fill.color = Color(0xff353535).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.5247520, size.height * 0.7763942,
            size.width * 0.01667454, size.height * 0.04999098),
        paint145fill);

    Paint paint146fill = Paint()..style = PaintingStyle.fill;
    paint146fill.color = Color(0xff4c4b4c).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.5271138, size.height * 0.7806353,
            size.width * 0.01426547, size.height * 0.04574986),
        paint146fill);

    Paint paint147fill = Paint()..style = PaintingStyle.fill;
    paint147fill.color = Color(0xffc5c4c6).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.5320737, size.height * 0.7732359,
            size.width * 0.001369863, size.height * 0.05531493),
        paint147fill);

    Paint paint148fill = Paint()..style = PaintingStyle.fill;
    paint148fill.color = Color(0xffc5c4c6).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.5225791, size.height * 0.8501173,
            size.width * 0.02097308, size.height * 0.05775131),
        paint148fill);

    Paint paint149fill = Paint()..style = PaintingStyle.fill;
    paint149fill.color = Color(0xff353535).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.5247520, size.height * 0.8539975,
            size.width * 0.01667454, size.height * 0.05008121),
        paint149fill);

    Paint paint150fill = Paint()..style = PaintingStyle.fill;
    paint150fill.color = Color(0xff4c4b4c).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.5271138, size.height * 0.8582386,
            size.width * 0.01426547, size.height * 0.04584010),
        paint150fill);

    Paint paint151fill = Paint()..style = PaintingStyle.fill;
    paint151fill.color = Color(0xffc5c4c6).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.5320737, size.height * 0.8508392,
            size.width * 0.001369863, size.height * 0.05531493),
        paint151fill);

    Paint paint152fill = Paint()..style = PaintingStyle.fill;
    paint152fill.color = Color(0xff000000).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.3284837, size.height * 0.9517235,
            size.width * 0.3976382, size.height * 0.02400289),
        paint152fill);

    Path path153 = Path();
    path153.moveTo(size.width * 0.8201701, size.height * 0.7518498);
    path153.lineTo(size.width * 0.8185640, size.height * 0.7518498);
    path153.lineTo(size.width * 0.8181861, size.height * 0.7403898);
    path153.cubicTo(
        size.width * 0.8181861,
        size.height * 0.7364194,
        size.width * 0.8179027,
        size.height * 0.7321783,
        size.width * 0.8178555,
        size.height * 0.7300126);
    path153.lineTo(size.width * 0.8153047, size.height * 0.7489623);
    path153.lineTo(size.width * 0.8137459, size.height * 0.7489623);
    path153.lineTo(size.width * 0.8110534, size.height * 0.7300126);
    path153.cubicTo(
        size.width * 0.8110534,
        size.height * 0.7329904,
        size.width * 0.8110534,
        size.height * 0.7369608,
        size.width * 0.8110534,
        size.height * 0.7406605);
    path153.lineTo(size.width * 0.8106755, size.height * 0.7518498);
    path153.lineTo(size.width * 0.8091167, size.height * 0.7518498);
    path153.lineTo(size.width * 0.8101086, size.height * 0.7264032);
    path153.lineTo(size.width * 0.8122815, size.height * 0.7264032);
    path153.lineTo(size.width * 0.8147851, size.height * 0.7444505);
    path153.lineTo(size.width * 0.8171941, size.height * 0.7264032);
    path153.lineTo(size.width * 0.8194143, size.height * 0.7264032);
    path153.close();

    Paint paint153fill = Paint()..style = PaintingStyle.fill;
    paint153fill.color = Color(0xff66cafe).withOpacity(1.0);
    canvas.drawPath(path153, paint153fill);

    Path path154 = Path();
    path154.moveTo(size.width * 0.8250827, size.height * 0.7518498);
    path154.lineTo(size.width * 0.8234766, size.height * 0.7518498);
    path154.lineTo(size.width * 0.8234766, size.height * 0.7264032);
    path154.lineTo(size.width * 0.8250827, size.height * 0.7264032);
    path154.close();

    Paint paint154fill = Paint()..style = PaintingStyle.fill;
    paint154fill.color = Color(0xff66cafe).withOpacity(1.0);
    canvas.drawPath(path154, paint154fill);

    Path path155 = Path();
    path155.moveTo(size.width * 0.8303732, size.height * 0.7489623);
    path155.lineTo(size.width * 0.8350968, size.height * 0.7489623);
    path155.lineTo(size.width * 0.8350968, size.height * 0.7520303);
    path155.lineTo(size.width * 0.8287671, size.height * 0.7520303);
    path155.lineTo(size.width * 0.8287671, size.height * 0.7264032);
    path155.lineTo(size.width * 0.8304204, size.height * 0.7264032);
    path155.close();

    Paint paint155fill = Paint()..style = PaintingStyle.fill;
    paint155fill.color = Color(0xff66cafe).withOpacity(1.0);
    canvas.drawPath(path155, paint155fill);

    Path path156 = Path();
    path156.moveTo(size.width * 0.8391592, size.height * 0.7518498);
    path156.lineTo(size.width * 0.8375059, size.height * 0.7518498);
    path156.lineTo(size.width * 0.8375059, size.height * 0.7264032);
    path156.lineTo(size.width * 0.8391592, size.height * 0.7264032);
    path156.close();
    path156.moveTo(size.width * 0.8410959, size.height * 0.7380437);
    path156.lineTo(size.width * 0.8458196, size.height * 0.7518498);
    path156.lineTo(size.width * 0.8437884, size.height * 0.7518498);
    path156.lineTo(size.width * 0.8390647, size.height * 0.7383144);
    path156.lineTo(size.width * 0.8437884, size.height * 0.7264032);
    path156.lineTo(size.width * 0.8456778, size.height * 0.7264032);
    path156.close();

    Paint paint156fill = Paint()..style = PaintingStyle.fill;
    paint156fill.color = Color(0xff66cafe).withOpacity(1.0);
    canvas.drawPath(path156, paint156fill);

    Path path157 = Path();
    path157.moveTo(size.width * 0.8585735, size.height * 0.7292907);
    path157.lineTo(size.width * 0.8540860, size.height * 0.7292907);
    path157.lineTo(size.width * 0.8540860, size.height * 0.7383144);
    path157.lineTo(size.width * 0.8579594, size.height * 0.7383144);
    path157.lineTo(size.width * 0.8579594, size.height * 0.7410215);
    path157.lineTo(size.width * 0.8540860, size.height * 0.7410215);
    path157.lineTo(size.width * 0.8540860, size.height * 0.7522108);
    path157.lineTo(size.width * 0.8524327, size.height * 0.7522108);
    path157.lineTo(size.width * 0.8524327, size.height * 0.7264032);
    path157.lineTo(size.width * 0.8587624, size.height * 0.7264032);
    path157.close();

    Paint paint157fill = Paint()..style = PaintingStyle.fill;
    paint157fill.color = Color(0xff66cafe).withOpacity(1.0);
    canvas.drawPath(path157, paint157fill);

    Path path158 = Path();
    path158.moveTo(size.width * 0.8656590, size.height * 0.7455333);
    path158.lineTo(size.width * 0.8611715, size.height * 0.7455333);
    path158.lineTo(size.width * 0.8602740, size.height * 0.7518498);
    path158.lineTo(size.width * 0.8586207, size.height * 0.7518498);
    path158.lineTo(size.width * 0.8624469, size.height * 0.7264032);
    path158.lineTo(size.width * 0.8644308, size.height * 0.7264032);
    path158.lineTo(size.width * 0.8682097, size.height * 0.7518498);
    path158.lineTo(size.width * 0.8665092, size.height * 0.7518498);
    path158.close();
    path158.moveTo(size.width * 0.8652811, size.height * 0.7426457);
    path158.lineTo(size.width * 0.8634388, size.height * 0.7293810);
    path158.lineTo(size.width * 0.8615494, size.height * 0.7426457);
    path158.close();

    Paint paint158fill = Paint()..style = PaintingStyle.fill;
    paint158fill.color = Color(0xff66cafe).withOpacity(1.0);
    canvas.drawPath(path158, paint158fill);

    Path path159 = Path();
    path159.moveTo(size.width * 0.8772792, size.height * 0.7285689);
    path159.lineTo(size.width * 0.8763817, size.height * 0.7307345);
    path159.arcToPoint(Offset(size.width * 0.8740671, size.height * 0.7288396),
        radius: Radius.elliptical(
            size.width * 0.003401039, size.height * 0.006497022),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path159.cubicTo(
        size.width * 0.8722721,
        size.height * 0.7288396,
        size.width * 0.8707605,
        size.height * 0.7314564,
        size.width * 0.8707605,
        size.height * 0.7391265);
    path159.cubicTo(
        size.width * 0.8707605,
        size.height * 0.7467966,
        size.width * 0.8722248,
        size.height * 0.7493232,
        size.width * 0.8740671,
        size.height * 0.7493232);
    path159.arcToPoint(Offset(size.width * 0.8765706, size.height * 0.7472478),
        radius: Radius.elliptical(
            size.width * 0.003637222, size.height * 0.006948204),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path159.lineTo(size.width * 0.8774209, size.height * 0.7495037);
    path159.arcToPoint(Offset(size.width * 0.8740198, size.height * 0.7523010),
        radius: Radius.elliptical(
            size.width * 0.004440246, size.height * 0.008482223),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path159.cubicTo(
        size.width * 0.8710912,
        size.height * 0.7523010,
        size.width * 0.8690128,
        size.height * 0.7476990,
        size.width * 0.8690128,
        size.height * 0.7391265);
    path159.cubicTo(
        size.width * 0.8690128,
        size.height * 0.7305541,
        size.width * 0.8712801,
        size.height * 0.7260422,
        size.width * 0.8739726,
        size.height * 0.7260422);
    path159.arcToPoint(Offset(size.width * 0.8772792, size.height * 0.7285689),
        radius: Radius.elliptical(
            size.width * 0.004393009, size.height * 0.008391987),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path159.close();

    Paint paint159fill = Paint()..style = PaintingStyle.fill;
    paint159fill.color = Color(0xff66cafe).withOpacity(1.0);
    canvas.drawPath(path159, paint159fill);

    Path path160 = Path();
    path160.moveTo(size.width * 0.8864903, size.height * 0.7294712);
    path160.lineTo(size.width * 0.8833255, size.height * 0.7294712);
    path160.lineTo(size.width * 0.8833255, size.height * 0.7518498);
    path160.lineTo(size.width * 0.8816722, size.height * 0.7518498);
    path160.lineTo(size.width * 0.8816722, size.height * 0.7294712);
    path160.lineTo(size.width * 0.8782711, size.height * 0.7294712);
    path160.lineTo(size.width * 0.8782711, size.height * 0.7264032);
    path160.lineTo(size.width * 0.8867737, size.height * 0.7264032);
    path160.close();

    Paint paint160fill = Paint()..style = PaintingStyle.fill;
    paint160fill.color = Color(0xff66cafe).withOpacity(1.0);
    canvas.drawPath(path160, paint160fill);

    Path path161 = Path();
    path161.moveTo(size.width * 0.8974965, size.height * 0.7392167);
    path161.cubicTo(
        size.width * 0.8974965,
        size.height * 0.7476087,
        size.width * 0.8954653,
        size.height * 0.7523010,
        size.width * 0.8924421,
        size.height * 0.7523010);
    path161.cubicTo(
        size.width * 0.8894190,
        size.height * 0.7523010,
        size.width * 0.8874350,
        size.height * 0.7476990,
        size.width * 0.8874350,
        size.height * 0.7392167);
    path161.cubicTo(
        size.width * 0.8874350,
        size.height * 0.7307345,
        size.width * 0.8894662,
        size.height * 0.7260422,
        size.width * 0.8924421,
        size.height * 0.7260422);
    path161.cubicTo(
        size.width * 0.8954180,
        size.height * 0.7260422,
        size.width * 0.8974965,
        size.height * 0.7309150,
        size.width * 0.8974965,
        size.height * 0.7392167);
    path161.close();
    path161.moveTo(size.width * 0.8891828, size.height * 0.7392167);
    path161.cubicTo(
        size.width * 0.8891828,
        size.height * 0.7465259,
        size.width * 0.8905054,
        size.height * 0.7494135,
        size.width * 0.8924421,
        size.height * 0.7494135);
    path161.cubicTo(
        size.width * 0.8943788,
        size.height * 0.7494135,
        size.width * 0.8957487,
        size.height * 0.7465259,
        size.width * 0.8957487,
        size.height * 0.7392167);
    path161.cubicTo(
        size.width * 0.8957487,
        size.height * 0.7319076,
        size.width * 0.8944733,
        size.height * 0.7288396,
        size.width * 0.8924421,
        size.height * 0.7288396);
    path161.cubicTo(
        size.width * 0.8904110,
        size.height * 0.7288396,
        size.width * 0.8892300,
        size.height * 0.7319076,
        size.width * 0.8892300,
        size.height * 0.7392167);
    path161.close();

    Paint paint161fill = Paint()..style = PaintingStyle.fill;
    paint161fill.color = Color(0xff66cafe).withOpacity(1.0);
    canvas.drawPath(path161, paint161fill);

    Path path162 = Path();
    path162.moveTo(size.width * 0.9038734, size.height * 0.7411117);
    path162.lineTo(size.width * 0.9022201, size.height * 0.7411117);
    path162.lineTo(size.width * 0.9022201, size.height * 0.7518498);
    path162.lineTo(size.width * 0.9005668, size.height * 0.7518498);
    path162.lineTo(size.width * 0.9005668, size.height * 0.7264032);
    path162.lineTo(size.width * 0.9036845, size.height * 0.7264032);
    path162.cubicTo(
        size.width * 0.9066604,
        size.height * 0.7264032,
        size.width * 0.9084081,
        size.height * 0.7288396,
        size.width * 0.9084081,
        size.height * 0.7336221);
    path162.arcToPoint(Offset(size.width * 0.9058573, size.height * 0.7404801),
        radius: Radius.elliptical(
            size.width * 0.003401039, size.height * 0.006497022),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path162.lineTo(size.width * 0.9090694, size.height * 0.7518498);
    path162.lineTo(size.width * 0.9069438, size.height * 0.7518498);
    path162.close();
    path162.moveTo(size.width * 0.9038734, size.height * 0.7384046);
    path162.cubicTo(
        size.width * 0.9055267,
        size.height * 0.7384046,
        size.width * 0.9064714,
        size.height * 0.7370511,
        size.width * 0.9064714,
        size.height * 0.7336221);
    path162.cubicTo(
        size.width * 0.9064714,
        size.height * 0.7301931,
        size.width * 0.9056212,
        size.height * 0.7292005,
        size.width * 0.9036845,
        size.height * 0.7292005);
    path162.lineTo(size.width * 0.9022201, size.height * 0.7292005);
    path162.lineTo(size.width * 0.9022201, size.height * 0.7382241);
    path162.close();

    Paint paint162fill = Paint()..style = PaintingStyle.fill;
    paint162fill.color = Color(0xff66cafe).withOpacity(1.0);
    canvas.drawPath(path162, paint162fill);

    Path path163 = Path();
    path163.moveTo(size.width * 0.9143599, size.height * 0.7421043);
    path163.lineTo(size.width * 0.9143599, size.height * 0.7518498);
    path163.lineTo(size.width * 0.9127067, size.height * 0.7518498);
    path163.lineTo(size.width * 0.9127067, size.height * 0.7421043);
    path163.lineTo(size.width * 0.9088333, size.height * 0.7264032);
    path163.lineTo(size.width * 0.9106755, size.height * 0.7264032);
    path163.lineTo(size.width * 0.9135569, size.height * 0.7390363);
    path163.lineTo(size.width * 0.9164856, size.height * 0.7264032);
    path163.lineTo(size.width * 0.9181861, size.height * 0.7264032);
    path163.close();

    Paint paint163fill = Paint()..style = PaintingStyle.fill;
    paint163fill.color = Color(0xff66cafe).withOpacity(1.0);
    canvas.drawPath(path163, paint163fill);

    Path path164 = Path();
    path164.moveTo(size.width * 0.9588096, size.height * 0.7648439);
    path164.lineTo(size.width * 0.8864903, size.height * 0.9709439);
    path164.lineTo(size.width * 0.9590931, size.height * 0.9729291);
    path164.lineTo(size.width * 0.9588096, size.height * 0.7648439);
    path164.close();

    Paint paint164fill = Paint()..style = PaintingStyle.fill;
    paint164fill.color = Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path164, paint164fill);

    Path path165 = Path();
    path165.moveTo(size.width * 0.5202173, size.height * 0.6625158);
    path165.lineTo(size.width * 0.5109117, size.height * 0.6623353);
    path165.lineTo(size.width * 0.5119036, size.height * 0.5173254);
    path165.lineTo(size.width * 0.3972603, size.height * 0.5157914);
    path165.lineTo(size.width * 0.3972603, size.height * 0.2094387);
    path165.lineTo(size.width * 0.5138403, size.height * 0.2090778);
    path165.lineTo(size.width * 0.5140765, size.height * 0.2533839);
    path165.lineTo(size.width * 0.5047709, size.height * 0.2535643);
    path165.lineTo(size.width * 0.5046292, size.height * 0.2268544);
    path165.lineTo(size.width * 0.4065659, size.height * 0.2272153);
    path165.lineTo(size.width * 0.4065659, size.height * 0.4981953);
    path165.lineTo(size.width * 0.5213037, size.height * 0.4996391);
    path165.lineTo(size.width * 0.5202173, size.height * 0.6625158);
    path165.close();

    Paint paint165fill = Paint()..style = PaintingStyle.fill;
    paint165fill.color = Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path165, paint165fill);

    Path path166 = Path();
    path166.moveTo(size.width * 0.6752008, size.height * 0.6625158);
    path166.lineTo(size.width * 0.6658951, size.height * 0.6623353);
    path166.lineTo(size.width * 0.6668871, size.height * 0.5173254);
    path166.lineTo(size.width * 0.5522437, size.height * 0.5157914);
    path166.lineTo(size.width * 0.5522437, size.height * 0.2094387);
    path166.lineTo(size.width * 0.6688238, size.height * 0.2090778);
    path166.lineTo(size.width * 0.6690600, size.height * 0.2533839);
    path166.lineTo(size.width * 0.6597544, size.height * 0.2535643);
    path166.lineTo(size.width * 0.6596127, size.height * 0.2268544);
    path166.lineTo(size.width * 0.5615494, size.height * 0.2272153);
    path166.lineTo(size.width * 0.5615494, size.height * 0.4981953);
    path166.lineTo(size.width * 0.6762872, size.height * 0.4996391);
    path166.lineTo(size.width * 0.6752008, size.height * 0.6625158);
    path166.close();

    Paint paint166fill = Paint()..style = PaintingStyle.fill;
    paint166fill.color = Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path166, paint166fill);

    Path path167 = Path();
    path167.moveTo(size.width * 0.5325933, size.height * 0.6625158);
    path167.lineTo(size.width * 0.5232877, size.height * 0.6623353);
    path167.lineTo(size.width * 0.5242796, size.height * 0.5173254);
    path167.lineTo(size.width * 0.4096363, size.height * 0.5157914);
    path167.lineTo(size.width * 0.4096363, size.height * 0.2094387);
    path167.lineTo(size.width * 0.5262163, size.height * 0.2090778);
    path167.lineTo(size.width * 0.5264525, size.height * 0.2533839);
    path167.lineTo(size.width * 0.5171941, size.height * 0.2535643);
    path167.lineTo(size.width * 0.5170524, size.height * 0.2268544);
    path167.lineTo(size.width * 0.4189419, size.height * 0.2272153);
    path167.lineTo(size.width * 0.4189419, size.height * 0.4981953);
    path167.lineTo(size.width * 0.5336797, size.height * 0.4996391);
    path167.lineTo(size.width * 0.5325933, size.height * 0.6625158);
    path167.close();

    Paint paint167fill = Paint()..style = PaintingStyle.fill;
    paint167fill.color = Color(0xffdbdddd).withOpacity(1.0);
    canvas.drawPath(path167, paint167fill);

    Path path168 = Path();
    path168.moveTo(size.width * 0.6813888, size.height * 0.6625158);
    path168.lineTo(size.width * 0.6720831, size.height * 0.6623353);
    path168.lineTo(size.width * 0.6730751, size.height * 0.5173254);
    path168.lineTo(size.width * 0.5584317, size.height * 0.5157914);
    path168.lineTo(size.width * 0.5584317, size.height * 0.2094387);
    path168.lineTo(size.width * 0.6750118, size.height * 0.2090778);
    path168.lineTo(size.width * 0.6752480, size.height * 0.2533839);
    path168.lineTo(size.width * 0.6659424, size.height * 0.2535643);
    path168.lineTo(size.width * 0.6658007, size.height * 0.2268544);
    path168.lineTo(size.width * 0.5677374, size.height * 0.2272153);
    path168.lineTo(size.width * 0.5677374, size.height * 0.4981953);
    path168.lineTo(size.width * 0.6824752, size.height * 0.4996391);
    path168.lineTo(size.width * 0.6813888, size.height * 0.6625158);
    path168.close();

    Paint paint168fill = Paint()..style = PaintingStyle.fill;
    paint168fill.color = Color(0xffdbdddd).withOpacity(1.0);
    canvas.drawPath(path168, paint168fill);

    Paint paint169fill = Paint()..style = PaintingStyle.fill;
    paint169fill.color = Color(0xff969696).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(0, size.height * 0.9723877, size.width * 0.9908361,
            size.height * 0.02752211),
        paint169fill);

    Paint paint170fill = Paint()..style = PaintingStyle.fill;
    paint170fill.color = Color(0xff7a7a7c).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.7025508, size.height * 0.9717560,
            size.width * 0.2882853, size.height * 0.02770258),
        paint170fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
