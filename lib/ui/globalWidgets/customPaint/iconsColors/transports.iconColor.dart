import 'package:flutter/material.dart';

Widget transportsIconColor({@required double xwidth}) {
  return CustomPaint(
    size: Size(xwidth, (xwidth * 0.3722772277227723).toDouble()),
    painter: TransportsIconColor(),
  );
}

class TransportsIconColor extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.2529703, size.height * 0.02526596);
    path0.lineTo(size.width * 0.2529703, size.height * 0.003989362);
    path0.lineTo(size.width * 0.2608911, size.height * 0.003989362);
    path0.lineTo(size.width * 0.2608911, size.height * 0.02526596);
    path0.lineTo(size.width * 0.2529703, size.height * 0.02526596);
    path0.close();
    path0.moveTo(size.width * 0.2608911, size.height * 0.7194149);
    path0.lineTo(size.width * 0.2529703, size.height * 0.7194149);
    path0.lineTo(size.width * 0.2529703, size.height * 0.6981383);
    path0.lineTo(size.width * 0.2608911, size.height * 0.6981383);
    path0.lineTo(size.width * 0.2608911, size.height * 0.7194149);
    path0.close();
    path0.moveTo(size.width * 0.9410891, size.height * 0.7194149);
    path0.lineTo(size.width * 0.9410891, size.height * 0.6981383);
    path0.lineTo(size.width * 0.9490099, size.height * 0.6981383);
    path0.lineTo(size.width * 0.9490099, size.height * 0.7194149);
    path0.lineTo(size.width * 0.9410891, size.height * 0.7194149);
    path0.close();
    path0.moveTo(size.width * 0.9410891, size.height * 0.003989362);
    path0.lineTo(size.width * 0.9490099, size.height * 0.003989362);
    path0.lineTo(size.width * 0.9490099, size.height * 0.02526596);
    path0.lineTo(size.width * 0.9410891, size.height * 0.02526596);
    path0.lineTo(size.width * 0.9410891, size.height * 0.003989362);
    path0.close();

    Paint paint0fill = Paint()..style = PaintingStyle.fill;
    paint0fill.color = Color(0xff92C0DC).withOpacity(1.0);
    canvas.drawPath(path0, paint0fill);

    Path path1 = Path();
    path1.moveTo(size.width * 0.2608911, size.height * 0.003989362);
    path1.lineTo(size.width * 0.9410891, size.height * 0.003989362);
    path1.lineTo(size.width * 0.9410891, size.height * 0.02526596);
    path1.lineTo(size.width * 0.9490099, size.height * 0.02526596);
    path1.lineTo(size.width * 0.9490099, size.height * 0.6981383);
    path1.lineTo(size.width * 0.9410891, size.height * 0.6981383);
    path1.lineTo(size.width * 0.9410891, size.height * 0.7194149);
    path1.lineTo(size.width * 0.2608911, size.height * 0.7194149);
    path1.lineTo(size.width * 0.2608911, size.height * 0.6981383);
    path1.lineTo(size.width * 0.2529703, size.height * 0.6981383);
    path1.lineTo(size.width * 0.2529703, size.height * 0.02526596);
    path1.lineTo(size.width * 0.2608911, size.height * 0.02526596);
    path1.lineTo(size.width * 0.2608911, size.height * 0.003989362);
    path1.close();
    path1.moveTo(size.width * 0.2608911, size.height * 0.6981383);
    path1.lineTo(size.width * 0.9410891, size.height * 0.6981383);
    path1.lineTo(size.width * 0.9410891, size.height * 0.02526596);
    path1.lineTo(size.width * 0.2608911, size.height * 0.02526596);
    path1.lineTo(size.width * 0.2608911, size.height * 0.6981383);
    path1.close();

    Paint paint1fill = Paint()..style = PaintingStyle.fill;
    paint1fill.color = Color(0xffBAD8E9).withOpacity(1.0);
    canvas.drawPath(path1, paint1fill);

    Paint paint2fill = Paint()..style = PaintingStyle.fill;
    paint2fill.color = Color(0xffF8FBFC).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.2608911, size.height * 0.02526596,
            size.width * 0.6801980, size.height * 0.6728723),
        paint2fill);

    Path path3 = Path();
    path3.moveTo(size.width * 0.03366337, size.height * 0.5252660);
    path3.lineTo(size.width * 0.03366337, size.height * 0.5252660);
    path3.lineTo(size.width * 0.03514851, size.height * 0.5252660);
    path3.close();

    Paint paint3fill = Paint()..style = PaintingStyle.fill;
    paint3fill.color = Color(0xffC02323).withOpacity(1.0);
    canvas.drawPath(path3, paint3fill);

    Path path4 = Path();
    path4.moveTo(size.width * 0.1089109, size.height * 0.1715426);
    path4.cubicTo(
        size.width * 0.1168317,
        size.height * 0.06515957,
        size.width * 0.1544554,
        size.height * 0.007978723,
        size.width * 0.2212871,
        0);
    path4.lineTo(size.width * 0.2212871, size.height * 0.1728723);
    path4.cubicTo(
        size.width * 0.2301980,
        size.height * 0.1755319,
        size.width * 0.2341584,
        size.height * 0.1875000,
        size.width * 0.2336634,
        size.height * 0.2047872);
    path4.lineTo(size.width * 0.2287129, size.height * 0.2047872);
    path4.lineTo(size.width * 0.2287129, size.height * 0.5824468);
    path4.cubicTo(
        size.width * 0.1955446,
        size.height * 0.6037234,
        size.width * 0.09356436,
        size.height * 0.5492021,
        size.width * 0.09405941,
        size.height * 0.6981383);
    path4.lineTo(size.width * 0.003465347, size.height * 0.6981383);
    path4.lineTo(size.width * 0.002475248, size.height * 0.6555851);
    path4.lineTo(size.width * 0.004950495, size.height * 0.6555851);
    path4.lineTo(size.width * 0.002475248, size.height * 0.5664894);
    path4.lineTo(size.width * 0.0004950495, size.height * 0.5664894);
    path4.cubicTo(
        size.width * -0.004455446,
        size.height * 0.5106383,
        size.width * 0.03168317,
        size.height * 0.2699468,
        size.width * 0.03712871,
        size.height * 0.2140957);
    path4.cubicTo(
        size.width * 0.04158416,
        size.height * 0.1422872,
        size.width * 0.09207921,
        size.height * 0.1808511,
        size.width * 0.1089109,
        size.height * 0.1715426);
    path4.close();
    path4.moveTo(size.width * 0.1504950, size.height * 0.4295213);
    path4.cubicTo(
        size.width * 0.1757426,
        size.height * 0.4414894,
        size.width * 0.1811881,
        size.height * 0.3138298,
        size.width * 0.1900990,
        size.height * 0.2739362);
    path4.cubicTo(
        size.width * 0.06683168,
        size.height * 0.2925532,
        size.width * 0.07722772,
        size.height * 0.1888298,
        size.width * 0.04554455,
        size.height * 0.4853723);
    path4.lineTo(size.width * 0.1019802, size.height * 0.4853723);
    path4.lineTo(size.width * 0.1128713, size.height * 0.4295213);
    path4.lineTo(size.width * 0.1504950, size.height * 0.4295213);
    path4.lineTo(size.width * 0.1504950, size.height * 0.4295213);
    path4.close();
    path4.moveTo(size.width * 0.03366337, size.height * 0.5252660);
    path4.lineTo(size.width * 0.03366337, size.height * 0.5252660);
    path4.close();
    path4.moveTo(size.width * 0.01881188, size.height * 0.5252660);
    path4.lineTo(size.width * 0.01881188, size.height * 0.5252660);
    path4.close();

    Paint paint4fill = Paint()..style = PaintingStyle.fill;
    paint4fill.color = Color(0xffE63333).withOpacity(1.0);
    canvas.drawPath(path4, paint4fill);

    Path path5 = Path();
    path5.moveTo(size.width * 0.01881188, size.height * 0.5252660);
    path5.lineTo(size.width * 0.02623762, size.height * 0.5252660);
    path5.lineTo(size.width * 0.01881188, size.height * 0.5252660);
    path5.close();

    Paint paint5fill = Paint()..style = PaintingStyle.fill;
    paint5fill.color = Color(0xffF08E8E).withOpacity(1.0);
    canvas.drawPath(path5, paint5fill);

    Path path6 = Path();
    path6.moveTo(size.width * 0.2608911, size.height * 0.7194149);
    path6.lineTo(size.width * 0.9490099, size.height * 0.7194149);
    path6.lineTo(size.width * 0.9490099, size.height * 0.7313830);
    path6.cubicTo(
        size.width * 0.9470297,
        size.height * 0.7367021,
        size.width * 0.9450495,
        size.height * 0.7433511,
        size.width * 0.9445545,
        size.height * 0.7500000);
    path6.lineTo(size.width * 0.9490099, size.height * 0.7500000);
    path6.lineTo(size.width * 0.9490099, size.height * 0.8204787);
    path6.lineTo(size.width * 0.9202970, size.height * 0.8204787);
    path6.lineTo(size.width * 0.9202970, size.height * 0.8563830);
    path6.lineTo(size.width * 0.9490099, size.height * 0.8563830);
    path6.lineTo(size.width * 0.9490099, size.height * 0.9268617);
    path6.lineTo(size.width * 0.8896040, size.height * 0.9268617);
    path6.cubicTo(
        size.width * 0.8905941,
        size.height * 0.9175532,
        size.width * 0.8915842,
        size.height * 0.9082447,
        size.width * 0.8915842,
        size.height * 0.8989362);
    path6.lineTo(size.width * 0.7727723, size.height * 0.8989362);
    path6.cubicTo(
        size.width * 0.7732673,
        size.height * 0.9082447,
        size.width * 0.7742574,
        size.height * 0.9175532,
        size.width * 0.7757426,
        size.height * 0.9268617);
    path6.lineTo(size.width * 0.7623762, size.height * 0.9268617);
    path6.cubicTo(
        size.width * 0.7633663,
        size.height * 0.9175532,
        size.width * 0.7643564,
        size.height * 0.9082447,
        size.width * 0.7643564,
        size.height * 0.8989362);
    path6.lineTo(size.width * 0.6455446, size.height * 0.8989362);
    path6.cubicTo(
        size.width * 0.6460396,
        size.height * 0.9082447,
        size.width * 0.6470297,
        size.height * 0.9175532,
        size.width * 0.6485149,
        size.height * 0.9268617);
    path6.lineTo(size.width * 0.2574257, size.height * 0.9268617);
    path6.lineTo(size.width * 0.2574257, size.height * 0.8417553);
    path6.lineTo(size.width * 0.2425743, size.height * 0.6981383);
    path6.lineTo(size.width * 0.2529703, size.height * 0.6981383);
    path6.lineTo(size.width * 0.2529703, size.height * 0.7194149);
    path6.lineTo(size.width * 0.2608911, size.height * 0.7194149);
    path6.close();

    Paint paint6fill = Paint()..style = PaintingStyle.fill;
    paint6fill.color = Color(0xff454545).withOpacity(1.0);
    canvas.drawPath(path6, paint6fill);

    Path path7 = Path();
    path7.moveTo(size.width * 0.1128713, size.height * 0.9268617);
    path7.cubicTo(
        size.width * 0.1103960,
        size.height * 0.8444149,
        size.width * 0.1123762,
        size.height * 0.7446809,
        size.width * 0.1430693,
        size.height * 0.6981383);
    path7.lineTo(size.width * 0.1430693, size.height * 0.6981383);
    path7.cubicTo(
        size.width * 0.1594059,
        size.height * 0.6635638,
        size.width * 0.2064356,
        size.height * 0.6728723,
        size.width * 0.2257426,
        size.height * 0.6648936);
    path7.cubicTo(
        size.width * 0.2311881,
        size.height * 0.7353723,
        size.width * 0.2500000,
        size.height * 0.8550532,
        size.width * 0.2396040,
        size.height * 0.9268617);
    path7.lineTo(size.width * 0.1128713, size.height * 0.9268617);
    path7.close();

    Paint paint7fill = Paint()..style = PaintingStyle.fill;
    paint7fill.color = Color(0xff454545).withOpacity(1.0);
    canvas.drawPath(path7, paint7fill);

    Path path8 = Path();
    path8.moveTo(size.width * 0.2396040, size.height * 0.9268617);
    path8.cubicTo(
        size.width * 0.2495050,
        size.height * 0.8550532,
        size.width * 0.2306931,
        size.height * 0.7353723,
        size.width * 0.2257426,
        size.height * 0.6648936);
    path8.cubicTo(
        size.width * 0.2059406,
        size.height * 0.6715426,
        size.width * 0.1594059,
        size.height * 0.6635638,
        size.width * 0.1430693,
        size.height * 0.6981383);
    path8.lineTo(size.width * 0.1430693, size.height * 0.6981383);
    path8.cubicTo(
        size.width * 0.1123762,
        size.height * 0.7446809,
        size.width * 0.1103960,
        size.height * 0.8444149,
        size.width * 0.1128713,
        size.height * 0.9268617);
    path8.lineTo(size.width * 0.09405941, size.height * 0.9268617);
    path8.cubicTo(
        size.width * 0.08910891,
        size.height * 0.5026596,
        size.width * 0.1000000,
        size.height * 0.6236702,
        size.width * 0.2460396,
        size.height * 0.5797872);
    path8.lineTo(size.width * 0.2495050, size.height * 0.6609043);
    path8.lineTo(size.width * 0.2396040, size.height * 0.6622340);
    path8.lineTo(size.width * 0.2569307, size.height * 0.8404255);
    path8.lineTo(size.width * 0.2569307, size.height * 0.9255319);
    path8.lineTo(size.width * 0.2396040, size.height * 0.9255319);
    path8.close();

    Paint paint8fill = Paint()..style = PaintingStyle.fill;
    paint8fill.color = Color(0xff828282).withOpacity(1.0);
    canvas.drawPath(path8, paint8fill);

    Path path9 = Path();
    path9.moveTo(size.width * 0.1089109, size.height * 0.1715426);
    path9.cubicTo(
        size.width * 0.1168317,
        size.height * 0.06515957,
        size.width * 0.1544554,
        size.height * 0.007978723,
        size.width * 0.2212871,
        0);
    path9.lineTo(size.width * 0.2212871, size.height * 0.1728723);
    path9.cubicTo(
        size.width * 0.2301980,
        size.height * 0.1755319,
        size.width * 0.2341584,
        size.height * 0.1875000,
        size.width * 0.2336634,
        size.height * 0.2047872);
    path9.lineTo(size.width * 0.2287129, size.height * 0.2047872);
    path9.lineTo(size.width * 0.2287129, size.height * 0.5824468);
    path9.lineTo(size.width * 0.2212871, size.height * 0.5837766);
    path9.lineTo(size.width * 0.2212871, size.height * 0.2047872);
    path9.lineTo(size.width * 0.06287129, size.height * 0.2047872);
    path9.cubicTo(
        size.width * 0.05495050,
        size.height * 0.2047872,
        size.width * 0.04950495,
        size.height * 0.2180851,
        size.width * 0.04603960,
        size.height * 0.2433511);
    path9.cubicTo(
        size.width * 0.04108911,
        size.height * 0.2938830,
        size.width * 0.006435644,
        size.height * 0.5146277,
        size.width * 0.01089109,
        size.height * 0.5651596);
    path9.lineTo(size.width * 0.01089109, size.height * 0.5651596);
    path9.lineTo(size.width * 0.01435644, size.height * 0.6835106);
    path9.lineTo(size.width * 0.09554455, size.height * 0.6835106);
    path9.cubicTo(
        size.width * 0.09554455,
        size.height * 0.6875000,
        size.width * 0.09504950,
        size.height * 0.6914894,
        size.width * 0.09504950,
        size.height * 0.6968085);
    path9.lineTo(size.width * 0.003465347, size.height * 0.6968085);
    path9.lineTo(size.width * 0.002475248, size.height * 0.6542553);
    path9.lineTo(size.width * 0.004950495, size.height * 0.6542553);
    path9.lineTo(size.width * 0.002475248, size.height * 0.5651596);
    path9.lineTo(size.width * 0.0004950495, size.height * 0.5651596);
    path9.cubicTo(
        size.width * -0.004455446,
        size.height * 0.5093085,
        size.width * 0.03168317,
        size.height * 0.2686170,
        size.width * 0.03712871,
        size.height * 0.2127660);
    path9.cubicTo(
        size.width * 0.04158416,
        size.height * 0.1422872,
        size.width * 0.09207921,
        size.height * 0.1808511,
        size.width * 0.1089109,
        size.height * 0.1715426);
    path9.close();
    path9.moveTo(size.width * 0.2113861, size.height * 0.1715426);
    path9.lineTo(size.width * 0.2113861, size.height * 0.04521277);
    path9.cubicTo(
        size.width * 0.1678218,
        size.height * 0.05851064,
        size.width * 0.1420792,
        size.height * 0.1010638,
        size.width * 0.1336634,
        size.height * 0.1728723);
    path9.lineTo(size.width * 0.2113861, size.height * 0.1728723);
    path9.close();

    Paint paint9fill = Paint()..style = PaintingStyle.fill;
    paint9fill.color = Color(0xffC02323).withOpacity(1.0);
    canvas.drawPath(path9, paint9fill);

    Path path10 = Path();
    path10.moveTo(size.width * 0.1762376, size.height * 0.8404255);
    path10.cubicTo(
        size.width * 0.1910891,
        size.height * 0.8390957,
        size.width * 0.1940594,
        size.height * 0.9029255,
        size.width * 0.1782178,
        size.height * 0.9042553);
    path10.cubicTo(
        size.width * 0.1633663,
        size.height * 0.9055851,
        size.width * 0.1603960,
        size.height * 0.8417553,
        size.width * 0.1762376,
        size.height * 0.8404255);
    path10.close();

    Paint paint10fill = Paint()..style = PaintingStyle.fill;
    paint10fill.color = Color(0xff999999).withOpacity(1.0);
    canvas.drawPath(path10, paint10fill);

    Path path11 = Path();
    path11.moveTo(size.width * 0.1752475, size.height * 0.8098404);
    path11.cubicTo(
        size.width * 0.1435644,
        size.height * 0.8098404,
        size.width * 0.1495050,
        size.height * 0.9388298,
        size.width * 0.1787129,
        size.height * 0.9361702);
    path11.cubicTo(
        size.width * 0.2103960,
        size.height * 0.9361702,
        size.width * 0.2044554,
        size.height * 0.8071809,
        size.width * 0.1752475,
        size.height * 0.8098404);
    path11.close();
    path11.moveTo(size.width * 0.1737624, size.height * 0.7460106);
    path11.cubicTo(
        size.width * 0.2326733,
        size.height * 0.7406915,
        size.width * 0.2440594,
        size.height * 0.9973404,
        size.width * 0.1806931,
        size.height * 0.9986702);
    path11.cubicTo(
        size.width * 0.1217822,
        size.height * 1.005319,
        size.width * 0.1103960,
        size.height * 0.7473404,
        size.width * 0.1737624,
        size.height * 0.7460106);
    path11.close();

    Paint paint11fill = Paint()..style = PaintingStyle.fill;
    paint11fill.color = Color(0xff666666).withOpacity(1.0);
    canvas.drawPath(path11, paint11fill);

    Path path12 = Path();
    path12.moveTo(size.width * 0.1752475, size.height * 0.8098404);
    path12.cubicTo(
        size.width * 0.2044554,
        size.height * 0.8071809,
        size.width * 0.2103960,
        size.height * 0.9361702,
        size.width * 0.1787129,
        size.height * 0.9361702);
    path12.cubicTo(
        size.width * 0.1495050,
        size.height * 0.9388298,
        size.width * 0.1435644,
        size.height * 0.8098404,
        size.width * 0.1752475,
        size.height * 0.8098404);
    path12.close();
    path12.moveTo(size.width * 0.1762376, size.height * 0.8404255);
    path12.cubicTo(
        size.width * 0.1603960,
        size.height * 0.8417553,
        size.width * 0.1633663,
        size.height * 0.9055851,
        size.width * 0.1782178,
        size.height * 0.9029255);
    path12.cubicTo(
        size.width * 0.1935644,
        size.height * 0.9042553,
        size.width * 0.1905941,
        size.height * 0.8390957,
        size.width * 0.1762376,
        size.height * 0.8404255);
    path12.lineTo(size.width * 0.1762376, size.height * 0.8404255);
    path12.close();

    Paint paint12fill = Paint()..style = PaintingStyle.fill;
    paint12fill.color = Color(0xffCCCCCC).withOpacity(1.0);
    canvas.drawPath(path12, paint12fill);

    Path path13 = Path();
    path13.moveTo(size.width * 0.7029703, size.height * 0.8404255);
    path13.cubicTo(
        size.width * 0.7168317,
        size.height * 0.8390957,
        size.width * 0.7207921,
        size.height * 0.9002660,
        size.width * 0.7059406,
        size.height * 0.9042553);
    path13.cubicTo(
        size.width * 0.6905941,
        size.height * 0.9082447,
        size.width * 0.6861386,
        size.height * 0.8404255,
        size.width * 0.7029703,
        size.height * 0.8404255);
    path13.close();

    Paint paint13fill = Paint()..style = PaintingStyle.fill;
    paint13fill.color = Color(0xff999999).withOpacity(1.0);
    canvas.drawPath(path13, paint13fill);

    Path path14 = Path();
    path14.moveTo(size.width * 0.7019802, size.height * 0.8098404);
    path14.cubicTo(
        size.width * 0.6702970,
        size.height * 0.8098404,
        size.width * 0.6762376,
        size.height * 0.9388298,
        size.width * 0.7054455,
        size.height * 0.9361702);
    path14.cubicTo(
        size.width * 0.7371287,
        size.height * 0.9361702,
        size.width * 0.7311881,
        size.height * 0.8058511,
        size.width * 0.7019802,
        size.height * 0.8098404);
    path14.close();
    path14.moveTo(size.width * 0.7000000, size.height * 0.7460106);
    path14.cubicTo(
        size.width * 0.7589109,
        size.height * 0.7406915,
        size.width * 0.7702970,
        size.height * 0.9973404,
        size.width * 0.7069307,
        size.height * 0.9986702);
    path14.cubicTo(
        size.width * 0.6485149,
        size.height * 1.005319,
        size.width * 0.6371287,
        size.height * 0.7473404,
        size.width * 0.7000000,
        size.height * 0.7460106);
    path14.lineTo(size.width * 0.7000000, size.height * 0.7460106);
    path14.close();

    Paint paint14fill = Paint()..style = PaintingStyle.fill;
    paint14fill.color = Color(0xff666666).withOpacity(1.0);
    canvas.drawPath(path14, paint14fill);

    Path path15 = Path();
    path15.moveTo(size.width * 0.7019802, size.height * 0.8098404);
    path15.cubicTo(
        size.width * 0.7311881,
        size.height * 0.8058511,
        size.width * 0.7371287,
        size.height * 0.9361702,
        size.width * 0.7054455,
        size.height * 0.9361702);
    path15.cubicTo(
        size.width * 0.6762376,
        size.height * 0.9388298,
        size.width * 0.6702970,
        size.height * 0.8098404,
        size.width * 0.7019802,
        size.height * 0.8098404);
    path15.close();
    path15.moveTo(size.width * 0.7029703, size.height * 0.8404255);
    path15.cubicTo(
        size.width * 0.6871287,
        size.height * 0.8404255,
        size.width * 0.6900990,
        size.height * 0.9042553,
        size.width * 0.7049505,
        size.height * 0.9042553);
    path15.cubicTo(
        size.width * 0.7202970,
        size.height * 0.9029255,
        size.width * 0.7173267,
        size.height * 0.8390957,
        size.width * 0.7029703,
        size.height * 0.8404255);
    path15.close();

    Paint paint15fill = Paint()..style = PaintingStyle.fill;
    paint15fill.color = Color(0xffCCCCCC).withOpacity(1.0);
    canvas.drawPath(path15, paint15fill);

    Path path16 = Path();
    path16.moveTo(size.width * 0.8306931, size.height * 0.8404255);
    path16.cubicTo(
        size.width * 0.8455446,
        size.height * 0.8390957,
        size.width * 0.8485149,
        size.height * 0.9029255,
        size.width * 0.8326733,
        size.height * 0.9042553);
    path16.cubicTo(
        size.width * 0.8173267,
        size.height * 0.9055851,
        size.width * 0.8143564,
        size.height * 0.8404255,
        size.width * 0.8306931,
        size.height * 0.8404255);
    path16.close();

    Paint paint16fill = Paint()..style = PaintingStyle.fill;
    paint16fill.color = Color(0xff999999).withOpacity(1.0);
    canvas.drawPath(path16, paint16fill);

    Path path17 = Path();
    path17.moveTo(size.width * 0.8297030, size.height * 0.8098404);
    path17.cubicTo(
        size.width * 0.7980198,
        size.height * 0.8098404,
        size.width * 0.8039604,
        size.height * 0.9401596,
        size.width * 0.8331683,
        size.height * 0.9361702);
    path17.cubicTo(
        size.width * 0.8648515,
        size.height * 0.9361702,
        size.width * 0.8589109,
        size.height * 0.8058511,
        size.width * 0.8297030,
        size.height * 0.8098404);
    path17.lineTo(size.width * 0.8297030, size.height * 0.8098404);
    path17.close();
    path17.moveTo(size.width * 0.8277228, size.height * 0.7460106);
    path17.cubicTo(
        size.width * 0.8866337,
        size.height * 0.7406915,
        size.width * 0.8980198,
        size.height * 0.9973404,
        size.width * 0.8346535,
        size.height * 0.9986702);
    path17.cubicTo(
        size.width * 0.7762376,
        size.height * 1.005319,
        size.width * 0.7643564,
        size.height * 0.7473404,
        size.width * 0.8277228,
        size.height * 0.7460106);
    path17.lineTo(size.width * 0.8277228, size.height * 0.7460106);
    path17.close();

    Paint paint17fill = Paint()..style = PaintingStyle.fill;
    paint17fill.color = Color(0xff666666).withOpacity(1.0);
    canvas.drawPath(path17, paint17fill);

    Path path18 = Path();
    path18.moveTo(size.width * 0.8297030, size.height * 0.8098404);
    path18.cubicTo(
        size.width * 0.8589109,
        size.height * 0.8071809,
        size.width * 0.8648515,
        size.height * 0.9361702,
        size.width * 0.8331683,
        size.height * 0.9361702);
    path18.cubicTo(
        size.width * 0.8039604,
        size.height * 0.9401596,
        size.width * 0.7980198,
        size.height * 0.8098404,
        size.width * 0.8297030,
        size.height * 0.8098404);
    path18.lineTo(size.width * 0.8297030, size.height * 0.8098404);
    path18.close();
    path18.moveTo(size.width * 0.8306931, size.height * 0.8404255);
    path18.cubicTo(
        size.width * 0.8148515,
        size.height * 0.8404255,
        size.width * 0.8178218,
        size.height * 0.9055851,
        size.width * 0.8326733,
        size.height * 0.9042553);
    path18.cubicTo(
        size.width * 0.8480198,
        size.height * 0.9042553,
        size.width * 0.8450495,
        size.height * 0.8390957,
        size.width * 0.8306931,
        size.height * 0.8404255);
    path18.close();

    Paint paint18fill = Paint()..style = PaintingStyle.fill;
    paint18fill.color = Color(0xffCCCCCC).withOpacity(1.0);
    canvas.drawPath(path18, paint18fill);

    Path path19 = Path();
    path19.moveTo(size.width * 0.02871287, size.height * 0.6728723);
    path19.lineTo(size.width * 0.02128713, size.height * 0.6728723);
    path19.cubicTo(
        size.width * 0.02079208,
        size.height * 0.6422872,
        size.width * 0.01683168,
        size.height * 0.5545213,
        size.width * 0.01881188,
        size.height * 0.5252660);
    path19.lineTo(size.width * 0.02623762, size.height * 0.5252660);
    path19.cubicTo(
        size.width * 0.02425743,
        size.height * 0.5545213,
        size.width * 0.02821782,
        size.height * 0.6436170,
        size.width * 0.02871287,
        size.height * 0.6728723);
    path19.close();

    Paint paint19fill = Paint()..style = PaintingStyle.fill;
    paint19fill.color = Color(0xffF08E8E).withOpacity(1.0);
    canvas.drawPath(path19, paint19fill);

    Path path20 = Path();
    path20.moveTo(size.width * 0.02524752, size.height * 0.6728723);
    path20.lineTo(size.width * 0.03613861, size.height * 0.6728723);
    path20.cubicTo(
        size.width * 0.03564356,
        size.height * 0.6422872,
        size.width * 0.03168317,
        size.height * 0.5545213,
        size.width * 0.03366337,
        size.height * 0.5252660);
    path20.lineTo(size.width * 0.04059406, size.height * 0.5252660);
    path20.cubicTo(
        size.width * 0.04059406,
        size.height * 0.5292553,
        size.width * 0.04009901,
        size.height * 0.5332447,
        size.width * 0.04009901,
        size.height * 0.5359043);
    path20.lineTo(size.width * 0.04504950, size.height * 0.5359043);
    path20.cubicTo(
        size.width * 0.04257426,
        size.height * 0.5638298,
        size.width * 0.04653465,
        size.height * 0.6542553,
        size.width * 0.04702970,
        size.height * 0.6835106);
    path20.lineTo(size.width * 0.02574257, size.height * 0.6835106);
    path20.lineTo(size.width * 0.02524752, size.height * 0.6728723);
    path20.close();

    Paint paint20fill = Paint()..style = PaintingStyle.fill;
    paint20fill.color = Color(0xffC02323).withOpacity(1.0);
    canvas.drawPath(path20, paint20fill);

    Path path21 = Path();
    path21.moveTo(size.width * 0.02871287, size.height * 0.6728723);
    path21.cubicTo(
        size.width * 0.02821782,
        size.height * 0.6422872,
        size.width * 0.02425743,
        size.height * 0.5545213,
        size.width * 0.02623762,
        size.height * 0.5252660);
    path21.lineTo(size.width * 0.03366337, size.height * 0.5252660);
    path21.cubicTo(
        size.width * 0.03168317,
        size.height * 0.5545213,
        size.width * 0.03564356,
        size.height * 0.6436170,
        size.width * 0.03613861,
        size.height * 0.6728723);
    path21.lineTo(size.width * 0.02871287, size.height * 0.6728723);
    path21.close();

    Paint paint21fill = Paint()..style = PaintingStyle.fill;
    paint21fill.color = Color(0xffE63333).withOpacity(1.0);
    canvas.drawPath(path21, paint21fill);

    Path path22 = Path();
    path22.moveTo(size.width * 0.1500000, size.height * 0.5279255);
    path22.cubicTo(
        size.width * 0.1500000,
        size.height * 0.5438830,
        size.width * 0.1410891,
        size.height * 0.5385638,
        size.width * 0.1376238,
        size.height * 0.5398936);
    path22.cubicTo(
        size.width * 0.1311881,
        size.height * 0.5438830,
        size.width * 0.1326733,
        size.height * 0.4880319,
        size.width * 0.1346535,
        size.height * 0.4813830);
    path22.cubicTo(
        size.width * 0.1534653,
        size.height * 0.4654255,
        size.width * 0.1500000,
        size.height * 0.4906915,
        size.width * 0.1500000,
        size.height * 0.5279255);
    path22.close();

    Paint paint22fill = Paint()..style = PaintingStyle.fill;
    paint22fill.color = Color(0xff666666).withOpacity(1.0);
    canvas.drawPath(path22, paint22fill);

    Path path23 = Path();
    path23.moveTo(size.width * 0.1420792, size.height * 0.3656915);
    path23.lineTo(size.width * 0.1500000, size.height * 0.3656915);
    path23.lineTo(size.width * 0.1500000, size.height * 0.4308511);
    path23.lineTo(size.width * 0.1420792, size.height * 0.4308511);
    path23.lineTo(size.width * 0.1420792, size.height * 0.3656915);
    path23.close();

    Paint paint23fill = Paint()..style = PaintingStyle.fill;
    paint23fill.color = Color(0xff828282).withOpacity(1.0);
    canvas.drawPath(path23, paint23fill);

    Path path24 = Path();
    path24.moveTo(size.width * 0.07722772, size.height * 0.4853723);
    path24.cubicTo(
        size.width * 0.08910891,
        size.height * 0.3550532,
        size.width * 0.09554455,
        size.height * 0.3603723,
        size.width * 0.1420792,
        size.height * 0.3643617);
    path24.lineTo(size.width * 0.1420792, size.height * 0.4295213);
    path24.lineTo(size.width * 0.1123762, size.height * 0.4295213);
    path24.lineTo(size.width * 0.1014851, size.height * 0.4853723);
    path24.lineTo(size.width * 0.07722772, size.height * 0.4853723);
    path24.close();
    path24.moveTo(size.width * 0.1504950, size.height * 0.3643617);
    path24.lineTo(size.width * 0.1767327, size.height * 0.3643617);
    path24.cubicTo(
        size.width * 0.1732673,
        size.height * 0.3976064,
        size.width * 0.1653465,
        size.height * 0.4348404,
        size.width * 0.1504950,
        size.height * 0.4295213);
    path24.lineTo(size.width * 0.1504950, size.height * 0.3643617);
    path24.close();

    Paint paint24fill = Paint()..style = PaintingStyle.fill;
    paint24fill.color = Color(0xff35758A).withOpacity(1.0);
    canvas.drawPath(path24, paint24fill);

    Path path25 = Path();
    path25.moveTo(size.width * 0.1420792, size.height * 0.3656915);
    path25.cubicTo(
        size.width * 0.09504950,
        size.height * 0.3617021,
        size.width * 0.08910891,
        size.height * 0.3577128,
        size.width * 0.07722772,
        size.height * 0.4867021);
    path25.lineTo(size.width * 0.04554455, size.height * 0.4867021);
    path25.cubicTo(
        size.width * 0.07227723,
        size.height * 0.2779255,
        size.width * 0.05247525,
        size.height * 0.2659574,
        size.width * 0.1425743,
        size.height * 0.2752660);
    path25.lineTo(size.width * 0.1425743, size.height * 0.3656915);
    path25.close();
    path25.moveTo(size.width * 0.1504950, size.height * 0.3656915);
    path25.lineTo(size.width * 0.1504950, size.height * 0.2752660);
    path25.lineTo(size.width * 0.1896040, size.height * 0.2752660);
    path25.lineTo(size.width * 0.1762376, size.height * 0.3656915);
    path25.lineTo(size.width * 0.1504950, size.height * 0.3656915);
    path25.close();

    Paint paint25fill = Paint()..style = PaintingStyle.fill;
    paint25fill.color = Color(0xffB9D6E6).withOpacity(1.0);
    canvas.drawPath(path25, paint25fill);

    Paint paint26fill = Paint()..style = PaintingStyle.fill;
    paint26fill.color = Color(0xffAFAFAF).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.1420792, size.height * 0.2739362,
            size.width * 0.007920792, size.height * 0.09042553),
        paint26fill);

    Path path27 = Path();
    path27.moveTo(size.width * 0.05643564, size.height * 0.3138298);
    path27.lineTo(size.width * 0.06237624, size.height * 0.3138298);
    path27.lineTo(size.width * 0.06237624, size.height * 0.4414894);
    path27.cubicTo(
        size.width * 0.05891089,
        size.height * 0.4414894,
        size.width * 0.05198020,
        size.height * 0.4441489,
        size.width * 0.05198020,
        size.height * 0.4295213);
    path27.cubicTo(
        size.width * 0.05346535,
        size.height * 0.4202128,
        size.width * 0.04752475,
        size.height * 0.3098404,
        size.width * 0.05643564,
        size.height * 0.3138298);
    path27.close();

    Paint paint27fill = Paint()..style = PaintingStyle.fill;
    paint27fill.color = Color(0xff666666).withOpacity(1.0);
    canvas.drawPath(path27, paint27fill);

    Path path28 = Path();
    path28.moveTo(size.width * 0.04158416, size.height * 0.2739362);
    path28.lineTo(size.width * 0.01435644, size.height * 0.4853723);
    path28.lineTo(size.width * 0.003465347, size.height * 0.4853723);
    path28.lineTo(size.width * 0.02920792, size.height * 0.2739362);
    path28.close();

    Paint paint28fill = Paint()..style = PaintingStyle.fill;
    paint28fill.color = Color(0xff35758A).withOpacity(1.0);
    canvas.drawPath(path28, paint28fill);

    Path path29 = Path();
    path29.moveTo(size.width * 0.04158416, size.height * 0.2739362);
    path29.lineTo(size.width * 0.05049505, size.height * 0.2739362);
    path29.lineTo(size.width * 0.02475248, size.height * 0.4853723);
    path29.lineTo(size.width * 0.01435644, size.height * 0.4853723);
    path29.close();

    Paint paint29fill = Paint()..style = PaintingStyle.fill;
    paint29fill.color = Color(0xffFFFFFF).withOpacity(1.0);
    canvas.drawPath(path29, paint29fill);

    Path path30 = Path();
    path30.moveTo(size.width * 0.01039604, size.height * 0.5664894);
    path30.lineTo(size.width * 0.01287129, size.height * 0.6555851);
    path30.lineTo(size.width * 0.004950495, size.height * 0.6555851);
    path30.lineTo(size.width * 0.002970297, size.height * 0.5664894);
    path30.close();

    Paint paint30fill = Paint()..style = PaintingStyle.fill;
    paint30fill.color = Color(0xff666666).withOpacity(1.0);
    canvas.drawPath(path30, paint30fill);

    Path path31 = Path();
    path31.moveTo(size.width * 0.09405941, size.height * 0.7672872);
    path31.cubicTo(
        size.width * 0.09158416,
        size.height * 0.7659574,
        size.width * 0.06534653,
        size.height * 0.7699468,
        size.width * 0.06435644,
        size.height * 0.7632979);
    path31.cubicTo(
        size.width * 0.06188119,
        size.height * 0.7593085,
        size.width * 0.06336634,
        size.height * 0.7247340,
        size.width * 0.06287129,
        size.height * 0.7180851);
    path31.lineTo(size.width * 0.01485149, size.height * 0.7180851);
    path31.lineTo(size.width * 0.01584158, size.height * 0.7566489);
    path31.cubicTo(
        size.width * 0.01980198,
        size.height * 0.7606383,
        size.width * 0.03960396,
        size.height * 0.7486702,
        size.width * 0.04009901,
        size.height * 0.7672872);
    path31.cubicTo(
        size.width * 0.02623762,
        size.height * 0.7460106,
        size.width * 0.02623762,
        size.height * 0.8404255,
        size.width * 0.04009901,
        size.height * 0.8191489);
    path31.cubicTo(
        size.width * 0.04158416,
        size.height * 0.8444149,
        size.width * 0.02178218,
        size.height * 0.8297872,
        size.width * 0.01782178,
        size.height * 0.8337766);
    path31.lineTo(size.width * 0.01881188, size.height * 0.8603723);
    path31.lineTo(size.width * 0.01881188, size.height * 0.8603723);
    path31.cubicTo(
        size.width * 0.01930693,
        size.height * 0.8909574,
        size.width * 0.05099010,
        size.height * 0.8896277,
        size.width * 0.06386139,
        size.height * 0.8882979);
    path31.lineTo(size.width * 0.06386139, size.height * 0.8510638);
    path31.lineTo(size.width * 0.09405941, size.height * 0.8510638);
    path31.lineTo(size.width * 0.09405941, size.height * 0.9281915);
    path31.cubicTo(
        size.width * 0.005940594,
        size.height * 0.9242021,
        size.width * 0.007920792,
        size.height * 0.9654255,
        size.width * 0.004455446,
        size.height * 0.7194149);
    path31.lineTo(size.width * 0.009900990, size.height * 0.7194149);
    path31.lineTo(size.width * 0.009405941, size.height * 0.6981383);
    path31.lineTo(size.width * 0.09405941, size.height * 0.6981383);
    path31.cubicTo(
        size.width * 0.09405941,
        size.height * 0.7061170,
        size.width * 0.09405941,
        size.height * 0.7579787,
        size.width * 0.09405941,
        size.height * 0.7672872);
    path31.close();
    path31.moveTo(size.width * 0.09405941, size.height * 0.7845745);
    path31.lineTo(size.width * 0.09405941, size.height * 0.8324468);
    path31.lineTo(size.width * 0.06782178, size.height * 0.8324468);
    path31.cubicTo(
        size.width * 0.06039604,
        size.height * 0.8337766,
        size.width * 0.06435644,
        size.height * 0.7952128,
        size.width * 0.06336634,
        size.height * 0.7845745);
    path31.lineTo(size.width * 0.09405941, size.height * 0.7845745);
    path31.close();

    Paint paint31fill = Paint()..style = PaintingStyle.fill;
    paint31fill.color = Color(0xff666666).withOpacity(1.0);
    canvas.drawPath(path31, paint31fill);

    Path path32 = Path();
    path32.moveTo(size.width * 0.04009901, size.height * 0.8191489);
    path32.cubicTo(
        size.width * 0.04108911,
        size.height * 0.7460106,
        size.width * 0.04158416,
        size.height * 0.7579787,
        size.width * 0.01584158,
        size.height * 0.7579787);
    path32.lineTo(size.width * 0.01485149, size.height * 0.7194149);
    path32.lineTo(size.width * 0.06336634, size.height * 0.7194149);
    path32.cubicTo(
        size.width * 0.06386139,
        size.height * 0.7260638,
        size.width * 0.06237624,
        size.height * 0.7593085,
        size.width * 0.06485149,
        size.height * 0.7646277);
    path32.cubicTo(
        size.width * 0.06584158,
        size.height * 0.7712766,
        size.width * 0.09207921,
        size.height * 0.7672872,
        size.width * 0.09405941,
        size.height * 0.7686170);
    path32.lineTo(size.width * 0.09405941, size.height * 0.7845745);
    path32.lineTo(size.width * 0.06336634, size.height * 0.7845745);
    path32.cubicTo(
        size.width * 0.06435644,
        size.height * 0.7952128,
        size.width * 0.06039604,
        size.height * 0.8324468,
        size.width * 0.06782178,
        size.height * 0.8324468);
    path32.cubicTo(
        size.width * 0.06782178,
        size.height * 0.8324468,
        size.width * 0.09405941,
        size.height * 0.8324468,
        size.width * 0.09405941,
        size.height * 0.8324468);
    path32.lineTo(size.width * 0.09405941, size.height * 0.8497340);
    path32.lineTo(size.width * 0.06336634, size.height * 0.8497340);
    path32.lineTo(size.width * 0.06336634, size.height * 0.8869681);
    path32.cubicTo(
        size.width * 0.05099010,
        size.height * 0.8869681,
        size.width * 0.01930693,
        size.height * 0.8909574,
        size.width * 0.01831683,
        size.height * 0.8590426);
    path32.lineTo(size.width * 0.01831683, size.height * 0.8590426);
    path32.lineTo(size.width * 0.01732673, size.height * 0.8324468);
    path32.cubicTo(
        size.width * 0.02178218,
        size.height * 0.8297872,
        size.width * 0.04108911,
        size.height * 0.8430851,
        size.width * 0.04009901,
        size.height * 0.8191489);
    path32.close();

    Paint paint32fill = Paint()..style = PaintingStyle.fill;
    paint32fill.color = Color(0xff828282).withOpacity(1.0);
    canvas.drawPath(path32, paint32fill);

    Path path33 = Path();
    path33.moveTo(size.width * 0.03960396, size.height * 0.7672872);
    path33.cubicTo(
        size.width * 0.03960396,
        size.height * 0.7699468,
        size.width * 0.03960396,
        size.height * 0.8164894,
        size.width * 0.03960396,
        size.height * 0.8191489);
    path33.cubicTo(
        size.width * 0.02574257,
        size.height * 0.8404255,
        size.width * 0.02574257,
        size.height * 0.7446809,
        size.width * 0.03960396,
        size.height * 0.7672872);
    path33.close();

    Paint paint33fill = Paint()..style = PaintingStyle.fill;
    paint33fill.color = Color(0xffCCCCCC).withOpacity(1.0);
    canvas.drawPath(path33, paint33fill);

    Path path34 = Path();
    path34.moveTo(size.width * 0.05396040, size.height * 0.7486702);
    path34.cubicTo(
        size.width * 0.05693069,
        size.height * 0.7566489,
        size.width * 0.05445545,
        size.height * 0.7712766,
        size.width * 0.05049505,
        size.height * 0.7699468);
    path34.cubicTo(
        size.width * 0.04207921,
        size.height * 0.7672872,
        size.width * 0.04752475,
        size.height * 0.7340426,
        size.width * 0.05396040,
        size.height * 0.7486702);
    path34.close();

    Paint paint34fill = Paint()..style = PaintingStyle.fill;
    paint34fill.color = Color(0xffFF9933).withOpacity(1.0);
    canvas.drawPath(path34, paint34fill);

    Path path35 = Path();
    path35.moveTo(size.width * 0.9678218, size.height * 0.7845745);
    path35.cubicTo(
        size.width * 0.9782178,
        size.height * 0.7579787,
        size.width * 0.9668317,
        size.height * 0.7114362,
        size.width * 0.9534653,
        size.height * 0.7234043);
    path35.lineTo(size.width * 0.9534653, size.height * 0.1196809);
    path35.lineTo(size.width * 0.9638614, size.height * 0.1117021);
    path35.lineTo(size.width * 0.9777228, size.height * 0.5904255);
    path35.lineTo(size.width * 0.9955446, size.height * 0.6609043);
    path35.lineTo(size.width, size.height * 0.7925532);
    path35.lineTo(size.width * 0.9717822, size.height * 0.7925532);
    path35.lineTo(size.width * 0.9678218, size.height * 0.7845745);
    path35.close();

    Paint paint35fill = Paint()..style = PaintingStyle.fill;
    paint35fill.color = Color(0xffBFBFBF).withOpacity(1.0);
    canvas.drawPath(path35, paint35fill);

    Path path36 = Path();
    path36.moveTo(size.width * 0.9534653, size.height * 0.7247340);
    path36.cubicTo(
        size.width * 0.9668317,
        size.height * 0.7114362,
        size.width * 0.9782178,
        size.height * 0.7593085,
        size.width * 0.9678218,
        size.height * 0.7859043);
    path36.lineTo(size.width * 0.9678218, size.height * 0.7859043);
    path36.cubicTo(
        size.width * 0.9628713,
        size.height * 0.7992021,
        size.width * 0.9549505,
        size.height * 0.8005319,
        size.width * 0.9490099,
        size.height * 0.7885638);
    path36.lineTo(size.width * 0.9490099, size.height * 0.7513298);
    path36.lineTo(size.width * 0.9445545, size.height * 0.7513298);
    path36.cubicTo(
        size.width * 0.9460396,
        size.height * 0.7380319,
        size.width * 0.9495050,
        size.height * 0.7287234,
        size.width * 0.9534653,
        size.height * 0.7247340);
    path36.close();
    path36.moveTo(size.width * 0.9613861, size.height * 0.7500000);
    path36.cubicTo(
        size.width * 0.9569307,
        size.height * 0.7380319,
        size.width * 0.9500000,
        size.height * 0.7566489,
        size.width * 0.9544554,
        size.height * 0.7686170);
    path36.cubicTo(
        size.width * 0.9589109,
        size.height * 0.7805851,
        size.width * 0.9658416,
        size.height * 0.7619681,
        size.width * 0.9613861,
        size.height * 0.7500000);
    path36.close();

    Paint paint36fill = Paint()..style = PaintingStyle.fill;
    paint36fill.color = Color(0xffA2A2A2).withOpacity(1.0);
    canvas.drawPath(path36, paint36fill);

    Path path37 = Path();
    path37.moveTo(size.width * 0.9613861, size.height * 0.7500000);
    path37.cubicTo(
        size.width * 0.9658416,
        size.height * 0.7619681,
        size.width * 0.9589109,
        size.height * 0.7805851,
        size.width * 0.9544554,
        size.height * 0.7686170);
    path37.cubicTo(
        size.width * 0.9500000,
        size.height * 0.7566489,
        size.width * 0.9569307,
        size.height * 0.7380319,
        size.width * 0.9613861,
        size.height * 0.7500000);
    path37.close();

    Paint paint37fill = Paint()..style = PaintingStyle.fill;
    paint37fill.color = Color(0xff666666).withOpacity(1.0);
    canvas.drawPath(path37, paint37fill);

    Paint paint38fill = Paint()..style = PaintingStyle.fill;
    paint38fill.color = Color(0xffE95050).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.9539604, size.height * 0.8111702,
            size.width * 0.004950495, size.height * 0.03058511),
        paint38fill);

    Path path39 = Path();
    path39.moveTo(size.width * 0.9539604, size.height * 0.8111702);
    path39.lineTo(size.width * 0.9539604, size.height * 0.8404255);
    path39.cubicTo(
        size.width * 0.9490099,
        size.height * 0.8417553,
        size.width * 0.9415842,
        size.height * 0.8417553,
        size.width * 0.9430693,
        size.height * 0.8218085);
    path39.cubicTo(
        size.width * 0.9430693,
        size.height * 0.8085106,
        size.width * 0.9504950,
        size.height * 0.8111702,
        size.width * 0.9539604,
        size.height * 0.8111702);
    path39.close();

    Paint paint39fill = Paint()..style = PaintingStyle.fill;
    paint39fill.color = Color(0xff666666).withOpacity(1.0);
    canvas.drawPath(path39, paint39fill);

    Path path40 = Path();
    path40.moveTo(size.width * 0.2579208, size.height * 0.8563830);
    path40.lineTo(size.width * 0.6371287, size.height * 0.8563830);
    path40.cubicTo(
        size.width * 0.6371287,
        size.height * 0.8444149,
        size.width * 0.6371287,
        size.height * 0.8324468,
        size.width * 0.6381188,
        size.height * 0.8204787);
    path40.lineTo(size.width * 0.2569307, size.height * 0.8204787);
    path40.lineTo(size.width * 0.2569307, size.height * 0.7500000);
    path40.lineTo(size.width * 0.6480198, size.height * 0.7500000);
    path40.cubicTo(
        size.width * 0.6509901,
        size.height * 0.7393617,
        size.width * 0.6539604,
        size.height * 0.7287234,
        size.width * 0.6574257,
        size.height * 0.7194149);
    path40.lineTo(size.width * 0.6727723, size.height * 0.7194149);
    path40.cubicTo(
        size.width * 0.6465347,
        size.height * 0.7606383,
        size.width * 0.6376238,
        size.height * 0.8523936,
        size.width * 0.6475248,
        size.height * 0.9268617);
    path40.lineTo(size.width * 0.2564356, size.height * 0.9268617);
    path40.lineTo(size.width * 0.2564356, size.height * 0.8417553);
    path40.lineTo(size.width * 0.2579208, size.height * 0.8563830);
    path40.close();
    path40.moveTo(size.width * 0.7490099, size.height * 0.7273936);
    path40.cubicTo(
        size.width * 0.7569307,
        size.height * 0.7486702,
        size.width * 0.7633663,
        size.height * 0.7752660,
        size.width * 0.7668317,
        size.height * 0.8045213);
    path40.cubicTo(
        size.width * 0.7698020,
        size.height * 0.7726064,
        size.width * 0.7762376,
        size.height * 0.7433511,
        size.width * 0.7851485,
        size.height * 0.7207447);
    path40.lineTo(size.width * 0.8004950, size.height * 0.7207447);
    path40.cubicTo(
        size.width * 0.7742574,
        size.height * 0.7606383,
        size.width * 0.7648515,
        size.height * 0.8550532,
        size.width * 0.7752475,
        size.height * 0.9281915);
    path40.lineTo(size.width * 0.7618812, size.height * 0.9281915);
    path40.cubicTo(
        size.width * 0.7698020,
        size.height * 0.8497340,
        size.width * 0.7564356,
        size.height * 0.7606383,
        size.width * 0.7301980,
        size.height * 0.7207447);
    path40.lineTo(size.width * 0.7460396, size.height * 0.7207447);
    path40.cubicTo(
        size.width * 0.7470297,
        size.height * 0.7220745,
        size.width * 0.7480198,
        size.height * 0.7247340,
        size.width * 0.7490099,
        size.height * 0.7273936);
    path40.close();
    path40.moveTo(size.width * 0.8841584, size.height * 0.7500000);
    path40.lineTo(size.width * 0.9490099, size.height * 0.7500000);
    path40.lineTo(size.width * 0.9490099, size.height * 0.8204787);
    path40.lineTo(size.width * 0.8960396, size.height * 0.8204787);
    path40.cubicTo(
        size.width * 0.8970297,
        size.height * 0.8324468,
        size.width * 0.8975248,
        size.height * 0.8444149,
        size.width * 0.8980198,
        size.height * 0.8563830);
    path40.lineTo(size.width * 0.9485149, size.height * 0.8563830);
    path40.lineTo(size.width * 0.9485149, size.height * 0.9268617);
    path40.lineTo(size.width * 0.8891089, size.height * 0.9268617);
    path40.cubicTo(
        size.width * 0.8970297,
        size.height * 0.8484043,
        size.width * 0.8836634,
        size.height * 0.7593085,
        size.width * 0.8574257,
        size.height * 0.7194149);
    path40.lineTo(size.width * 0.8732673, size.height * 0.7194149);
    path40.cubicTo(
        size.width * 0.8777228,
        size.height * 0.7287234,
        size.width * 0.8806931,
        size.height * 0.7380319,
        size.width * 0.8841584,
        size.height * 0.7500000);
    path40.close();

    Paint paint40fill = Paint()..style = PaintingStyle.fill;
    paint40fill.color = Color(0xff828282).withOpacity(1.0);
    canvas.drawPath(path40, paint40fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
