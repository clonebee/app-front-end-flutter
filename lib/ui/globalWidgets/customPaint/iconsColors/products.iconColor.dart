import 'package:flutter/material.dart';

Widget productsIconColor({@required double xwidth}) {
  return CustomPaint(
    size: Size(xwidth, (xwidth * 2.1581265012009605).toDouble()),
    painter: ProductsIconColor(),
  );
}

class ProductsIconColor extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.6829464, size.height * 0.1828047);
    path0.lineTo(size.width * 0.6829464, size.height * 0.9998145);
    path0.lineTo(size.width * 0.01621297, size.height * 0.9674457);
    path0.arcToPoint(Offset(0, size.height * 0.9590985),
        radius: Radius.elliptical(
            size.width * 0.01821457, size.height * 0.008439993),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path0.lineTo(0, size.height * 0.1689853);
    path0.lineTo(0, size.height * 0.1689853);
    path0.close();

    Paint paint0fill = Paint()..style = PaintingStyle.fill;
    paint0fill.color = Color(0xff6fbbf2).withOpacity(1.0);
    canvas.drawPath(path0, paint0fill);

    Path path1 = Path();
    path1.moveTo(size.width * 1.000801, size.height * 0.9217214);
    path1.arcToPoint(Offset(size.width * 0.9991994, size.height * 0.9269152),
        radius: Radius.elliptical(
            size.width * 0.04003203, size.height * 0.01854943),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path1.arcToPoint(Offset(size.width * 0.9779824, size.height * 0.9382304),
        radius: Radius.elliptical(
            size.width * 0.04003203, size.height * 0.01854943),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path1.lineTo(size.width * 0.6837470, size.height);
    path1.lineTo(size.width * 0.6837470, size.height * 0.1829902);
    path1.lineTo(size.width * 0.9889912, size.height * 0.1713968);
    path1.lineTo(size.width * 0.9889912, size.height * 0.2218512);
    path1.lineTo(size.width * 0.9913931, size.height * 0.3693192);
    path1.lineTo(size.width * 0.9945957, size.height * 0.5820812);
    path1.close();

    Paint paint1fill = Paint()..style = PaintingStyle.fill;
    paint1fill.color = Color(0xff4e93c7).withOpacity(1.0);
    canvas.drawPath(path1, paint1fill);

    Path path2 = Path();
    path2.moveTo(size.width * 0.8200560, size.height * 0.05796698);
    path2.lineTo(size.width * 0.8114492, size.height * 0.06585049);
    path2.lineTo(size.width * 0.6829464, size.height * 0.1828047);
    path2.lineTo(0, size.height * 0.1689853);
    path2.lineTo(size.width * 0.1993595, size.height * 0.06269709);
    path2.lineTo(size.width * 0.2081665, size.height * 0.05796698);
    path2.lineTo(size.width * 0.8200560, size.height * 0.05796698);
    path2.close();

    Paint paint2fill = Paint()..style = PaintingStyle.fill;
    paint2fill.color = Color(0xff96d3ff).withOpacity(1.0);
    canvas.drawPath(path2, paint2fill);

    Path path3 = Path();
    path3.moveTo(size.width * 0.8238591, size.height * 0.05796698);
    path3.lineTo(size.width * 0.8154524, size.height * 0.06585049);
    path3.lineTo(size.width * 0.2033627, size.height * 0.06269709);
    path3.lineTo(size.width * 0.2121697, size.height * 0.05796698);
    path3.close();

    Paint paint3fill = Paint()..style = PaintingStyle.fill;
    paint3fill.color = Color(0xff969696).withOpacity(1.0);
    canvas.drawPath(path3, paint3fill);

    Path path4 = Path();
    path4.moveTo(size.width * 0.9881906, size.height * 0.1715823);
    path4.lineTo(size.width * 0.6829464, size.height * 0.1831757);
    path4.lineTo(size.width * 0.6843475, size.height * 0.1819699);
    path4.lineTo(size.width * 0.6881505, size.height * 0.1786311);
    path4.lineTo(size.width * 0.7457966, size.height * 0.1259507);
    path4.lineTo(size.width * 0.7467974, size.height * 0.1250232);
    path4.lineTo(size.width * 0.8200560, size.height * 0.05833797);
    path4.lineTo(size.width * 0.8260608, size.height * 0.06241885);
    path4.lineTo(size.width * 0.8428743, size.height * 0.07382675);
    path4.lineTo(size.width * 0.9337470, size.height * 0.1349471);
    path4.lineTo(size.width * 0.9881906, size.height * 0.1715823);
    path4.close();

    Paint paint4fill = Paint()..style = PaintingStyle.fill;
    paint4fill.color = Color(0xffd7e2e6).withOpacity(1.0);
    canvas.drawPath(path4, paint4fill);

    Path path5 = Path();
    path5.moveTo(size.width * 0.2087670, size.height * 0.05666852);
    path5.lineTo(size.width * 0.8316653, size.height * 0.05833797);
    path5.lineTo(size.width * 0.8316653, size.height * 0.01140790);
    path5.arcToPoint(Offset(size.width * 0.8078463, 0),
        radius: Radius.elliptical(
            size.width * 0.02401922, size.height * 0.01112966),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path5.lineTo(size.width * 0.2419936, size.height * 0.001112966);
    path5.cubicTo(
        size.width * 0.2219776,
        size.height * 0.001112966,
        size.width * 0.2071657,
        size.height * 0.006028566,
        size.width * 0.2079664,
        size.height * 0.01131515);
    path5.close();

    Paint paint5fill = Paint()..style = PaintingStyle.fill;
    paint5fill.color = Color(0xffdcdbd7).withOpacity(1.0);
    canvas.drawPath(path5, paint5fill);

    Path path6 = Path();
    path6.moveTo(size.width * 0.8206565, size.height * 0.01363383);
    path6.lineTo(size.width * 0.8206565, size.height * 0.05833797);
    path6.lineTo(size.width * 0.2768215, size.height * 0.05833797);
    path6.lineTo(size.width * 0.2081665, size.height * 0.05833797);
    path6.lineTo(size.width * 0.2081665, size.height * 0.04711556);
    path6.lineTo(size.width * 0.2081665, size.height * 0.01483955);
    path6.arcToPoint(Offset(size.width * 0.2303843, size.height * 0.003802634),
        radius: Radius.elliptical(
            size.width * 0.02361890, size.height * 0.01094417),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path6.lineTo(size.width * 0.7962370, size.height * 0.002782415);
    path6.arcToPoint(Offset(size.width * 0.8206565, size.height * 0.01363383),
        radius: Radius.elliptical(
            size.width * 0.02361890, size.height * 0.01094417),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path6.close();

    Paint paint6fill = Paint()..style = PaintingStyle.fill;
    paint6fill.color = Color(0xff6fbbf2).withOpacity(1.0);
    canvas.drawPath(path6, paint6fill);

    Path path7 = Path();
    path7.moveTo(size.width * 0.8206565, size.height * 0.01558152);
    path7.lineTo(size.width * 0.8206565, size.height * 0.05833797);
    path7.lineTo(size.width * 0.2768215, size.height * 0.05833797);
    path7.lineTo(size.width * 0.2081665, size.height * 0.05833797);
    path7.lineTo(size.width * 0.2081665, size.height * 0.04906325);
    path7.lineTo(size.width * 0.2141713, size.height * 0.04906325);
    path7.cubicTo(
        size.width * 0.2942354,
        size.height * 0.04961974,
        size.width * 0.3720977,
        size.height * 0.04906325,
        size.width * 0.4509608,
        size.height * 0.04711556);
    path7.arcToPoint(Offset(size.width * 0.8168535, size.height * 0.01604526),
        radius:
            Radius.elliptical(size.width * 1.447558, size.height * 0.6707475),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path7.close();

    Paint paint7fill = Paint()..style = PaintingStyle.fill;
    paint7fill.color = Color(0xffe4f0fa).withOpacity(1.0);
    canvas.drawPath(path7, paint7fill);

    Path path8 = Path();
    path8.moveTo(size.width * 0.4971978, size.height * 0.1391208);
    path8.cubicTo(
        size.width * 0.5308247,
        size.height * 0.1329994,
        size.width * 0.5796637,
        size.height * 0.1133370,
        size.width * 0.5670536,
        size.height * 0.09404563);
    path8.cubicTo(
        size.width * 0.5642514,
        size.height * 0.08987201,
        size.width * 0.5582466,
        size.height * 0.08477091,
        size.width * 0.5486389,
        size.height * 0.08300872);
    path8.arcToPoint(Offset(size.width * 0.5132106, size.height * 0.08180301),
        radius: Radius.elliptical(
            size.width * 0.09627702, size.height * 0.04461139),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path8.cubicTo(
        size.width * 0.4959968,
        size.height * 0.08273048,
        size.width * 0.4791833,
        size.height * 0.08180301,
        size.width * 0.4619696,
        size.height * 0.08328696);
    path8.cubicTo(
        size.width * 0.4447558,
        size.height * 0.08477091,
        size.width * 0.4259408,
        size.height * 0.08708959,
        size.width * 0.4077262,
        size.height * 0.08885179);
    path8.arcToPoint(Offset(size.width * 0.3462770, size.height * 0.1001669),
        radius:
            Radius.elliptical(size.width * 0.1835468, size.height * 0.08504916),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path8.cubicTo(
        size.width * 0.3178543,
        size.height * 0.1084214,
        size.width * 0.3008407,
        size.height * 0.1222408,
        size.width * 0.3248599,
        size.height * 0.1363383);
    path8.cubicTo(
        size.width * 0.3428743,
        size.height * 0.1469115,
        size.width * 0.3718975,
        size.height * 0.1477462,
        size.width * 0.3991193,
        size.height * 0.1480245);
    path8.arcToPoint(Offset(size.width * 0.4971978, size.height * 0.1391208),
        radius:
            Radius.elliptical(size.width * 0.2467974, size.height * 0.1143573),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path8.close();

    Paint paint8fill = Paint()..style = PaintingStyle.fill;
    paint8fill.color = Color(0xffcfdfeb).withOpacity(1.0);
    canvas.drawPath(path8, paint8fill);

    Path path9 = Path();
    path9.moveTo(size.width * 0.5626501, size.height * 0.1002597);
    path9.cubicTo(
        size.width * 0.5638511,
        size.height * 0.09413838,
        size.width * 0.5614492,
        size.height * 0.08449267,
        size.width * 0.5494396,
        size.height * 0.08171026);
    path9.arcToPoint(Offset(size.width * 0.4853883, size.height * 0.07753664),
        radius:
            Radius.elliptical(size.width * 0.1431145, size.height * 0.06631423),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path9.arcToPoint(Offset(size.width * 0.4065252, size.height * 0.08402894),
        radius:
            Radius.elliptical(size.width * 0.3504804, size.height * 0.1624003),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path9.arcToPoint(Offset(size.width * 0.3446757, size.height * 0.09580783),
        radius:
            Radius.elliptical(size.width * 0.1801441, size.height * 0.08347245),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path9.arcToPoint(Offset(size.width * 0.3136509, size.height * 0.1095344),
        radius: Radius.elliptical(
            size.width * 0.08466773, size.height * 0.03923205),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path9.cubicTo(
        size.width * 0.2976381,
        size.height * 0.1234465,
        size.width * 0.3136509,
        size.height * 0.1356891,
        size.width * 0.3394716,
        size.height * 0.1424597);
    path9.cubicTo(
        size.width * 0.3720977,
        size.height * 0.1508069,
        size.width * 0.4143315,
        size.height * 0.1483955,
        size.width * 0.4485588,
        size.height * 0.1446856);
    path9.arcToPoint(Offset(size.width * 0.5566453, size.height * 0.1096272),
        radius:
            Radius.elliptical(size.width * 0.1693355, size.height * 0.07846411),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path9.arcToPoint(Offset(size.width * 0.5626501, size.height * 0.1002597),
        radius: Radius.elliptical(
            size.width * 0.05144115, size.height * 0.02383602),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path9.close();

    Paint paint9fill = Paint()..style = PaintingStyle.fill;
    paint9fill.color = Color(0xffcfdfeb).withOpacity(1.0);
    canvas.drawPath(path9, paint9fill);

    Path path10 = Path();
    path10.moveTo(size.width * 0.5556445, size.height * 0.1001669);
    path10.cubicTo(
        size.width * 0.5556445,
        size.height * 0.09450937,
        size.width * 0.5544436,
        size.height * 0.08579113,
        size.width * 0.5432346,
        size.height * 0.08328696);
    path10.arcToPoint(Offset(size.width * 0.4831865, size.height * 0.07948433),
        radius:
            Radius.elliptical(size.width * 0.1401121, size.height * 0.06492302),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path10.arcToPoint(Offset(size.width * 0.4087270, size.height * 0.08542014),
        radius:
            Radius.elliptical(size.width * 0.3352682, size.height * 0.1553515),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path10.arcToPoint(Offset(size.width * 0.3502802, size.height * 0.09608607),
        radius:
            Radius.elliptical(size.width * 0.1765412, size.height * 0.08180301),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path10.arcToPoint(Offset(size.width * 0.3202562, size.height * 0.1086069),
        radius: Radius.elliptical(
            size.width * 0.07746197, size.height * 0.03589316),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path10.cubicTo(
        size.width * 0.3050440,
        size.height * 0.1212206,
        size.width * 0.3202562,
        size.height * 0.1324430,
        size.width * 0.3446757,
        size.height * 0.1386570);
    path10.cubicTo(
        size.width * 0.3753002,
        size.height * 0.1461695,
        size.width * 0.4153323,
        size.height * 0.1440364,
        size.width * 0.4475580,
        size.height * 0.1406047);
    path10.arcToPoint(Offset(size.width * 0.5498399, size.height * 0.1086997),
        radius:
            Radius.elliptical(size.width * 0.1601281, size.height * 0.07419774),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path10.arcToPoint(Offset(size.width * 0.5556445, size.height * 0.1001669),
        radius: Radius.elliptical(
            size.width * 0.04923939, size.height * 0.02281580),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path10.close();

    Paint paint10fill = Paint()..style = PaintingStyle.fill;
    paint10fill.color = Color(0xff9bccf2).withOpacity(1.0);
    canvas.drawPath(path10, paint10fill);

    Path path11 = Path();
    path11.moveTo(size.width * 0.4779824, size.height * 0.07225005);
    path11.cubicTo(
        size.width * 0.5380304,
        size.height * 0.07317752,
        size.width * 0.5652522,
        size.height * 0.08708959,
        size.width * 0.5404323,
        size.height * 0.1048971);
    path11.cubicTo(
        size.width * 0.5156125,
        size.height * 0.1227045,
        size.width * 0.4471577,
        size.height * 0.1366166,
        size.width * 0.3863090,
        size.height * 0.1357819);
    path11.cubicTo(
        size.width * 0.3254604,
        size.height * 0.1349471,
        size.width * 0.2980384,
        size.height * 0.1209423,
        size.width * 0.3228583,
        size.height * 0.1030421);
    path11.cubicTo(
        size.width * 0.3476781,
        size.height * 0.08514190,
        size.width * 0.4171337,
        size.height * 0.07141532,
        size.width * 0.4779824,
        size.height * 0.07225005);
    path11.close();

    Paint paint11fill = Paint()..style = PaintingStyle.fill;
    paint11fill.color = Color(0xffcce9ff).withOpacity(1.0);
    canvas.drawPath(path11, paint11fill);

    Path path12 = Path();
    path12.moveTo(size.width * 0.5438351, size.height * 0.09274717);
    path12.arcToPoint(Offset(size.width * 0.5354283, size.height * 0.1020219),
        radius: Radius.elliptical(
            size.width * 0.05304243, size.height * 0.02457800),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path12.lineTo(size.width * 0.5354283, size.height * 0.1024856);
    path12.arcToPoint(Offset(size.width * 0.5354283, size.height * 0.1032276),
        radius: Radius.elliptical(
            size.width * 0.007005604, size.height * 0.003246151),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path12.arcToPoint(Offset(size.width * 0.5264211, size.height * 0.1082359),
        radius:
            Radius.elliptical(size.width * 0.1170937, size.height * 0.05425710),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path12.arcToPoint(Offset(size.width * 0.5064051, size.height * 0.1163977),
        radius:
            Radius.elliptical(size.width * 0.1154924, size.height * 0.05351512),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path12.arcToPoint(Offset(size.width * 0.5000000, size.height * 0.1183454),
        radius: Radius.elliptical(
            size.width * 0.07065653, size.height * 0.03273975),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path12.lineTo(size.width * 0.4983987, size.height * 0.1183454);
    path12.arcToPoint(Offset(size.width * 0.4829864, size.height * 0.1221480),
        radius:
            Radius.elliptical(size.width * 0.1417134, size.height * 0.06566500),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path12.cubicTo(
        size.width * 0.4783827,
        size.height * 0.1231682,
        size.width * 0.4737790,
        size.height * 0.1240030,
        size.width * 0.4691753,
        size.height * 0.1248377);
    path12.arcToPoint(Offset(size.width * 0.4291433, size.height * 0.1296605),
        radius:
            Radius.elliptical(size.width * 0.2121697, size.height * 0.09831200),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path12.lineTo(size.width * 0.4165332, size.height * 0.1304025);
    path12.lineTo(size.width * 0.4103283, size.height * 0.1304025);
    path12.lineTo(size.width * 0.4033227, size.height * 0.1304025);
    path12.arcToPoint(Offset(size.width * 0.3722978, size.height * 0.1297533),
        radius:
            Radius.elliptical(size.width * 0.1737390, size.height * 0.08050454),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path12.cubicTo(
        size.width * 0.3482786,
        size.height * 0.1281766,
        size.width * 0.3302642,
        size.height * 0.1240957,
        size.width * 0.3252602,
        size.height * 0.1176962);
    path12.lineTo(size.width * 0.2984388, size.height * 0.08393619);
    path12.arcToPoint(Offset(size.width * 0.3402722, size.height * 0.09840475),
        radius: Radius.elliptical(
            size.width * 0.05644516, size.height * 0.02615470),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path12.arcToPoint(Offset(size.width * 0.3638911, size.height * 0.09998145),
        radius:
            Radius.elliptical(size.width * 0.1367094, size.height * 0.06334632),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path12.lineTo(size.width * 0.3638911, size.height * 0.09998145);
    path12.arcToPoint(Offset(size.width * 0.3801041, size.height * 0.09998145),
        radius:
            Radius.elliptical(size.width * 0.1461169, size.height * 0.06770543),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path12.lineTo(size.width * 0.3849079, size.height * 0.09998145);
    path12.arcToPoint(Offset(size.width * 0.4439552, size.height * 0.09395288),
        radius:
            Radius.elliptical(size.width * 0.2051641, size.height * 0.09506585),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path12.arcToPoint(Offset(size.width * 0.4649720, size.height * 0.08977926),
        radius:
            Radius.elliptical(size.width * 0.1659327, size.height * 0.07688740),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path12.lineTo(size.width * 0.4667734, size.height * 0.08977926);
    path12.lineTo(size.width * 0.4727782, size.height * 0.08820256);
    path12.arcToPoint(Offset(size.width * 0.4823859, size.height * 0.08532740),
        radius:
            Radius.elliptical(size.width * 0.1132906, size.height * 0.05249490),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path12.arcToPoint(Offset(size.width * 0.4971978, size.height * 0.07994806),
        radius:
            Radius.elliptical(size.width * 0.1267014, size.height * 0.05870896),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path12.lineTo(size.width * 0.5004003, size.height * 0.07864960);
    path12.lineTo(size.width * 0.5004003, size.height * 0.07864960);
    path12.lineTo(size.width * 0.5004003, size.height * 0.07818587);
    path12.lineTo(size.width * 0.5004003, size.height * 0.07818587);
    path12.arcToPoint(Offset(size.width * 0.5108086, size.height * 0.07225005),
        radius: Radius.elliptical(
            size.width * 0.07686149, size.height * 0.03561491),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path12.arcToPoint(Offset(size.width * 0.5156125, size.height * 0.06826192),
        radius: Radius.elliptical(
            size.width * 0.04643715, size.height * 0.02151734),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path12.arcToPoint(Offset(size.width * 0.5204163, size.height * 0.05778149),
        radius: Radius.elliptical(
            size.width * 0.04003203, size.height * 0.01854943),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path12.lineTo(size.width * 0.5204163, size.height * 0.05676127);
    path12.lineTo(size.width * 0.5204163, size.height * 0.05564830);
    path12.arcToPoint(Offset(size.width * 0.5204163, size.height * 0.05444259),
        radius: Radius.elliptical(
            size.width * 0.01861489, size.height * 0.008625487),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path12.lineTo(size.width * 0.5228183, size.height * 0.05741050);
    path12.arcToPoint(Offset(size.width * 0.5228183, size.height * 0.05741050),
        radius: Radius.elliptical(0, 0),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path12.arcToPoint(Offset(size.width * 0.5228183, size.height * 0.05861621),
        radius: Radius.elliptical(
            size.width * 0.01301041, size.height * 0.006028566),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path12.lineTo(size.width * 0.5228183, size.height * 0.05861621);
    path12.cubicTo(
        size.width * 0.5256205,
        size.height * 0.06223335,
        size.width * 0.5296237,
        size.height * 0.06733445,
        size.width * 0.5332266,
        size.height * 0.07215730);
    path12.lineTo(size.width * 0.5332266, size.height * 0.07327027);
    path12.cubicTo(
        size.width * 0.5378303,
        size.height * 0.07929883,
        size.width * 0.5418335,
        size.height * 0.08430718,
        size.width * 0.5418335,
        size.height * 0.08430718);
    path12.arcToPoint(Offset(size.width * 0.5432346, size.height * 0.08699685),
        radius: Radius.elliptical(
            size.width * 0.03482786, size.height * 0.01613801),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path12.arcToPoint(Offset(size.width * 0.5438351, size.height * 0.09274717),
        radius: Radius.elliptical(
            size.width * 0.04003203, size.height * 0.01854943),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path12.close();

    Paint paint12fill = Paint()..style = PaintingStyle.fill;
    paint12fill.color = Color(0xffbcddf7).withOpacity(1.0);
    canvas.drawPath(path12, paint12fill);

    Path path13 = Path();
    path13.moveTo(size.width * 0.4525620, size.height * 0.04006678);
    path13.cubicTo(
        size.width * 0.5096077,
        size.height * 0.04164348,
        size.width * 0.5362290,
        size.height * 0.05629753,
        size.width * 0.5126101,
        size.height * 0.07280653);
    path13.cubicTo(
        size.width * 0.4889912,
        size.height * 0.08931553,
        size.width * 0.4227382,
        size.height * 0.1015582,
        size.width * 0.3656926,
        size.height * 0.09998145);
    path13.cubicTo(
        size.width * 0.3086469,
        size.height * 0.09840475,
        size.width * 0.2818255,
        size.height * 0.08384344,
        size.width * 0.3056445,
        size.height * 0.06733445);
    path13.cubicTo(
        size.width * 0.3294636,
        size.height * 0.05082545,
        size.width * 0.3953163,
        size.height * 0.03858282,
        size.width * 0.4525620,
        size.height * 0.04006678);
    path13.close();

    Paint paint13fill = Paint()..style = PaintingStyle.fill;
    paint13fill.color = Color(0xfff5fbff).withOpacity(1.0);
    canvas.drawPath(path13, paint13fill);

    Path path14 = Path();
    path14.moveTo(size.width * 0.5046037, size.height * 0.07076609);
    path14.cubicTo(
        size.width * 0.4819856,
        size.height * 0.08606937,
        size.width * 0.4203363,
        size.height * 0.09738453,
        size.width * 0.3656926,
        size.height * 0.09599332);
    path14.cubicTo(
        size.width * 0.3110488,
        size.height * 0.09460211,
        size.width * 0.2866293,
        size.height * 0.08096828,
        size.width * 0.3094476,
        size.height * 0.06566500);
    path14.arcToPoint(Offset(size.width * 0.3212570, size.height * 0.05954368),
        radius: Radius.elliptical(
            size.width * 0.08006405, size.height * 0.03709887),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path14.arcToPoint(Offset(size.width * 0.4483587, size.height * 0.04043777),
        radius:
            Radius.elliptical(size.width * 0.1859488, size.height * 0.08616212),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path14.arcToPoint(Offset(size.width * 0.5034027, size.height * 0.04971248),
        radius: Radius.elliptical(
            size.width * 0.08346677, size.height * 0.03867557),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path14.arcToPoint(Offset(size.width * 0.5046037, size.height * 0.07076609),
        radius: Radius.elliptical(
            size.width * 0.03342674, size.height * 0.01548878),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path14.close();

    Paint paint14fill = Paint()..style = PaintingStyle.fill;
    paint14fill.color = Color(0xffcce9ff).withOpacity(1.0);
    canvas.drawPath(path14, paint14fill);

    Path path15 = Path();
    path15.moveTo(size.width * 0.5046037, size.height * 0.07076609);
    path15.cubicTo(
        size.width * 0.4819856,
        size.height * 0.08606937,
        size.width * 0.4203363,
        size.height * 0.09738453,
        size.width * 0.3656926,
        size.height * 0.09599332);
    path15.cubicTo(
        size.width * 0.3192554,
        size.height * 0.09478761,
        size.width * 0.2940352,
        size.height * 0.08449267,
        size.width * 0.3028423,
        size.height * 0.07178631);
    path15.cubicTo(
        size.width * 0.3342674,
        size.height * 0.09339640,
        size.width * 0.4629704,
        size.height * 0.08393619,
        size.width * 0.5130104,
        size.height * 0.05880171);
    path15.arcToPoint(Offset(size.width * 0.5046037, size.height * 0.07076609),
        radius: Radius.elliptical(
            size.width * 0.04003203, size.height * 0.01854943),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path15.close();

    Paint paint15fill = Paint()..style = PaintingStyle.fill;
    paint15fill.color = Color(0xffa1a1a1).withOpacity(1.0);
    canvas.drawPath(path15, paint15fill);

    Path path16 = Path();
    path16.moveTo(size.width * 0.9881906, size.height * 0.1715823);
    path16.lineTo(size.width * 0.9725781, size.height * 0.1721387);
    path16.lineTo(size.width * 0.6847478, size.height * 0.1830829);
    path16.cubicTo(
        size.width * 0.6837470,
        size.height * 0.1830829,
        size.width * 0.6831465,
        size.height * 0.1830829,
        size.width * 0.6829464,
        size.height * 0.1830829);
    path16.lineTo(size.width * 0.7457966, size.height * 0.1258579);
    path16.cubicTo(
        size.width * 0.8150520,
        size.height * 0.1391208,
        size.width * 0.9881906,
        size.height * 0.1715823,
        size.width * 0.9881906,
        size.height * 0.1715823);
    path16.close();

    Paint paint16fill = Paint()..style = PaintingStyle.fill;
    paint16fill.color = Color(0xffd1d5d6).withOpacity(1.0);
    canvas.drawPath(path16, paint16fill);

    Path path17 = Path();
    path17.moveTo(size.width * 0.8200560, size.height * 0.05833797);
    path17.lineTo(size.width * 0.6829464, size.height * 0.1831757);
    path17.lineTo(size.width * 0.8316653, size.height * 0.05833797);
    path17.lineTo(size.width * 0.8200560, size.height * 0.05833797);
    path17.close();

    Paint paint17fill = Paint()..style = PaintingStyle.fill;
    paint17fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path17, paint17fill);

    Path path18 = Path();
    path18.moveTo(size.width * 0.8316653, size.height * 0.05833797);
    path18.cubicTo(
        size.width * 0.8316653,
        size.height * 0.05833797,
        size.width * 0.9957966,
        size.height * 0.1729735,
        size.width * 0.9881906,
        size.height * 0.1715823);
    path18.cubicTo(
        size.width * 0.9805845,
        size.height * 0.1701911,
        size.width * 0.8206565,
        size.height * 0.05796698,
        size.width * 0.8206565,
        size.height * 0.05796698);
    path18.close();

    Paint paint18fill = Paint()..style = PaintingStyle.fill;
    paint18fill.color = Color(0xffdcdbd7).withOpacity(1.0);
    canvas.drawPath(path18, paint18fill);

    Path path19 = Path();
    path19.moveTo(size.width * 0.6829464, size.height * 0.4199592);
    path19.lineTo(size.width * 0.6829464, size.height * 0.6437581);
    path19.lineTo(size.width * 0.6651321, size.height * 0.6427379);
    path19.cubicTo(
        size.width * 0.6267014,
        size.height * 0.6412539,
        size.width * 0.5904724,
        size.height * 0.6334632,
        size.width * 0.5522418,
        size.height * 0.6313300);
    path19.arcToPoint(Offset(size.width * 0.4485588, size.height * 0.6398627),
        radius:
            Radius.elliptical(size.width * 0.1801441, size.height * 0.08347245),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path19.cubicTo(
        size.width * 0.4107286,
        size.height * 0.6492302,
        size.width * 0.3803042,
        size.height * 0.6637915,
        size.width * 0.3402722,
        size.height * 0.6699128);
    path19.cubicTo(
        size.width * 0.2870296,
        size.height * 0.6781673,
        size.width * 0.2285829,
        size.height * 0.6690781,
        size.width * 0.1801441,
        size.height * 0.6567427);
    path19.arcToPoint(Offset(size.width * 0.08726982, size.height * 0.6381933),
        radius:
            Radius.elliptical(size.width * 0.2940352, size.height * 0.1362456),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path19.arcToPoint(Offset(0, size.height * 0.6456131),
        radius:
            Radius.elliptical(size.width * 0.1527222, size.height * 0.07076609),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path19.lineTo(0, size.height * 0.3895381);
    path19.arcToPoint(Offset(size.width * 0.1200961, size.height * 0.4219069),
        radius:
            Radius.elliptical(size.width * 0.1627302, size.height * 0.07540345),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path19.cubicTo(
        size.width * 0.1373098,
        size.height * 0.4335930,
        size.width * 0.1481185,
        size.height * 0.4484326,
        size.width * 0.1745396,
        size.height * 0.4554814);
    path19.arcToPoint(Offset(size.width * 0.2638110, size.height * 0.4534409),
        radius: Radius.elliptical(
            size.width * 0.09807846, size.height * 0.04544611),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path19.arcToPoint(Offset(size.width * 0.3470777, size.height * 0.4343350),
        radius:
            Radius.elliptical(size.width * 0.6309047, size.height * 0.2923391),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path19.cubicTo(
        size.width * 0.4003203,
        size.height * 0.4266370,
        size.width * 0.4311449,
        size.height * 0.4462066,
        size.width * 0.4823859,
        size.height * 0.4495455);
    path19.cubicTo(
        size.width * 0.5090072,
        size.height * 0.4514005,
        size.width * 0.5414331,
        size.height * 0.4489891,
        size.width * 0.5538431,
        size.height * 0.4378594);
    path19.cubicTo(
        size.width * 0.5586469,
        size.height * 0.4334075,
        size.width * 0.5594476,
        size.height * 0.4285847,
        size.width * 0.5644516,
        size.height * 0.4236691);
    path19.cubicTo(
        size.width * 0.5802642,
        size.height * 0.4095715,
        size.width * 0.6244996,
        size.height * 0.4111482,
        size.width * 0.6575260,
        size.height * 0.4162493);
    path19.cubicTo(
        size.width * 0.6653323,
        size.height * 0.4173623,
        size.width * 0.6739392,
        size.height * 0.4187535,
        size.width * 0.6829464,
        size.height * 0.4199592);
    path19.close();

    Paint paint19fill = Paint()..style = PaintingStyle.fill;
    paint19fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path19, paint19fill);

    Path path20 = Path();
    path20.moveTo(size.width * 0.1709367, size.height * 0.5482285);
    path20.lineTo(size.width * 0.1725380, size.height * 0.5472083);
    path20.lineTo(size.width * 0.1761409, size.height * 0.5447969);
    path20.lineTo(size.width * 0.1801441, size.height * 0.5422927);
    path20.arcToPoint(Offset(size.width * 0.1863491, size.height * 0.5383973),
        radius: Radius.elliptical(
            size.width * 0.09127302, size.height * 0.04229271),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path20.lineTo(size.width * 0.1925540, size.height * 0.5345947);
    path20.cubicTo(
        size.width * 0.2171737,
        size.height * 0.5191059,
        size.width * 0.2423939,
        size.height * 0.5031534,
        size.width * 0.2676141,
        size.height * 0.4870154);
    path20.cubicTo(
        size.width * 0.2726181,
        size.height * 0.4836765,
        size.width * 0.2776221,
        size.height * 0.4808013,
        size.width * 0.2848279,
        size.height * 0.4809868);
    path20.arcToPoint(Offset(size.width * 0.2994396, size.height * 0.4855314),
        radius: Radius.elliptical(
            size.width * 0.02181745, size.height * 0.01010944),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path20.arcToPoint(Offset(size.width * 0.2994396, size.height * 0.4919310),
        radius: Radius.elliptical(
            size.width * 0.01741393, size.height * 0.008069004),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path20.lineTo(size.width * 0.2962370, size.height * 0.4955481);
    path20.arcToPoint(Offset(size.width * 0.2962370, size.height * 0.4961974),
        radius: Radius.elliptical(
            size.width * 0.001601281, size.height * 0.0007419774),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path20.cubicTo(
        size.width * 0.2896317,
        size.height * 0.5037099,
        size.width * 0.2832266,
        size.height * 0.5113152,
        size.width * 0.2762210,
        size.height * 0.5187349);
    path20.cubicTo(
        size.width * 0.2692154,
        size.height * 0.5261547,
        size.width * 0.2632106,
        size.height * 0.5336672,
        size.width * 0.2562050,
        size.height * 0.5409015);
    path20.cubicTo(
        size.width * 0.2540032,
        size.height * 0.5434984,
        size.width * 0.2518014,
        size.height * 0.5460026,
        size.width * 0.2495997,
        size.height * 0.5483213);
    path20.cubicTo(
        size.width * 0.2473979,
        size.height * 0.5506400,
        size.width * 0.2451962,
        size.height * 0.5533296,
        size.width * 0.2431946,
        size.height * 0.5559265);
    path20.arcToPoint(Offset(size.width * 0.2431946, size.height * 0.5572250),
        radius: Radius.elliptical(
            size.width * 0.002401922, size.height * 0.001112966),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path20.arcToPoint(Offset(size.width * 0.2481986, size.height * 0.5585235),
        radius: Radius.elliptical(
            size.width * 0.01261009, size.height * 0.005843072),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path20.arcToPoint(Offset(size.width * 0.2510008, size.height * 0.5585235),
        radius: Radius.elliptical(
            size.width * 0.002401922, size.height * 0.001112966),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path20.cubicTo(
        size.width * 0.2522018,
        size.height * 0.5575032,
        size.width * 0.2536029,
        size.height * 0.5566685,
        size.width * 0.2548038,
        size.height * 0.5557410);
    path20.arcToPoint(Offset(size.width * 0.2582066, size.height * 0.5531441),
        radius: Radius.elliptical(
            size.width * 0.05224179, size.height * 0.02420701),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path20.cubicTo(
        size.width * 0.2634107,
        size.height * 0.5492487,
        size.width * 0.2690152,
        size.height * 0.5452606,
        size.width * 0.2750200,
        size.height * 0.5415507);
    path20.cubicTo(
        size.width * 0.2924339,
        size.height * 0.5304211,
        size.width * 0.3114492,
        size.height * 0.5190132,
        size.width * 0.3314652,
        size.height * 0.5071415);
    path20.arcToPoint(Offset(size.width * 0.3548839, size.height * 0.4983306),
        radius: Radius.elliptical(
            size.width * 0.07005604, size.height * 0.03246151),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path20.arcToPoint(Offset(size.width * 0.3672938, size.height * 0.4970321),
        radius: Radius.elliptical(
            size.width * 0.02782226, size.height * 0.01289186),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path20.lineTo(size.width * 0.3712970, size.height * 0.4970321);
    path20.lineTo(size.width * 0.3732986, size.height * 0.4970321);
    path20.arcToPoint(Offset(size.width * 0.3751001, size.height * 0.5063068),
        radius: Radius.elliptical(
            size.width * 0.02421938, size.height * 0.01122241),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path20.cubicTo(
        size.width * 0.3684948,
        size.height * 0.5148395,
        size.width * 0.3616894,
        size.height * 0.5230940,
        size.width * 0.3550841,
        size.height * 0.5311630);
    path20.cubicTo(
        size.width * 0.3448759,
        size.height * 0.5432202,
        size.width * 0.3350681,
        size.height * 0.5553701,
        size.width * 0.3254604,
        size.height * 0.5682619);
    path20.arcToPoint(Offset(size.width * 0.3086469, size.height * 0.6037841),
        radius:
            Radius.elliptical(size.width * 0.5350280, size.height * 0.2479132),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path20.lineTo(size.width * 0.3086469, size.height * 0.6061028);
    path20.cubicTo(
        size.width * 0.3086469,
        size.height * 0.6069375,
        size.width * 0.3086469,
        size.height * 0.6077722,
        size.width * 0.3076461,
        size.height * 0.6085142);
    path20.arcToPoint(Offset(size.width * 0.3076461, size.height * 0.6177889),
        radius: Radius.elliptical(
            size.width * 0.04623699, size.height * 0.02142460),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path20.arcToPoint(Offset(size.width * 0.3234588, size.height * 0.6250232),
        radius: Radius.elliptical(
            size.width * 0.02542034, size.height * 0.01177889),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path20.arcToPoint(Offset(size.width * 0.3262610, size.height * 0.6286403),
        radius: Radius.elliptical(
            size.width * 0.01281025, size.height * 0.005935819),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path20.arcToPoint(Offset(size.width * 0.3154524, size.height * 0.6312372),
        radius: Radius.elliptical(
            size.width * 0.01481185, size.height * 0.006863291),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path20.lineTo(size.width * 0.3134508, size.height * 0.6312372);
    path20.arcToPoint(Offset(size.width * 0.2880304, size.height * 0.6257652),
        radius: Radius.elliptical(
            size.width * 0.03763010, size.height * 0.01743647),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path20.arcToPoint(Offset(size.width * 0.2754203, size.height * 0.6121313),
        radius: Radius.elliptical(
            size.width * 0.04003203, size.height * 0.01854943),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path20.arcToPoint(Offset(size.width * 0.2844275, size.height * 0.5750325),
        radius:
            Radius.elliptical(size.width * 0.3202562, size.height * 0.1483955),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path20.cubicTo(
        size.width * 0.2904323,
        size.height * 0.5647375,
        size.width * 0.2984388,
        size.height * 0.5548136,
        size.width * 0.3062450,
        size.height * 0.5447041);
    path20.cubicTo(
        size.width * 0.3100480,
        size.height * 0.5403450,
        size.width * 0.3134508,
        size.height * 0.5360786,
        size.width * 0.3168535,
        size.height * 0.5316268);
    path20.cubicTo(
        size.width * 0.3168535,
        size.height * 0.5310703,
        size.width * 0.3168535,
        size.height * 0.5306066,
        size.width * 0.3158527,
        size.height * 0.5305138);
    path20.cubicTo(
        size.width * 0.3148519,
        size.height * 0.5304211,
        size.width * 0.3158527,
        size.height * 0.5305138,
        size.width * 0.3146517,
        size.height * 0.5305138);
    path20.arcToPoint(Offset(size.width * 0.3130504, size.height * 0.5305138),
        radius: Radius.elliptical(
            size.width * 0.002201761, size.height * 0.001020219),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path20.arcToPoint(Offset(size.width * 0.2329864, size.height * 0.5972918),
        radius:
            Radius.elliptical(size.width * 0.4109287, size.height * 0.1904099),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path20.arcToPoint(Offset(size.width * 0.2295837, size.height * 0.5999815),
        radius: Radius.elliptical(
            size.width * 0.02101681, size.height * 0.009738453),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path20.cubicTo(
        size.width * 0.2279824,
        size.height * 0.6008162,
        size.width * 0.2265813,
        size.height * 0.6017436,
        size.width * 0.2249800,
        size.height * 0.6026711);
    path20.lineTo(size.width * 0.2233787, size.height * 0.6035058);
    path20.lineTo(size.width * 0.2217774, size.height * 0.6044333);
    path20.lineTo(size.width * 0.2201761, size.height * 0.6028566);
    path20.lineTo(size.width * 0.2167734, size.height * 0.6015582);
    path20.cubicTo(
        size.width * 0.2105685,
        size.height * 0.5991467,
        size.width * 0.2047638,
        size.height * 0.5971063,
        size.width * 0.2037630,
        size.height * 0.5948804);
    path20.arcToPoint(Offset(size.width * 0.2061649, size.height * 0.5670562),
        radius:
            Radius.elliptical(size.width * 0.1761409, size.height * 0.08161751),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path20.cubicTo(
        size.width * 0.2107686,
        size.height * 0.5587090,
        size.width * 0.2161729,
        size.height * 0.5502690,
        size.width * 0.2219776,
        size.height * 0.5419217);
    path20.cubicTo(
        size.width * 0.2267814,
        size.height * 0.5356149,
        size.width * 0.2307846,
        size.height * 0.5293081,
        size.width * 0.2345877,
        size.height * 0.5227231);
    path20.cubicTo(
        size.width * 0.2345877,
        size.height * 0.5217028,
        size.width * 0.2319856,
        size.height * 0.5207754,
        size.width * 0.2307846,
        size.height * 0.5217028);
    path20.arcToPoint(Offset(size.width * 0.2279824, size.height * 0.5231868),
        radius: Radius.elliptical(
            size.width * 0.02281825, size.height * 0.01057318),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path20.cubicTo(
        size.width * 0.2279824,
        size.height * 0.5237433,
        size.width * 0.2261809,
        size.height * 0.5242998,
        size.width * 0.2251801,
        size.height * 0.5247635);
    path20.cubicTo(
        size.width * 0.2089672,
        size.height * 0.5340382,
        size.width * 0.1927542,
        size.height * 0.5438694,
        size.width * 0.1783427,
        size.height * 0.5539789);
    path20.arcToPoint(Offset(size.width * 0.1423139, size.height * 0.5868114),
        radius:
            Radius.elliptical(size.width * 0.2848279, size.height * 0.1319792),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path20.lineTo(size.width * 0.1401121, size.height * 0.5885735);
    path20.arcToPoint(Offset(size.width * 0.1401121, size.height * 0.5901503),
        radius: Radius.elliptical(
            size.width * 0.01721377, size.height * 0.007976257),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path20.cubicTo(
        size.width * 0.1387110,
        size.height * 0.5940456,
        size.width * 0.1373098,
        size.height * 0.5962716,
        size.width * 0.1303042,
        size.height * 0.5957151);
    path20.arcToPoint(Offset(size.width * 0.1253002, size.height * 0.5950659),
        radius: Radius.elliptical(
            size.width * 0.04003203, size.height * 0.01854943),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path20.arcToPoint(Offset(size.width * 0.1076861, size.height * 0.5803191),
        radius: Radius.elliptical(
            size.width * 0.02622098, size.height * 0.01214988),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path20.cubicTo(
        size.width * 0.1160929,
        size.height * 0.5642738,
        size.width * 0.1244996,
        size.height * 0.5503617,
        size.width * 0.1333066,
        size.height * 0.5370989);
    path20.cubicTo(
        size.width * 0.1421137,
        size.height * 0.5238360,
        size.width * 0.1495196,
        size.height * 0.5126136,
        size.width * 0.1591273,
        size.height * 0.5000000);
    path20.arcToPoint(Offset(size.width * 0.1591273, size.height * 0.4988870),
        radius: Radius.elliptical(
            size.width * 0.003002402, size.height * 0.001391208),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path20.arcToPoint(Offset(size.width * 0.1563251, size.height * 0.4988870),
        radius: Radius.elliptical(
            size.width * 0.002201761, size.height * 0.001020219),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path20.cubicTo(
        size.width * 0.1509207,
        size.height * 0.5003710,
        size.width * 0.1455164,
        size.height * 0.5021332,
        size.width * 0.1395116,
        size.height * 0.5040809);
    path20.arcToPoint(Offset(size.width * 0.1034828, size.height * 0.5235578),
        radius:
            Radius.elliptical(size.width * 0.1086869, size.height * 0.05036171),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path20.lineTo(size.width * 0.1034828, size.height * 0.5235578);
    path20.cubicTo(
        size.width * 0.1034828,
        size.height * 0.5235578,
        size.width * 0.1034828,
        size.height * 0.5235578,
        size.width * 0.1034828,
        size.height * 0.5241143);
    path20.lineTo(size.width * 0.1034828, size.height * 0.5241143);
    path20.arcToPoint(Offset(size.width * 0.1054844, size.height * 0.5320905),
        radius: Radius.elliptical(
            size.width * 0.01421137, size.height * 0.006585049),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path20.arcToPoint(Offset(size.width * 0.1120897, size.height * 0.5335745),
        radius: Radius.elliptical(
            size.width * 0.01140913, size.height * 0.005286589),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path20.arcToPoint(Offset(size.width * 0.1142914, size.height * 0.5335745),
        radius: Radius.elliptical(
            size.width * 0.004403523, size.height * 0.002040438),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path20.arcToPoint(Offset(size.width * 0.1040833, size.height * 0.5345019),
        radius: Radius.elliptical(
            size.width * 0.01741393, size.height * 0.008069004),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path20.lineTo(size.width * 0.1040833, size.height * 0.5345019);
    path20.arcToPoint(Offset(size.width * 0.08746998, size.height * 0.5263402),
        radius: Radius.elliptical(
            size.width * 0.02361890, size.height * 0.01094417),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path20.arcToPoint(Offset(size.width * 0.1200961, size.height * 0.4915600),
        radius: Radius.elliptical(
            size.width * 0.07706165, size.height * 0.03570766),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path20.arcToPoint(Offset(size.width * 0.1619295, size.height * 0.4822853),
        radius:
            Radius.elliptical(size.width * 0.1353082, size.height * 0.06269709),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path20.cubicTo(
        size.width * 0.1679343,
        size.height * 0.4814506,
        size.width * 0.1733387,
        size.height * 0.4808013,
        size.width * 0.1793435,
        size.height * 0.4801521);
    path20.lineTo(size.width * 0.1801441, size.height * 0.4801521);
    path20.lineTo(size.width * 0.1801441, size.height * 0.4801521);
    path20.lineTo(size.width * 0.1801441, size.height * 0.4801521);
    path20.cubicTo(
        size.width * 0.1801441,
        size.height * 0.4801521,
        size.width * 0.1801441,
        size.height * 0.4801521,
        size.width * 0.1813451,
        size.height * 0.4801521);
    path20.cubicTo(
        size.width * 0.1825460,
        size.height * 0.4801521,
        size.width * 0.1813451,
        size.height * 0.4801521,
        size.width * 0.1825460,
        size.height * 0.4801521);
    path20.arcToPoint(Offset(size.width * 0.1881505, size.height * 0.4801521),
        radius: Radius.elliptical(
            size.width * 0.009607686, size.height * 0.004451864),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path20.arcToPoint(Offset(size.width * 0.2005604, size.height * 0.4824708),
        radius: Radius.elliptical(
            size.width * 0.02121697, size.height * 0.009831200),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path20.arcToPoint(Offset(size.width * 0.2035629, size.height * 0.4933222),
        radius: Radius.elliptical(
            size.width * 0.03102482, size.height * 0.01437581),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path20.cubicTo(
        size.width * 0.1949560,
        size.height * 0.5061213,
        size.width * 0.1853483,
        size.height * 0.5185494,
        size.width * 0.1757406,
        size.height * 0.5304211);
    path20.cubicTo(
        size.width * 0.1737390,
        size.height * 0.5327398,
        size.width * 0.1719376,
        size.height * 0.5350584,
        size.width * 0.1701361,
        size.height * 0.5374699);
    path20.cubicTo(
        size.width * 0.1683347,
        size.height * 0.5398813,
        size.width * 0.1663331,
        size.height * 0.5422000,
        size.width * 0.1645316,
        size.height * 0.5446114);
    path20.arcToPoint(Offset(size.width * 0.1645316, size.height * 0.5495270),
        radius: Radius.elliptical(
            size.width * 0.01240993, size.height * 0.005750325),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path20.cubicTo(
        size.width * 0.1655324,
        size.height * 0.5495270,
        size.width * 0.1661329,
        size.height * 0.5501762,
        size.width * 0.1663331,
        size.height * 0.5501762);
    path20.arcToPoint(Offset(size.width * 0.1685348, size.height * 0.5497125),
        radius: Radius.elliptical(
            size.width * 0.001801441, size.height * 0.0008347245),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path20.arcToPoint(Offset(size.width * 0.1709367, size.height * 0.5482285),
        radius: Radius.elliptical(
            size.width * 0.01521217, size.height * 0.007048785),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path20.close();

    Paint paint20fill = Paint()..style = PaintingStyle.fill;
    paint20fill.color = Color(0xff6fbbf2).withOpacity(1.0);
    canvas.drawPath(path20, paint20fill);

    Path path21 = Path();
    path21.moveTo(size.width * 0.3362690, size.height * 0.5900575);
    path21.arcToPoint(Offset(size.width * 0.3420737, size.height * 0.5782786),
        radius:
            Radius.elliptical(size.width * 0.1242994, size.height * 0.05759599),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path21.arcToPoint(Offset(size.width * 0.3430745, size.height * 0.5767019),
        radius: Radius.elliptical(
            size.width * 0.01421137, size.height * 0.006585049),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path21.arcToPoint(Offset(size.width * 0.3440753, size.height * 0.5759599),
        radius: Radius.elliptical(
            size.width * 0.003602882, size.height * 0.001669449),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path21.arcToPoint(Offset(size.width * 0.3440753, size.height * 0.5759599),
        radius: Radius.elliptical(
            size.width * 0.001200961, size.height * 0.0005564830),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path21.cubicTo(
        size.width * 0.3440753,
        size.height * 0.5759599,
        size.width * 0.3440753,
        size.height * 0.5759599,
        size.width * 0.3440753,
        size.height * 0.5759599);
    path21.cubicTo(
        size.width * 0.3464772,
        size.height * 0.5724355,
        size.width * 0.3490793,
        size.height * 0.5687257,
        size.width * 0.3524820,
        size.height * 0.5648303);
    path21.cubicTo(
        size.width * 0.3578863,
        size.height * 0.5588017,
        size.width * 0.3620897,
        size.height * 0.5542571,
        size.width * 0.3658927,
        size.height * 0.5509182);
    path21.cubicTo(
        size.width * 0.3696958,
        size.height * 0.5475793,
        size.width * 0.3724980,
        size.height * 0.5454461,
        size.width * 0.3740993,
        size.height * 0.5442404);
    path21.lineTo(size.width * 0.3775020, size.height * 0.5442404);
    path21.arcToPoint(Offset(size.width * 0.3905124, size.height * 0.5473938),
        radius: Radius.elliptical(
            size.width * 0.02101681, size.height * 0.009738453),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path21.arcToPoint(Offset(size.width * 0.3959167, size.height * 0.5519384),
        radius: Radius.elliptical(
            size.width * 0.02842274, size.height * 0.01317010),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path21.arcToPoint(Offset(size.width * 0.3959167, size.height * 0.5519384),
        radius: Radius.elliptical(
            size.width * 0.002602082, size.height * 0.001205713),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path21.lineTo(size.width * 0.3943155, size.height * 0.5531441);
    path21.cubicTo(
        size.width * 0.3865092,
        size.height * 0.5612131,
        size.width * 0.3781025,
        size.height * 0.5702096,
        size.width * 0.3720977,
        size.height * 0.5777221);
    path21.arcToPoint(Offset(size.width * 0.3710969, size.height * 0.5787423),
        radius: Radius.elliptical(
            size.width * 0.005604484, size.height * 0.002596921),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path21.arcToPoint(Offset(size.width * 0.3710969, size.height * 0.5795771),
        radius: Radius.elliptical(
            size.width * 0.006405124, size.height * 0.002967909),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path21.arcToPoint(Offset(size.width * 0.3658927, size.height * 0.5925617),
        radius: Radius.elliptical(
            size.width * 0.06985588, size.height * 0.03236876),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path21.cubicTo(
        size.width * 0.3674940,
        size.height * 0.5944166,
        size.width * 0.3720977,
        size.height * 0.5957151,
        size.width * 0.3803042,
        size.height * 0.5937674);
    path21.arcToPoint(Offset(size.width * 0.3951161, size.height * 0.5883881),
        radius: Radius.elliptical(
            size.width * 0.05284227, size.height * 0.02448525),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path21.arcToPoint(Offset(size.width * 0.4169335, size.height * 0.5760527),
        radius:
            Radius.elliptical(size.width * 0.2295837, size.height * 0.1063810),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path21.cubicTo(
        size.width * 0.4169335,
        size.height * 0.5760527,
        size.width * 0.4169335,
        size.height * 0.5760527,
        size.width * 0.4169335,
        size.height * 0.5760527);
    path21.arcToPoint(Offset(size.width * 0.4191353, size.height * 0.5747542),
        radius: Radius.elliptical(
            size.width * 0.02722178, size.height * 0.01261362),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path21.arcToPoint(Offset(size.width * 0.4207366, size.height * 0.5735485),
        radius: Radius.elliptical(
            size.width * 0.01020817, size.height * 0.004730106),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path21.lineTo(size.width * 0.4235388, size.height * 0.5717863);
    path21.lineTo(size.width * 0.4371497, size.height * 0.5717863);
    path21.lineTo(size.width * 0.4343475, size.height * 0.5736413);
    path21.cubicTo(
        size.width * 0.4315452,
        size.height * 0.5754962,
        size.width * 0.4285428,
        size.height * 0.5773511,
        size.width * 0.4257406,
        size.height * 0.5792988);
    path21.arcToPoint(Offset(size.width * 0.4237390, size.height * 0.5805045),
        radius: Radius.elliptical(
            size.width * 0.01281025, size.height * 0.005935819),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path21.lineTo(size.width * 0.4237390, size.height * 0.5805045);
    path21.lineTo(size.width * 0.4215372, size.height * 0.5818030);
    path21.lineTo(size.width * 0.4215372, size.height * 0.5818030);
    path21.cubicTo(
        size.width * 0.4215372,
        size.height * 0.5818030,
        size.width * 0.4215372,
        size.height * 0.5818030,
        size.width * 0.4205364,
        size.height * 0.5823595);
    path21.cubicTo(
        size.width * 0.4195356,
        size.height * 0.5829160,
        size.width * 0.4205364,
        size.height * 0.5829160,
        size.width * 0.4193355,
        size.height * 0.5832870);
    path21.lineTo(size.width * 0.4193355, size.height * 0.5832870);
    path21.lineTo(size.width * 0.4165332, size.height * 0.5848637);
    path21.cubicTo(
        size.width * 0.4165332,
        size.height * 0.5848637,
        size.width * 0.4165332,
        size.height * 0.5848637,
        size.width * 0.4165332,
        size.height * 0.5848637);
    path21.lineTo(size.width * 0.4141313, size.height * 0.5863476);
    path21.lineTo(size.width * 0.4141313, size.height * 0.5863476);
    path21.cubicTo(
        size.width * 0.4141313,
        size.height * 0.5863476,
        size.width * 0.4141313,
        size.height * 0.5863476,
        size.width * 0.4141313,
        size.height * 0.5863476);
    path21.lineTo(size.width * 0.4127302, size.height * 0.5869968);
    path21.arcToPoint(Offset(size.width * 0.3909127, size.height * 0.5972918),
        radius:
            Radius.elliptical(size.width * 0.1521217, size.height * 0.07048785),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path21.arcToPoint(Offset(size.width * 0.3652922, size.height * 0.6036913),
        radius: Radius.elliptical(
            size.width * 0.05764612, size.height * 0.02671119),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path21.arcToPoint(Offset(size.width * 0.3402722, size.height * 0.6005379),
        radius: Radius.elliptical(
            size.width * 0.02662130, size.height * 0.01233537),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path21.arcToPoint(Offset(size.width * 0.3362690, size.height * 0.5900575),
        radius: Radius.elliptical(
            size.width * 0.02842274, size.height * 0.01317010),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path21.close();
    path21.moveTo(size.width * 0.3909127, size.height * 0.5275459);
    path21.arcToPoint(Offset(size.width * 0.4109287, size.height * 0.5203116),
        radius: Radius.elliptical(
            size.width * 0.02001601, size.height * 0.009274717),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path21.arcToPoint(Offset(size.width * 0.4223379, size.height * 0.5295863),
        radius: Radius.elliptical(
            size.width * 0.01461169, size.height * 0.006770543),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path21.arcToPoint(Offset(size.width * 0.4013211, size.height * 0.5369134),
        radius: Radius.elliptical(
            size.width * 0.02101681, size.height * 0.009738453),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path21.arcToPoint(Offset(size.width * 0.3909127, size.height * 0.5275459),
        radius: Radius.elliptical(
            size.width * 0.01441153, size.height * 0.006677796),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path21.close();

    Paint paint21fill = Paint()..style = PaintingStyle.fill;
    paint21fill.color = Color(0xff6fbbf2).withOpacity(1.0);
    canvas.drawPath(path21, paint21fill);

    Path path22 = Path();
    path22.moveTo(size.width * 0.4219376, size.height * 0.6014654);
    path22.arcToPoint(Offset(size.width * 0.4163331, size.height * 0.5911705),
        radius: Radius.elliptical(
            size.width * 0.02982386, size.height * 0.01381933),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path22.arcToPoint(Offset(size.width * 0.4203363, size.height * 0.5787423),
        radius:
            Radius.elliptical(size.width * 0.1226982, size.height * 0.05685402),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path22.arcToPoint(Offset(size.width * 0.4203363, size.height * 0.5771656),
        radius: Radius.elliptical(
            size.width * 0.01020817, size.height * 0.004730106),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path22.arcToPoint(Offset(size.width * 0.4213371, size.height * 0.5762382),
        radius: Radius.elliptical(
            size.width * 0.009407526, size.height * 0.004359117),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path22.cubicTo(
        size.width * 0.4213371,
        size.height * 0.5762382,
        size.width * 0.4213371,
        size.height * 0.5762382,
        size.width * 0.4213371,
        size.height * 0.5762382);
    path22.lineTo(size.width * 0.4213371, size.height * 0.5762382);
    path22.cubicTo(
        size.width * 0.4251401,
        size.height * 0.5694676,
        size.width * 0.4307446,
        size.height * 0.5615841,
        size.width * 0.4369496,
        size.height * 0.5528659);
    path22.cubicTo(
        size.width * 0.4379504,
        size.height * 0.5518457,
        size.width * 0.4381505,
        size.height * 0.5512892,
        size.width * 0.4385508,
        size.height * 0.5510109);
    path22.cubicTo(
        size.width * 0.4389512,
        size.height * 0.5507327,
        size.width * 0.4385508,
        size.height * 0.5503617,
        size.width * 0.4385508,
        size.height * 0.5502690);
    path22.lineTo(size.width * 0.4385508, size.height * 0.5502690);
    path22.cubicTo(
        size.width * 0.4489592,
        size.height * 0.5365424,
        size.width * 0.4609688,
        size.height * 0.5217956,
        size.width * 0.4719776,
        size.height * 0.5102022);
    path22.cubicTo(
        size.width * 0.4771817,
        size.height * 0.5043591,
        size.width * 0.4821857,
        size.height * 0.4994435,
        size.width * 0.4867894,
        size.height * 0.4953626);
    path22.cubicTo(
        size.width * 0.4957966,
        size.height * 0.4872009,
        size.width * 0.5000000,
        size.height * 0.4860879,
        size.width * 0.5086069,
        size.height * 0.4848822);
    path22.arcToPoint(Offset(size.width * 0.5286229, size.height * 0.4848822),
        radius: Radius.elliptical(
            size.width * 0.03002402, size.height * 0.01391208),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path22.arcToPoint(Offset(size.width * 0.5296237, size.height * 0.4869226),
        radius: Radius.elliptical(
            size.width * 0.002802242, size.height * 0.001298460),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path22.cubicTo(
        size.width * 0.5268215,
        size.height * 0.4888703,
        size.width * 0.5224179,
        size.height * 0.4923947,
        size.width * 0.5190152,
        size.height * 0.4954554);
    path22.cubicTo(
        size.width * 0.5156125,
        size.height * 0.4985160,
        size.width * 0.5148118,
        size.height * 0.4992580,
        size.width * 0.5126101,
        size.height * 0.5012057);
    path22.cubicTo(
        size.width * 0.5038030,
        size.height * 0.5104804,
        size.width * 0.4957966,
        size.height * 0.5197551,
        size.width * 0.4857886,
        size.height * 0.5316268);
    path22.cubicTo(
        size.width * 0.4807846,
        size.height * 0.5374699,
        size.width * 0.4757806,
        size.height * 0.5432202,
        size.width * 0.4711769,
        size.height * 0.5493415);
    path22.lineTo(size.width * 0.4721777, size.height * 0.5493415);
    path22.cubicTo(
        size.width * 0.4661729,
        size.height * 0.5558338,
        size.width * 0.4609688,
        size.height * 0.5623261,
        size.width * 0.4561649,
        size.height * 0.5692821);
    path22.lineTo(size.width * 0.4561649, size.height * 0.5692821);
    path22.arcToPoint(Offset(size.width * 0.4529624, size.height * 0.5728993),
        radius: Radius.elliptical(
            size.width * 0.04663731, size.height * 0.02161009),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path22.cubicTo(
        size.width * 0.4529624,
        size.height * 0.5741050,
        size.width * 0.4515612,
        size.height * 0.5753107,
        size.width * 0.4507606,
        size.height * 0.5763309);
    path22.cubicTo(
        size.width * 0.4499600,
        size.height * 0.5773511,
        size.width * 0.4493595,
        size.height * 0.5785569,
        size.width * 0.4483587,
        size.height * 0.5795771);
    path22.arcToPoint(Offset(size.width * 0.4449560, size.height * 0.5930254),
        radius: Radius.elliptical(
            size.width * 0.06985588, size.height * 0.03236876),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path22.cubicTo(
        size.width * 0.4471577,
        size.height * 0.5948804,
        size.width * 0.4517614,
        size.height * 0.5959006,
        size.width * 0.4595677,
        size.height * 0.5930254);
    path22.arcToPoint(Offset(size.width * 0.4741793, size.height * 0.5864404),
        radius: Radius.elliptical(
            size.width * 0.06625300, size.height * 0.03069931),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path22.arcToPoint(Offset(size.width * 0.4941954, size.height * 0.5729920),
        radius:
            Radius.elliptical(size.width * 0.1959568, size.height * 0.09079948),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path22.arcToPoint(Offset(size.width * 0.4941954, size.height * 0.5729920),
        radius: Radius.elliptical(
            size.width * 0.001200961, size.height * 0.0005564830),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path22.cubicTo(
        size.width * 0.4941954,
        size.height * 0.5729920,
        size.width * 0.4941954,
        size.height * 0.5729920,
        size.width * 0.4951962,
        size.height * 0.5722500);
    path22.arcToPoint(Offset(size.width * 0.5004003, size.height * 0.5694676),
        radius: Radius.elliptical(
            size.width * 0.01661329, size.height * 0.007698015),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path22.cubicTo(
        size.width * 0.5004003,
        size.height * 0.5694676,
        size.width * 0.5014011,
        size.height * 0.5688184,
        size.width * 0.5016013,
        size.height * 0.5685402);
    path22.arcToPoint(Offset(size.width * 0.5026021, size.height * 0.5675199),
        radius: Radius.elliptical(
            size.width * 0.02341873, size.height * 0.01085142),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path22.lineTo(size.width * 0.5168135, size.height * 0.5667780);
    path22.lineTo(size.width * 0.5140112, size.height * 0.5688184);
    path22.lineTo(size.width * 0.5060048, size.height * 0.5749397);
    path22.arcToPoint(Offset(size.width * 0.5044035, size.height * 0.5763309),
        radius: Radius.elliptical(
            size.width * 0.02401922, size.height * 0.01112966),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path22.cubicTo(
        size.width * 0.5044035,
        size.height * 0.5763309,
        size.width * 0.5044035,
        size.height * 0.5763309,
        size.width * 0.5044035,
        size.height * 0.5763309);
    path22.arcToPoint(Offset(size.width * 0.5024019, size.height * 0.5779076),
        radius: Radius.elliptical(
            size.width * 0.01641313, size.height * 0.007605268),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path22.lineTo(size.width * 0.5024019, size.height * 0.5779076);
    path22.lineTo(size.width * 0.5002002, size.height * 0.5795771);
    path22.lineTo(size.width * 0.5002002, size.height * 0.5795771);
    path22.cubicTo(
        size.width * 0.5002002,
        size.height * 0.5795771,
        size.width * 0.5002002,
        size.height * 0.5795771,
        size.width * 0.5002002,
        size.height * 0.5795771);
    path22.arcToPoint(Offset(size.width * 0.4977982, size.height * 0.5813393),
        radius: Radius.elliptical(
            size.width * 0.01561249, size.height * 0.007234279),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path22.lineTo(size.width * 0.4977982, size.height * 0.5813393);
    path22.arcToPoint(Offset(size.width * 0.4965973, size.height * 0.5820812),
        radius: Radius.elliptical(
            size.width * 0.003402722, size.height * 0.001576702),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path22.cubicTo(
        size.width * 0.4965973,
        size.height * 0.5820812,
        size.width * 0.4965973,
        size.height * 0.5827305,
        size.width * 0.4953963,
        size.height * 0.5830087);
    path22.arcToPoint(Offset(size.width * 0.4953963, size.height * 0.5830087),
        radius: Radius.elliptical(
            size.width * 0.001801441, size.height * 0.0008347245),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path22.lineTo(size.width * 0.4953963, size.height * 0.5830087);
    path22.cubicTo(
        size.width * 0.4953963,
        size.height * 0.5830087,
        size.width * 0.4953963,
        size.height * 0.5830087,
        size.width * 0.4953963,
        size.height * 0.5834725);
    path22.arcToPoint(Offset(size.width * 0.4743795, size.height * 0.5950659),
        radius:
            Radius.elliptical(size.width * 0.2175741, size.height * 0.1008162),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path22.arcToPoint(Offset(size.width * 0.4491593, size.height * 0.6028566),
        radius: Radius.elliptical(
            size.width * 0.06565252, size.height * 0.03042107),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path22.arcToPoint(Offset(size.width * 0.4255404, size.height * 0.5997032),
        radius: Radius.elliptical(
            size.width * 0.02381906, size.height * 0.01103691),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path22.close();

    Paint paint22fill = Paint()..style = PaintingStyle.fill;
    paint22fill.color = Color(0xff6fbbf2).withOpacity(1.0);
    canvas.drawPath(path22, paint22fill);

    Path path23 = Path();
    path23.moveTo(size.width * 0.4733787, size.height * 0.5984047);
    path23.lineTo(size.width * 0.4733787, size.height * 0.5972918);
    path23.arcToPoint(Offset(size.width * 0.4733787, size.height * 0.5961788),
        radius: Radius.elliptical(
            size.width * 0.004603683, size.height * 0.002133185),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path23.cubicTo(
        size.width * 0.4779824,
        size.height * 0.5904285,
        size.width * 0.4825861,
        size.height * 0.5846782,
        size.width * 0.4873899,
        size.height * 0.5789278);
    path23.lineTo(size.width * 0.4873899, size.height * 0.5789278);
    path23.lineTo(size.width * 0.4903923, size.height * 0.5753107);
    path23.lineTo(size.width * 0.4951962, size.height * 0.5694676);
    path23.lineTo(size.width * 0.5042034, size.height * 0.5583380);
    path23.lineTo(size.width * 0.5538431, size.height * 0.4951771);
    path23.arcToPoint(Offset(size.width * 0.5686549, size.height * 0.4840475),
        radius:
            Radius.elliptical(size.width * 0.1090873, size.height * 0.05054721),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path23.arcToPoint(Offset(size.width * 0.5724580, size.height * 0.4822853),
        radius: Radius.elliptical(
            size.width * 0.01060849, size.height * 0.004915600),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path23.arcToPoint(Offset(size.width * 0.5946757, size.height * 0.4779262),
        radius: Radius.elliptical(
            size.width * 0.03763010, size.height * 0.01743647),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path23.arcToPoint(Offset(size.width * 0.6030825, size.height * 0.4784827),
        radius: Radius.elliptical(
            size.width * 0.01781425, size.height * 0.008254498),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path23.arcToPoint(Offset(size.width * 0.6040833, size.height * 0.4807086),
        radius: Radius.elliptical(
            size.width * 0.003202562, size.height * 0.001483955),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path23.arcToPoint(Offset(size.width * 0.5990793, size.height * 0.4843257),
        radius: Radius.elliptical(
            size.width * 0.04003203, size.height * 0.01854943),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path23.cubicTo(
        size.width * 0.5972778,
        size.height * 0.4860879,
        size.width * 0.5952762,
        size.height * 0.4876646,
        size.width * 0.5934748,
        size.height * 0.4892413);
    path23.cubicTo(
        size.width * 0.5916733,
        size.height * 0.4908180,
        size.width * 0.5890713,
        size.height * 0.4931367,
        size.width * 0.5870697,
        size.height * 0.4951771);
    path23.cubicTo(
        size.width * 0.5786629,
        size.height * 0.5044519,
        size.width * 0.5708567,
        size.height * 0.5137266,
        size.width * 0.5612490,
        size.height * 0.5251345);
    path23.cubicTo(
        size.width * 0.5566453,
        size.height * 0.5307921,
        size.width * 0.5516413,
        size.height * 0.5367279,
        size.width * 0.5470376,
        size.height * 0.5427564);
    path23.arcToPoint(Offset(size.width * 0.5470376, size.height * 0.5437767),
        radius: Radius.elliptical(
            size.width * 0.01321057, size.height * 0.006121313),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path23.lineTo(size.width * 0.5404323, size.height * 0.5513819);
    path23.arcToPoint(Offset(size.width * 0.5704564, size.height * 0.5383973),
        radius:
            Radius.elliptical(size.width * 0.1779424, size.height * 0.08245224),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path23.cubicTo(
        size.width * 0.5806645,
        size.height * 0.5336672,
        size.width * 0.5840673,
        size.height * 0.5340382,
        size.width * 0.5930745,
        size.height * 0.5383973);
    path23.cubicTo(
        size.width * 0.6062850,
        size.height * 0.5447969,
        size.width * 0.6060849,
        size.height * 0.5512892,
        size.width * 0.5930745,
        size.height * 0.5596364);
    path23.arcToPoint(Offset(size.width * 0.5454363, size.height * 0.5761454),
        radius:
            Radius.elliptical(size.width * 0.1094876, size.height * 0.05073270),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path23.cubicTo(
        size.width * 0.5454363,
        size.height * 0.5785569,
        size.width * 0.5472378,
        size.height * 0.5809683,
        size.width * 0.5482386,
        size.height * 0.5831942);
    path23.cubicTo(
        size.width * 0.5492394,
        size.height * 0.5854201,
        size.width * 0.5500400,
        size.height * 0.5878316,
        size.width * 0.5514412,
        size.height * 0.5901503);
    path23.cubicTo(
        size.width * 0.5528423,
        size.height * 0.5924689,
        size.width * 0.5562450,
        size.height * 0.5936746,
        size.width * 0.5616493,
        size.height * 0.5917270);
    path23.arcToPoint(Offset(size.width * 0.5844676, size.height * 0.5824522),
        radius:
            Radius.elliptical(size.width * 0.2467974, size.height * 0.1143573),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path23.lineTo(size.width * 0.5844676, size.height * 0.5824522);
    path23.arcToPoint(Offset(size.width * 0.5930745, size.height * 0.5780931),
        radius: Radius.elliptical(
            size.width * 0.09427542, size.height * 0.04368392),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path23.lineTo(size.width * 0.5980785, size.height * 0.5754035);
    path23.lineTo(size.width * 0.6020817, size.height * 0.5733630);
    path23.cubicTo(
        size.width * 0.6042834,
        size.height * 0.5718791,
        size.width * 0.6066853,
        size.height * 0.5703024,
        size.width * 0.6088871,
        size.height * 0.5685402);
    path23.cubicTo(
        size.width * 0.6110889,
        size.height * 0.5667780,
        size.width * 0.6138911,
        size.height * 0.5648303,
        size.width * 0.6166934,
        size.height * 0.5626971);
    path23.arcToPoint(Offset(size.width * 0.6166934, size.height * 0.5619551),
        radius: Radius.elliptical(
            size.width * 0.01180945, size.height * 0.005472083),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path23.arcToPoint(Offset(size.width * 0.6178943, size.height * 0.5611204),
        radius: Radius.elliptical(
            size.width * 0.005604484, size.height * 0.002596921),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path23.lineTo(size.width * 0.6192954, size.height * 0.5598219);
    path23.lineTo(size.width * 0.6212970, size.height * 0.5579670);
    path23.lineTo(size.width * 0.6353082, size.height * 0.5567613);
    path23.arcToPoint(Offset(size.width * 0.6327062, size.height * 0.5587090),
        radius: Radius.elliptical(
            size.width * 0.04783827, size.height * 0.02216657),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path23.cubicTo(
        size.width * 0.6301041,
        size.height * 0.5608421,
        size.width * 0.6275020,
        size.height * 0.5629753,
        size.width * 0.6246998,
        size.height * 0.5651085);
    path23.cubicTo(
        size.width * 0.6246998,
        size.height * 0.5651085,
        size.width * 0.6246998,
        size.height * 0.5655723,
        size.width * 0.6246998,
        size.height * 0.5657577);
    path23.arcToPoint(Offset(size.width * 0.6246998, size.height * 0.5666852),
        radius: Radius.elliptical(
            size.width * 0.02001601, size.height * 0.009274717),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path23.cubicTo(
        size.width * 0.6246998,
        size.height * 0.5666852,
        size.width * 0.6246998,
        size.height * 0.5666852,
        size.width * 0.6246998,
        size.height * 0.5666852);
    path23.arcToPoint(Offset(size.width * 0.6236990, size.height * 0.5675199),
        radius: Radius.elliptical(
            size.width * 0.007205765, size.height * 0.003338898),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path23.lineTo(size.width * 0.6236990, size.height * 0.5682619);
    path23.lineTo(size.width * 0.6236990, size.height * 0.5682619);
    path23.arcToPoint(Offset(size.width * 0.6216974, size.height * 0.5700241),
        radius: Radius.elliptical(
            size.width * 0.03082466, size.height * 0.01428306),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path23.lineTo(size.width * 0.6216974, size.height * 0.5700241);
    path23.cubicTo(
        size.width * 0.6216974,
        size.height * 0.5700241,
        size.width * 0.6216974,
        size.height * 0.5700241,
        size.width * 0.6216974,
        size.height * 0.5700241);
    path23.arcToPoint(Offset(size.width * 0.6192954, size.height * 0.5718791),
        radius: Radius.elliptical(
            size.width * 0.04243395, size.height * 0.01966240),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path23.lineTo(size.width * 0.6192954, size.height * 0.5718791);
    path23.arcToPoint(Offset(size.width * 0.6180945, size.height * 0.5727138),
        radius: Radius.elliptical(
            size.width * 0.004003203, size.height * 0.001854943),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path23.arcToPoint(Offset(size.width * 0.6168935, size.height * 0.5736413),
        radius: Radius.elliptical(
            size.width * 0.01060849, size.height * 0.004915600),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path23.lineTo(size.width * 0.6168935, size.height * 0.5736413);
    path23.arcToPoint(Offset(size.width * 0.6168935, size.height * 0.5736413),
        radius: Radius.elliptical(
            size.width * 0.001200961, size.height * 0.0005564830),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path23.lineTo(size.width * 0.6140913, size.height * 0.5755889);
    path23.cubicTo(
        size.width * 0.6106886,
        size.height * 0.5777221,
        size.width * 0.6038831,
        size.height * 0.5818030,
        size.width * 0.5954764,
        size.height * 0.5860694);
    path23.arcToPoint(Offset(size.width * 0.5682546, size.height * 0.5971063),
        radius:
            Radius.elliptical(size.width * 0.1401121, size.height * 0.06492302),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path23.arcToPoint(Offset(size.width * 0.5320256, size.height * 0.5915415),
        radius: Radius.elliptical(
            size.width * 0.02742194, size.height * 0.01270636),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path23.arcToPoint(Offset(size.width * 0.5234187, size.height * 0.5797626),
        radius:
            Radius.elliptical(size.width * 0.1265012, size.height * 0.05861621),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path23.cubicTo(
        size.width * 0.5214171,
        size.height * 0.5817103,
        size.width * 0.5196157,
        size.height * 0.5838434,
        size.width * 0.5174139,
        size.height * 0.5860694);
    path23.cubicTo(
        size.width * 0.5152122,
        size.height * 0.5882953,
        size.width * 0.5130104,
        size.height * 0.5907067,
        size.width * 0.5108086,
        size.height * 0.5927472);
    path23.lineTo(size.width * 0.5108086, size.height * 0.5927472);
    path23.cubicTo(
        size.width * 0.5108086,
        size.height * 0.5934891,
        size.width * 0.5092074,
        size.height * 0.5944166,
        size.width * 0.5082066,
        size.height * 0.5953441);
    path23.lineTo(size.width * 0.5082066, size.height * 0.5959006);
    path23.lineTo(size.width * 0.5050040, size.height * 0.5992395);
    path23.cubicTo(
        size.width * 0.5050040,
        size.height * 0.5992395,
        size.width * 0.5036029,
        size.height * 0.5992395,
        size.width * 0.5014011,
        size.height * 0.5997960);
    path23.arcToPoint(Offset(size.width * 0.4935949, size.height * 0.5997960),
        radius: Radius.elliptical(
            size.width * 0.02461970, size.height * 0.01140790),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path23.cubicTo(
        size.width * 0.4897918,
        size.height * 0.5997960,
        size.width * 0.4823859,
        size.height * 0.6004452,
        size.width * 0.4797838,
        size.height * 0.5980338);
    path23.lineTo(size.width * 0.4797838, size.height * 0.5980338);
    path23.arcToPoint(Offset(size.width * 0.4797838, size.height * 0.5966426),
        radius: Radius.elliptical(
            size.width * 0.02001601, size.height * 0.009274717),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path23.close();
    path23.moveTo(size.width * 0.5454363, size.height * 0.5591727);
    path23.arcToPoint(Offset(size.width * 0.5238191, size.height * 0.5721573),
        radius:
            Radius.elliptical(size.width * 0.1110889, size.height * 0.05147468),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path23.arcToPoint(Offset(size.width * 0.5572458, size.height * 0.5623261),
        radius: Radius.elliptical(
            size.width * 0.07806245, size.height * 0.03617140),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path23.arcToPoint(Offset(size.width * 0.5772618, size.height * 0.5474866),
        radius: Radius.elliptical(
            size.width * 0.06745396, size.height * 0.03125580),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path23.arcToPoint(Offset(size.width * 0.5454363, size.height * 0.5591727),
        radius:
            Radius.elliptical(size.width * 0.1783427, size.height * 0.08263773),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path23.close();

    Paint paint23fill = Paint()..style = PaintingStyle.fill;
    paint23fill.color = Color(0xff6fbbf2).withOpacity(1.0);
    canvas.drawPath(path23, paint23fill);

    Path path24 = Path();
    path24.moveTo(size.width * 0.9531625, size.height * 0.3404749);
    path24.arcToPoint(Offset(size.width * 0.9349480, size.height * 0.3332406),
        radius: Radius.elliptical(
            size.width * 0.02341873, size.height * 0.01085142),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path24.arcToPoint(Offset(size.width * 0.9149319, size.height * 0.3554999),
        radius: Radius.elliptical(
            size.width * 0.02622098, size.height * 0.01214988),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path24.arcToPoint(Offset(size.width * 0.9531625, size.height * 0.3404749),
        radius: Radius.elliptical(
            size.width * 0.02682146, size.height * 0.01242812),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path24.close();

    Paint paint24fill = Paint()..style = PaintingStyle.fill;
    paint24fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path24, paint24fill);

    Path path25 = Path();
    path25.moveTo(size.width * 0.8292634, size.height * 0.6543313);
    path25.arcToPoint(Offset(size.width * 0.8250600, size.height * 0.6513634),
        radius: Radius.elliptical(
            size.width * 0.02522018, size.height * 0.01168614),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path25.arcToPoint(Offset(size.width * 0.7728183, size.height * 0.6579484),
        radius: Radius.elliptical(
            size.width * 0.03122498, size.height * 0.01446856),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path25.arcToPoint(Offset(size.width * 0.7946357, size.height * 0.6735300),
        radius: Radius.elliptical(
            size.width * 0.02922338, size.height * 0.01354109),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path25.arcToPoint(Offset(size.width * 0.8292634, size.height * 0.6543313),
        radius: Radius.elliptical(
            size.width * 0.03162530, size.height * 0.01465405),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path25.close();

    Paint paint25fill = Paint()..style = PaintingStyle.fill;
    paint25fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path25, paint25fill);

    Path path26 = Path();
    path26.moveTo(size.width * 0.5764612, size.height * 0.7090521);
    path26.lineTo(size.width * 0.5764612, size.height * 0.7090521);
    path26.lineTo(size.width * 0.5764612, size.height * 0.7090521);
    path26.lineTo(size.width * 0.5764612, size.height * 0.7090521);
    path26.lineTo(size.width * 0.5764612, size.height * 0.7090521);
    path26.close();

    Paint paint26fill = Paint()..style = PaintingStyle.fill;
    paint26fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path26, paint26fill);

    Path path27 = Path();
    path27.moveTo(size.width * 0.2097678, size.height * 0.4231126);
    path27.arcToPoint(Offset(size.width * 0.2173739, size.height * 0.4352625),
        radius: Radius.elliptical(
            size.width * 0.02001601, size.height * 0.009274717),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path27.arcToPoint(Offset(size.width * 0.2435949, size.height * 0.4320163),
        radius: Radius.elliptical(
            size.width * 0.02001601, size.height * 0.009274717),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path27.arcToPoint(Offset(size.width * 0.2087670, size.height * 0.4255240),
        radius: Radius.elliptical(
            size.width * 0.01901521, size.height * 0.008810981),
        rotation: 0,
        largeArc: true,
        clockwise: false);
    path27.close();

    Paint paint27fill = Paint()..style = PaintingStyle.fill;
    paint27fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path27, paint27fill);

    Path path28 = Path();
    path28.moveTo(size.width * 0.7245797, size.height * 0.3895381);
    path28.arcToPoint(Offset(size.width * 0.7558046, size.height * 0.3861065),
        radius: Radius.elliptical(
            size.width * 0.02201761, size.height * 0.01020219),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path28.cubicTo(
        size.width * 0.7838271,
        size.height * 0.3948247,
        size.width * 0.7335869,
        size.height * 0.4139306,
        size.width * 0.7237790,
        size.height * 0.3953812);
    path28.arcToPoint(Offset(size.width * 0.7245797, size.height * 0.3895381),
        radius: Radius.elliptical(
            size.width * 0.01881505, size.height * 0.008718234),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path28.close();

    Paint paint28fill = Paint()..style = PaintingStyle.fill;
    paint28fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path28, paint28fill);

    Path path29 = Path();
    path29.moveTo(size.width * 0.9531625, size.height * 0.3404749);
    path29.arcToPoint(Offset(size.width * 0.9349480, size.height * 0.3332406),
        radius: Radius.elliptical(
            size.width * 0.02341873, size.height * 0.01085142),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path29.arcToPoint(Offset(size.width * 0.9149319, size.height * 0.3554999),
        radius: Radius.elliptical(
            size.width * 0.02622098, size.height * 0.01214988),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path29.arcToPoint(Offset(size.width * 0.9531625, size.height * 0.3404749),
        radius: Radius.elliptical(
            size.width * 0.02682146, size.height * 0.01242812),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path29.close();

    Paint paint29fill = Paint()..style = PaintingStyle.fill;
    paint29fill.color = Color(0xffcfdfeb).withOpacity(1.0);
    canvas.drawPath(path29, paint29fill);

    Path path30 = Path();
    path30.moveTo(size.width * 0.8292634, size.height * 0.6543313);
    path30.arcToPoint(Offset(size.width * 0.8250600, size.height * 0.6513634),
        radius: Radius.elliptical(
            size.width * 0.02522018, size.height * 0.01168614),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path30.arcToPoint(Offset(size.width * 0.7728183, size.height * 0.6579484),
        radius: Radius.elliptical(
            size.width * 0.03122498, size.height * 0.01446856),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path30.arcToPoint(Offset(size.width * 0.7946357, size.height * 0.6735300),
        radius: Radius.elliptical(
            size.width * 0.02922338, size.height * 0.01354109),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path30.arcToPoint(Offset(size.width * 0.8292634, size.height * 0.6543313),
        radius: Radius.elliptical(
            size.width * 0.03162530, size.height * 0.01465405),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path30.close();

    Paint paint30fill = Paint()..style = PaintingStyle.fill;
    paint30fill.color = Color(0xffcfdfeb).withOpacity(1.0);
    canvas.drawPath(path30, paint30fill);

    Path path31 = Path();
    path31.moveTo(size.width * 0.7245797, size.height * 0.3895381);
    path31.arcToPoint(Offset(size.width * 0.7558046, size.height * 0.3861065),
        radius: Radius.elliptical(
            size.width * 0.02201761, size.height * 0.01020219),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path31.cubicTo(
        size.width * 0.7838271,
        size.height * 0.3948247,
        size.width * 0.7335869,
        size.height * 0.4139306,
        size.width * 0.7237790,
        size.height * 0.3953812);
    path31.arcToPoint(Offset(size.width * 0.7245797, size.height * 0.3895381),
        radius: Radius.elliptical(
            size.width * 0.01881505, size.height * 0.008718234),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path31.close();

    Paint paint31fill = Paint()..style = PaintingStyle.fill;
    paint31fill.color = Color(0xffcfdfeb).withOpacity(1.0);
    canvas.drawPath(path31, paint31fill);

    Path path32 = Path();
    path32.moveTo(size.width * 0.4949960, size.height * 0.6502504);
    path32.cubicTo(
        size.width * 0.4771817,
        size.height * 0.6613801,
        size.width * 0.5002002,
        size.height * 0.6838249,
        size.width * 0.5374299,
        size.height * 0.6739009);
    path32.arcToPoint(Offset(size.width * 0.5174139, size.height * 0.6446856),
        radius: Radius.elliptical(
            size.width * 0.03342674, size.height * 0.01548878),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path32.arcToPoint(Offset(size.width * 0.4949960, size.height * 0.6502504),
        radius: Radius.elliptical(
            size.width * 0.03142514, size.height * 0.01456131),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path32.close();

    Paint paint32fill = Paint()..style = PaintingStyle.fill;
    paint32fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path32, paint32fill);

    Path path33 = Path();
    path33.moveTo(size.width * 0.5700560, size.height * 0.7033945);
    path33.arcToPoint(Offset(size.width * 0.5700560, size.height * 0.7053422),
        radius: Radius.elliptical(
            size.width * 0.02001601, size.height * 0.009274717),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path33.close();

    Paint paint33fill = Paint()..style = PaintingStyle.fill;
    paint33fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path33, paint33fill);

    Path path34 = Path();
    path34.moveTo(size.width * 0.9945957, size.height * 0.5820812);
    path34.cubicTo(
        size.width * 0.9867894,
        size.height * 0.5861621,
        size.width * 0.9789832,
        size.height * 0.5903357,
        size.width * 0.9707766,
        size.height * 0.5941384);
    path34.arcToPoint(Offset(size.width * 0.8985188, size.height * 0.6147283),
        radius:
            Radius.elliptical(size.width * 0.1723379, size.height * 0.07985531),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path34.arcToPoint(Offset(size.width * 0.8530825, size.height * 0.6165832),
        radius:
            Radius.elliptical(size.width * 0.1086869, size.height * 0.05036171),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path34.cubicTo(
        size.width * 0.8304644,
        size.height * 0.6151920,
        size.width * 0.8072458,
        size.height * 0.6104619,
        size.width * 0.7856285,
        size.height * 0.6138935);
    path34.cubicTo(
        size.width * 0.7528022,
        size.height * 0.6189946,
        size.width * 0.7411930,
        size.height * 0.6404192,
        size.width * 0.7075661,
        size.height * 0.6444073);
    path34.arcToPoint(Offset(size.width * 0.6829464, size.height * 0.6444073),
        radius: Radius.elliptical(
            size.width * 0.04683747, size.height * 0.02170284),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path34.lineTo(size.width * 0.6829464, size.height * 0.4207012);
    path34.arcToPoint(Offset(size.width * 0.7526021, size.height * 0.4114265),
        radius: Radius.elliptical(
            size.width * 0.08006405, size.height * 0.03709887),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path34.cubicTo(
        size.width * 0.7634107,
        size.height * 0.4066963,
        size.width * 0.7726181,
        size.height * 0.4002968,
        size.width * 0.7860288,
        size.height * 0.3984418);
    path34.cubicTo(
        size.width * 0.8086469,
        size.height * 0.3953812,
        size.width * 0.8334668,
        size.height * 0.4055834,
        size.width * 0.8550841,
        size.height * 0.4013170);
    path34.cubicTo(
        size.width * 0.8767014,
        size.height * 0.3970506,
        size.width * 0.8775020,
        size.height * 0.3810981,
        size.width * 0.8969175,
        size.height * 0.3741421);
    path34.cubicTo(
        size.width * 0.9119295,
        size.height * 0.3687628,
        size.width * 0.9331465,
        size.height * 0.3704322,
        size.width * 0.9521617,
        size.height * 0.3708959);
    path34.lineTo(size.width * 0.9607686, size.height * 0.3708959);
    path34.arcToPoint(Offset(size.width * 0.9907926, size.height * 0.3692265),
        radius:
            Radius.elliptical(size.width * 0.1501201, size.height * 0.06956038),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path34.close();

    Paint paint34fill = Paint()..style = PaintingStyle.fill;
    paint34fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path34, paint34fill);

    Path path35 = Path();
    path35.moveTo(size.width * 0.9945957, size.height * 0.5820812);
    path35.cubicTo(
        size.width * 0.9867894,
        size.height * 0.5861621,
        size.width * 0.9789832,
        size.height * 0.5903357,
        size.width * 0.9707766,
        size.height * 0.5941384);
    path35.arcToPoint(Offset(size.width * 0.8985188, size.height * 0.6147283),
        radius:
            Radius.elliptical(size.width * 0.1723379, size.height * 0.07985531),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path35.arcToPoint(Offset(size.width * 0.8530825, size.height * 0.6165832),
        radius:
            Radius.elliptical(size.width * 0.1086869, size.height * 0.05036171),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path35.cubicTo(
        size.width * 0.8304644,
        size.height * 0.6151920,
        size.width * 0.8072458,
        size.height * 0.6104619,
        size.width * 0.7856285,
        size.height * 0.6138935);
    path35.cubicTo(
        size.width * 0.7528022,
        size.height * 0.6189946,
        size.width * 0.7411930,
        size.height * 0.6404192,
        size.width * 0.7075661,
        size.height * 0.6444073);
    path35.arcToPoint(Offset(size.width * 0.6829464, size.height * 0.6444073),
        radius: Radius.elliptical(
            size.width * 0.04683747, size.height * 0.02170284),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path35.lineTo(size.width * 0.6829464, size.height * 0.4207012);
    path35.arcToPoint(Offset(size.width * 0.7526021, size.height * 0.4114265),
        radius: Radius.elliptical(
            size.width * 0.08006405, size.height * 0.03709887),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path35.cubicTo(
        size.width * 0.7634107,
        size.height * 0.4066963,
        size.width * 0.7726181,
        size.height * 0.4002968,
        size.width * 0.7860288,
        size.height * 0.3984418);
    path35.cubicTo(
        size.width * 0.8086469,
        size.height * 0.3953812,
        size.width * 0.8334668,
        size.height * 0.4055834,
        size.width * 0.8550841,
        size.height * 0.4013170);
    path35.cubicTo(
        size.width * 0.8767014,
        size.height * 0.3970506,
        size.width * 0.8775020,
        size.height * 0.3810981,
        size.width * 0.8969175,
        size.height * 0.3741421);
    path35.cubicTo(
        size.width * 0.9119295,
        size.height * 0.3687628,
        size.width * 0.9331465,
        size.height * 0.3704322,
        size.width * 0.9521617,
        size.height * 0.3708959);
    path35.lineTo(size.width * 0.9607686, size.height * 0.3708959);
    path35.arcToPoint(Offset(size.width * 0.9907926, size.height * 0.3692265),
        radius:
            Radius.elliptical(size.width * 0.1501201, size.height * 0.06956038),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path35.close();

    Paint paint35fill = Paint()..style = PaintingStyle.fill;
    paint35fill.color = Color(0xffcfdfeb).withOpacity(1.0);
    canvas.drawPath(path35, paint35fill);

    Path path36 = Path();
    path36.moveTo(size.width * 1.000801, size.height * 0.9217214);
    path36.arcToPoint(Offset(size.width * 0.9991994, size.height * 0.9269152),
        radius: Radius.elliptical(
            size.width * 0.04003203, size.height * 0.01854943),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path36.arcToPoint(Offset(size.width * 0.9779824, size.height * 0.9382304),
        radius: Radius.elliptical(
            size.width * 0.04003203, size.height * 0.01854943),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path36.lineTo(size.width * 0.6837470, size.height);
    path36.lineTo(size.width * 0.6837470, size.height * 0.9923947);
    path36.cubicTo(
        size.width * 0.7792234,
        size.height * 0.9260805,
        size.width * 0.8494796,
        size.height * 0.7724912,
        size.width * 0.8993195,
        size.height * 0.6147283);
    path36.cubicTo(
        size.width * 0.9251401,
        size.height * 0.5305138,
        size.width * 0.9459568,
        size.height * 0.4451864,
        size.width * 0.9607686,
        size.height * 0.3709887);
    path36.cubicTo(
        size.width * 0.9731785,
        size.height * 0.3118160,
        size.width * 0.9823859,
        size.height * 0.2596921,
        size.width * 0.9883907,
        size.height * 0.2218512);
    path36.lineTo(size.width * 0.9907926, size.height * 0.3693192);
    path36.lineTo(size.width * 0.9939952, size.height * 0.5820812);
    path36.close();

    Paint paint36fill = Paint()..style = PaintingStyle.fill;
    paint36fill.color = Color(0xffcfdfeb).withOpacity(1.0);
    canvas.drawPath(path36, paint36fill);

    Path path37 = Path();
    path37.moveTo(size.width * 0.6829464, size.height * 0.9938787);
    path37.lineTo(size.width * 0.6829464, size.height * 0.9998145);
    path37.lineTo(size.width * 0.01621297, size.height * 0.9674457);
    path37.arcToPoint(Offset(0, size.height * 0.9590985),
        radius: Radius.elliptical(
            size.width * 0.01821457, size.height * 0.008439993),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path37.lineTo(0, size.height * 0.1689853);
    path37.lineTo(0, size.height * 0.1689853);
    path37.cubicTo(
        size.width * 0.002001601,
        size.height * 0.1978297,
        size.width * 0.009007206,
        size.height * 0.3162679,
        size.width * 0.02001601,
        size.height * 0.4558523);
    path37.quadraticBezierTo(size.width * 0.03022418, size.height * 0.5923762,
        size.width * 0.04383507, size.height * 0.7288073);
    path37.cubicTo(
        size.width * 0.05064051,
        size.height * 0.7937303,
        size.width * 0.05844676,
        size.height * 0.8595808,
        size.width * 0.06605284,
        size.height * 0.9249675);
    path37.arcToPoint(Offset(size.width * 0.07806245, size.height * 0.9463921),
        radius: Radius.elliptical(
            size.width * 0.08006405, size.height * 0.03709887),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path37.cubicTo(
        size.width * 0.09327462,
        size.height * 0.9556669,
        size.width * 0.1218975,
        size.height * 0.9568726,
        size.width * 0.1447158,
        size.height * 0.9587275);
    path37.cubicTo(
        size.width * 0.2788231,
        size.height * 0.9691152,
        size.width * 0.4135308,
        size.height * 0.9778334,
        size.width * 0.5486389,
        size.height * 0.9859952);
    path37.lineTo(size.width * 0.5510408, size.height * 0.9859952);
    path37.cubicTo(
        size.width * 0.5946757,
        size.height * 0.9887776,
        size.width * 0.6387110,
        size.height * 0.9913745,
        size.width * 0.6829464,
        size.height * 0.9938787);
    path37.close();

    Paint paint37fill = Paint()..style = PaintingStyle.fill;
    paint37fill.color = Color(0xffcfdfeb).withOpacity(1.0);
    canvas.drawPath(path37, paint37fill);

    Path path38 = Path();
    path38.moveTo(size.width * 0.7626101, size.height * 0.1286403);
    path38.cubicTo(
        size.width * 0.7682146,
        size.height * 0.1296605,
        size.width * 0.9083267,
        size.height * 0.1611018,
        size.width * 0.9849880,
        size.height * 0.1709330);
    path38.cubicTo(
        size.width * 0.8544836,
        size.height * 0.1469115,
        size.width * 0.8080464,
        size.height * 0.1371731,
        size.width * 0.7626101,
        size.height * 0.1286403);
    path38.close();

    Paint paint38fill = Paint()..style = PaintingStyle.fill;
    paint38fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path38, paint38fill);

    Path path39 = Path();
    path39.moveTo(size.width * 0.9725781, size.height * 0.1721387);
    path39.lineTo(size.width * 0.6847478, size.height * 0.1830829);
    path39.arcToPoint(Offset(size.width * 0.9725781, size.height * 0.1721387),
        radius:
            Radius.elliptical(size.width * 1.268215, size.height * 0.5876461),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path39.close();

    Paint paint39fill = Paint()..style = PaintingStyle.fill;
    paint39fill.color = Color(0xffb5b5b5).withOpacity(1.0);
    canvas.drawPath(path39, paint39fill);

    Path path40 = Path();
    path40.moveTo(0, size.height * 0.1689853);
    path40.cubicTo(
        0,
        size.height * 0.1689853,
        size.width * 0.4843875,
        size.height * 0.1698201,
        size.width * 0.6791433,
        size.height * 0.1823409);
    path40.cubicTo(
        size.width * 0.5768615,
        size.height * 0.1841959,
        size.width * 0.01541233,
        size.height * 0.1734372,
        0,
        size.height * 0.1689853);
    path40.close();

    Paint paint40fill = Paint()..style = PaintingStyle.fill;
    paint40fill.color = Color(0xffb0deff).withOpacity(1.0);
    canvas.drawPath(path40, paint40fill);

    Path path41 = Path();
    path41.moveTo(size.width * 0.3508807, size.height * 0.1230755);
    path41.cubicTo(
        size.width * 0.3452762,
        size.height * 0.1146355,
        size.width * 0.3386709,
        size.height * 0.1061955,
        size.width * 0.3344676,
        size.height * 0.09747728);
    path41.arcToPoint(Offset(size.width * 0.2984388, size.height * 0.08393619),
        radius: Radius.elliptical(
            size.width * 0.05304243, size.height * 0.02457800),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path41.lineTo(size.width * 0.3234588, size.height * 0.1189946);
    path41.arcToPoint(Offset(size.width * 0.3546837, size.height * 0.1298460),
        radius: Radius.elliptical(
            size.width * 0.04323459, size.height * 0.02003339),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path41.cubicTo(
        size.width * 0.3534828,
        size.height * 0.1273419,
        size.width * 0.3522818,
        size.height * 0.1252087,
        size.width * 0.3508807,
        size.height * 0.1230755);
    path41.close();

    Paint paint41fill = Paint()..style = PaintingStyle.fill;
    paint41fill.color = Color(0xffcfdfeb).withOpacity(1.0);
    canvas.drawPath(path41, paint41fill);

    Path path42 = Path();
    path42.moveTo(size.width * 0.3188551, size.height * 0.09423113);
    path42.arcToPoint(Offset(size.width * 0.2988391, size.height * 0.08393619),
        radius: Radius.elliptical(
            size.width * 0.04343475, size.height * 0.02012614),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path42.lineTo(size.width * 0.3238591, size.height * 0.1189946);
    path42.arcToPoint(Offset(size.width * 0.3390713, size.height * 0.1264144),
        radius: Radius.elliptical(
            size.width * 0.03082466, size.height * 0.01428306),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path42.cubicTo(
        size.width * 0.3354684,
        size.height * 0.1224263,
        size.width * 0.3202562,
        size.height * 0.09525134,
        size.width * 0.3188551,
        size.height * 0.09423113);
    path42.close();

    Paint paint42fill = Paint()..style = PaintingStyle.fill;
    paint42fill.color = Color(0xffcfdfeb).withOpacity(1.0);
    canvas.drawPath(path42, paint42fill);

    Path path43 = Path();
    path43.moveTo(size.width * 0.5310248, size.height * 0.1205713);
    path43.lineTo(size.width * 0.5310248, size.height * 0.1219625);
    path43.lineTo(size.width * 0.5280224, size.height * 0.1205713);
    path43.close();

    Paint paint43fill = Paint()..style = PaintingStyle.fill;
    paint43fill.color = Color(0xffcfdfeb).withOpacity(1.0);
    canvas.drawPath(path43, paint43fill);

    Path path44 = Path();
    path44.moveTo(size.width * 0.5438351, size.height * 0.09274717);
    path44.arcToPoint(Offset(size.width * 0.5348279, size.height * 0.1024856),
        radius: Radius.elliptical(
            size.width * 0.07746197, size.height * 0.03589316),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path44.arcToPoint(Offset(size.width * 0.5348279, size.height * 0.1033203),
        radius: Radius.elliptical(
            size.width * 0.008206565, size.height * 0.003802634),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path44.lineTo(size.width * 0.5348279, size.height * 0.1033203);
    path44.arcToPoint(Offset(size.width * 0.5284227, size.height * 0.1069375),
        radius: Radius.elliptical(
            size.width * 0.07786229, size.height * 0.03607865),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path44.arcToPoint(Offset(size.width * 0.5258207, size.height * 0.1083287),
        radius: Radius.elliptical(
            size.width * 0.01861489, size.height * 0.008625487),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path44.arcToPoint(Offset(size.width * 0.5058046, size.height * 0.1164904),
        radius:
            Radius.elliptical(size.width * 0.1154924, size.height * 0.05351512),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path44.arcToPoint(Offset(size.width * 0.4753803, size.height * 0.08746058),
        radius:
            Radius.elliptical(size.width * 0.3931145, size.height * 0.1821554),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path44.arcToPoint(Offset(size.width * 0.4849880, size.height * 0.08458542),
        radius:
            Radius.elliptical(size.width * 0.1132906, size.height * 0.05249490),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path44.arcToPoint(Offset(size.width * 0.4997998, size.height * 0.07920608),
        radius:
            Radius.elliptical(size.width * 0.1267014, size.height * 0.05870896),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path44.lineTo(size.width * 0.4997998, size.height * 0.07920608);
    path44.lineTo(size.width * 0.5004003, size.height * 0.07864960);
    path44.lineTo(size.width * 0.5004003, size.height * 0.07864960);
    path44.lineTo(size.width * 0.5004003, size.height * 0.07818587);
    path44.lineTo(size.width * 0.5004003, size.height * 0.07818587);
    path44.arcToPoint(Offset(size.width * 0.5108086, size.height * 0.07225005),
        radius: Radius.elliptical(
            size.width * 0.07686149, size.height * 0.03561491),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path44.arcToPoint(Offset(size.width * 0.5156125, size.height * 0.06826192),
        radius: Radius.elliptical(
            size.width * 0.04643715, size.height * 0.02151734),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path44.arcToPoint(Offset(size.width * 0.5204163, size.height * 0.05666852),
        radius: Radius.elliptical(
            size.width * 0.03302642, size.height * 0.01530328),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path44.lineTo(size.width * 0.5204163, size.height * 0.05564830);
    path44.arcToPoint(Offset(size.width * 0.5204163, size.height * 0.05444259),
        radius: Radius.elliptical(
            size.width * 0.01861489, size.height * 0.008625487),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path44.lineTo(size.width * 0.5228183, size.height * 0.05741050);
    path44.arcToPoint(Offset(size.width * 0.5228183, size.height * 0.05741050),
        radius: Radius.elliptical(0, 0),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path44.arcToPoint(Offset(size.width * 0.5228183, size.height * 0.05861621),
        radius: Radius.elliptical(
            size.width * 0.01301041, size.height * 0.006028566),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path44.lineTo(size.width * 0.5228183, size.height * 0.05861621);
    path44.cubicTo(
        size.width * 0.5256205,
        size.height * 0.06223335,
        size.width * 0.5296237,
        size.height * 0.06733445,
        size.width * 0.5332266,
        size.height * 0.07215730);
    path44.lineTo(size.width * 0.5332266, size.height * 0.07327027);
    path44.cubicTo(
        size.width * 0.5378303,
        size.height * 0.07929883,
        size.width * 0.5418335,
        size.height * 0.08430718,
        size.width * 0.5418335,
        size.height * 0.08430718);
    path44.arcToPoint(Offset(size.width * 0.5432346, size.height * 0.09256168),
        radius: Radius.elliptical(
            size.width * 0.03803042, size.height * 0.01762196),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path44.close();

    Paint paint44fill = Paint()..style = PaintingStyle.fill;
    paint44fill.color = Color(0xffcfdfeb).withOpacity(1.0);
    canvas.drawPath(path44, paint44fill);

    Path path45 = Path();
    path45.moveTo(size.width * 0.5182146, size.height * 0.1134298);
    path45.cubicTo(
        size.width * 0.4751801,
        size.height * 0.1254869,
        size.width * 0.4315452,
        size.height * 0.1351326,
        size.width * 0.3799039,
        size.height * 0.1335559);
    path45.cubicTo(
        size.width * 0.3799039,
        size.height * 0.1335559,
        size.width * 0.3799039,
        size.height * 0.1335559,
        size.width * 0.3799039,
        size.height * 0.1335559);
    path45.arcToPoint(Offset(size.width * 0.5200160, size.height * 0.1136153),
        radius:
            Radius.elliptical(size.width * 0.1837470, size.height * 0.08514190),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path45.cubicTo(
        size.width * 0.5200160,
        size.height * 0.1136153,
        size.width * 0.5190152,
        size.height * 0.1132443,
        size.width * 0.5182146,
        size.height * 0.1134298);
    path45.close();

    Paint paint45fill = Paint()..style = PaintingStyle.fill;
    paint45fill.color = Color(0xff9e9e9e).withOpacity(1.0);
    canvas.drawPath(path45, paint45fill);

    Path path46 = Path();
    path46.moveTo(size.width * 0.4515612, size.height * 0.1367093);
    path46.arcToPoint(Offset(size.width * 0.3783026, size.height * 0.1416249),
        radius:
            Radius.elliptical(size.width * 0.2279824, size.height * 0.1056390),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path46.arcToPoint(Offset(size.width * 0.3783026, size.height * 0.1421814),
        radius: Radius.elliptical(0, 0),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path46.arcToPoint(Offset(size.width * 0.4523619, size.height * 0.1374513),
        radius:
            Radius.elliptical(size.width * 0.1116894, size.height * 0.05175292),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path46.cubicTo(
        size.width * 0.4531625,
        size.height * 0.1371731,
        size.width * 0.4525620,
        size.height * 0.1365238,
        size.width * 0.4515612,
        size.height * 0.1367093);
    path46.close();

    Paint paint46fill = Paint()..style = PaintingStyle.fill;
    paint46fill.color = Color(0xff9e9e9e).withOpacity(1.0);
    canvas.drawPath(path46, paint46fill);

    Path path47 = Path();
    path47.moveTo(size.width * 0.4671737, size.height * 0.1256724);
    path47.arcToPoint(Offset(size.width * 0.4271417, size.height * 0.1304953),
        radius:
            Radius.elliptical(size.width * 0.2121697, size.height * 0.09831200),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path47.lineTo(size.width * 0.4145316, size.height * 0.1312372);
    path47.lineTo(size.width * 0.4083267, size.height * 0.1312372);
    path47.cubicTo(
        size.width * 0.4009207,
        size.height * 0.1207568,
        size.width * 0.3931145,
        size.height * 0.1102764,
        size.width * 0.3859087,
        size.height * 0.09979596);
    path47.arcToPoint(Offset(size.width * 0.4449560, size.height * 0.09376739),
        radius:
            Radius.elliptical(size.width * 0.2051641, size.height * 0.09506585),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path47.lineTo(size.width * 0.4549640, size.height * 0.1076795);
    path47.close();

    Paint paint47fill = Paint()..style = PaintingStyle.fill;
    paint47fill.color = Color(0xff9e9e9e).withOpacity(1.0);
    canvas.drawPath(path47, paint47fill);

    Path path48 = Path();
    path48.moveTo(size.width * 0.8260608, size.height * 0.06241885);
    path48.lineTo(size.width * 0.7900320, size.height * 0.1345761);
    path48.lineTo(size.width * 0.6881505, size.height * 0.1786311);
    path48.lineTo(size.width * 0.7457966, size.height * 0.1259507);
    path48.lineTo(size.width * 0.7467974, size.height * 0.1250232);
    path48.lineTo(size.width * 0.8200560, size.height * 0.05833797);
    path48.lineTo(size.width * 0.8260608, size.height * 0.06241885);
    path48.close();

    Paint paint48fill = Paint()..style = PaintingStyle.fill;
    paint48fill.color = Color(0xffd1d5d6).withOpacity(1.0);
    canvas.drawPath(path48, paint48fill);

    Path path49 = Path();
    path49.moveTo(size.width * 0.5438351, size.height * 0.09274717);
    path49.arcToPoint(Offset(size.width * 0.5348279, size.height * 0.1024856),
        radius: Radius.elliptical(
            size.width * 0.07746197, size.height * 0.03589316),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path49.arcToPoint(Offset(size.width * 0.5348279, size.height * 0.1033203),
        radius: Radius.elliptical(
            size.width * 0.008206565, size.height * 0.003802634),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path49.lineTo(size.width * 0.5348279, size.height * 0.1033203);
    path49.arcToPoint(Offset(size.width * 0.5284227, size.height * 0.1069375),
        radius: Radius.elliptical(
            size.width * 0.07786229, size.height * 0.03607865),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path49.cubicTo(
        size.width * 0.5184147,
        size.height * 0.09766277,
        size.width * 0.5084067,
        size.height * 0.08838805,
        size.width * 0.4993995,
        size.height * 0.07911334);
    path49.lineTo(size.width * 0.5004003, size.height * 0.07864960);
    path49.lineTo(size.width * 0.5004003, size.height * 0.07864960);
    path49.lineTo(size.width * 0.5004003, size.height * 0.07818587);
    path49.lineTo(size.width * 0.5004003, size.height * 0.07818587);
    path49.arcToPoint(Offset(size.width * 0.5108086, size.height * 0.07225005),
        radius: Radius.elliptical(
            size.width * 0.07686149, size.height * 0.03561491),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path49.arcToPoint(Offset(size.width * 0.5156125, size.height * 0.06826192),
        radius: Radius.elliptical(
            size.width * 0.04643715, size.height * 0.02151734),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path49.arcToPoint(Offset(size.width * 0.5204163, size.height * 0.05666852),
        radius: Radius.elliptical(
            size.width * 0.03302642, size.height * 0.01530328),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path49.lineTo(size.width * 0.5204163, size.height * 0.05564830);
    path49.arcToPoint(Offset(size.width * 0.5204163, size.height * 0.05444259),
        radius: Radius.elliptical(
            size.width * 0.01861489, size.height * 0.008625487),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path49.lineTo(size.width * 0.5228183, size.height * 0.05741050);
    path49.arcToPoint(Offset(size.width * 0.5228183, size.height * 0.05741050),
        radius: Radius.elliptical(0, 0),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path49.arcToPoint(Offset(size.width * 0.5228183, size.height * 0.05861621),
        radius: Radius.elliptical(
            size.width * 0.01301041, size.height * 0.006028566),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path49.lineTo(size.width * 0.5228183, size.height * 0.05861621);
    path49.cubicTo(
        size.width * 0.5256205,
        size.height * 0.06223335,
        size.width * 0.5296237,
        size.height * 0.06733445,
        size.width * 0.5332266,
        size.height * 0.07215730);
    path49.lineTo(size.width * 0.5332266, size.height * 0.07327027);
    path49.cubicTo(
        size.width * 0.5378303,
        size.height * 0.07929883,
        size.width * 0.5418335,
        size.height * 0.08430718,
        size.width * 0.5418335,
        size.height * 0.08430718);
    path49.arcToPoint(Offset(size.width * 0.5432346, size.height * 0.09256168),
        radius: Radius.elliptical(
            size.width * 0.03803042, size.height * 0.01762196),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path49.close();

    Paint paint49fill = Paint()..style = PaintingStyle.fill;
    paint49fill.color = Color(0xffcfdfeb).withOpacity(1.0);
    canvas.drawPath(path49, paint49fill);

    Path path50 = Path();
    path50.moveTo(size.width * 0.9983987, size.height * 0.9269152);
    path50.arcToPoint(Offset(size.width * 0.9771817, size.height * 0.9382304),
        radius: Radius.elliptical(
            size.width * 0.04003203, size.height * 0.01854943),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path50.lineTo(size.width * 0.6829464, size.height);
    path50.lineTo(size.width * 0.6829464, size.height);
    path50.lineTo(size.width * 0.01621297, size.height * 0.9674457);
    path50.arcToPoint(Offset(0, size.height * 0.9590985),
        radius: Radius.elliptical(
            size.width * 0.01821457, size.height * 0.008439993),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path50.lineTo(0, size.height * 0.9432387);
    path50.cubicTo(
        size.width * 0.02001601,
        size.height * 0.9512150,
        size.width * 0.05384307,
        size.height * 0.9586348,
        size.width * 0.1158927,
        size.height * 0.9628084);
    path50.cubicTo(
        size.width * 0.2159728,
        size.height * 0.9695789,
        size.width * 0.4143315,
        size.height * 0.9795029,
        size.width * 0.5480384,
        size.height * 0.9859952);
    path50.lineTo(size.width * 0.5504404, size.height * 0.9859952);
    path50.cubicTo(
        size.width * 0.6281025,
        size.height * 0.9897978,
        size.width * 0.6829464,
        size.height * 0.9923020,
        size.width * 0.6829464,
        size.height * 0.9923020);
    path50.close();

    Paint paint50fill = Paint()..style = PaintingStyle.fill;
    paint50fill.color = Color(0xffcfdfeb).withOpacity(1.0);
    canvas.drawPath(path50, paint50fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
