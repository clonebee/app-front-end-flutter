import 'package:flutter/material.dart';

Widget equipmentsIconColor({@required double xwidth}) {
  return CustomPaint(
    size: Size(xwidth, (xwidth * 0.8417189376751634).toDouble()),
    painter: EquipmentsIconColor(),
  );
}

class EquipmentsIconColor extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.8186307, size.height * 0.6820200);
    path0.lineTo(size.width * 0.05465101, size.height * 0.3651498);
    path0.lineTo(size.width * 0.05465101, size.height * 0.5552561);
    path0.lineTo(size.width * 0.7029895, size.height);
    path0.lineTo(size.width * 0.7924062, size.height);
    path0.lineTo(size.width * 0.9854531, size.height * 0.8661012);
    path0.lineTo(size.width * 0.9854531, size.height * 0.8206754);
    path0.lineTo(size.width * 0.8186307, size.height * 0.6820200);
    path0.close();

    Paint paint0fill = Paint()..style = PaintingStyle.fill;
    paint0fill.color = Color(0xff9193a3).withOpacity(1.0);
    canvas.drawPath(path0, paint0fill);

    Path path1 = Path();
    path1.moveTo(size.width * 0.05485119, size.height * 0.3069605);
    path1.lineTo(size.width * 0.7351528, size.height * 0.7735849);
    path1.lineTo(size.width * 0.7351528, size.height * 0.9602822);
    path1.lineTo(size.width * 0.05485119, size.height * 0.4936578);
    path1.lineTo(size.width * 0.05485119, size.height * 0.3069605);
    path1.close();

    Paint paint1fill = Paint()..style = PaintingStyle.fill;
    paint1fill.color = Color(0xff0b90aa).withOpacity(1.0);
    canvas.drawPath(path1, paint1fill);

    Path path2 = Path();
    path2.moveTo(size.width * 0.7351528, size.height * 0.7735849);
    path2.lineTo(size.width * 0.9392099, size.height * 0.6335817);
    path2.lineTo(size.width * 0.9392099, size.height * 0.8202791);
    path2.lineTo(size.width * 0.7351528, size.height * 0.9602822);
    path2.lineTo(size.width * 0.7351528, size.height * 0.7735849);
    path2.close();

    Paint paint2fill = Paint()..style = PaintingStyle.fill;
    paint2fill.color = Color(0xff117488).withOpacity(1.0);
    canvas.drawPath(path2, paint2fill);

    Path path3 = Path();
    path3.moveTo(size.width * 0.2117309, size.height * 0.1090059);
    path3.lineTo(size.width * 0.04110503, size.height * 0.2268908);
    path3.arcToPoint(Offset(size.width * 0.05732017, size.height * 0.2287141),
        radius: Radius.elliptical(
            size.width * 0.01621513, size.height * 0.01926431),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path3.lineTo(size.width * 0.2279461, size.height * 0.1109878);
    path3.arcToPoint(Offset(size.width * 0.2117309, size.height * 0.1090059),
        radius: Radius.elliptical(
            size.width * 0.01608168, size.height * 0.01910576),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path3.close();

    Paint paint3fill = Paint()..style = PaintingStyle.fill;
    paint3fill.color = Color(0xff494949).withOpacity(1.0);
    canvas.drawPath(path3, paint3fill);

    Path path4 = Path();
    path4.moveTo(size.width * 0.05732017, size.height * 0.2287141);
    path4.lineTo(size.width * 0.2279461, size.height * 0.1109878);
    path4.arcToPoint(Offset(size.width * 0.2168691, size.height * 0.1073410),
        radius: Radius.elliptical(
            size.width * 0.02001868, size.height * 0.02378310),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path4.lineTo(size.width * 0.04617643, size.height * 0.2250674);
    path4.arcToPoint(Offset(size.width * 0.05732017, size.height * 0.2287141),
        radius: Radius.elliptical(
            size.width * 0.02061924, size.height * 0.02449659),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path4.close();

    Paint paint4fill = Paint()..style = PaintingStyle.fill;
    paint4fill.color = Color(0xff494949).withOpacity(1.0);
    canvas.drawPath(path4, paint4fill);

    Path path5 = Path();
    path5.moveTo(size.width * 0.04617643, size.height * 0.2250674);
    path5.lineTo(size.width * 0.2168691, size.height * 0.1072618);
    path5.arcToPoint(Offset(size.width * 0.2117309, size.height * 0.1090059),
        radius: Radius.elliptical(
            size.width * 0.01121046, size.height * 0.01331853),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path5.lineTo(size.width * 0.04110503, size.height * 0.2268908);
    path5.arcToPoint(Offset(size.width * 0.04617643, size.height * 0.2250674),
        radius: Radius.elliptical(
            size.width * 0.01074336, size.height * 0.01276360),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path5.close();

    Paint paint5fill = Paint()..style = PaintingStyle.fill;
    paint5fill.color = Color(0xff494949).withOpacity(1.0);
    canvas.drawPath(path5, paint5fill);

    Path path6 = Path();
    path6.moveTo(size.width * 0.1989190, size.height * 0.09267481);
    path6.lineTo(size.width * 0.2173362, size.height * 0.07991121);
    path6.arcToPoint(Offset(size.width * 0.2364207, size.height * 0.08213097),
        radius: Radius.elliptical(
            size.width * 0.01888429, size.height * 0.02243539),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path6.lineTo(size.width * 0.2180035, size.height * 0.09513239);
    path6.arcToPoint(Offset(size.width * 0.1989190, size.height * 0.09267481),
        radius: Radius.elliptical(
            size.width * 0.01875083, size.height * 0.02227684),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path6.close();

    Paint paint6fill = Paint()..style = PaintingStyle.fill;
    paint6fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path6, paint6fill);

    Path path7 = Path();
    path7.moveTo(size.width * 0.1989190, size.height * 0.09267481);
    path7.lineTo(size.width * 0.2173362, size.height * 0.07991121);
    path7.arcToPoint(Offset(size.width * 0.2294141, size.height * 0.07856350),
        radius: Radius.elliptical(
            size.width * 0.01568130, size.height * 0.01863009),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path7.lineTo(size.width * 0.2109302, size.height * 0.09132710);
    path7.arcToPoint(Offset(size.width * 0.1989190, size.height * 0.09267481),
        radius: Radius.elliptical(
            size.width * 0.01548112, size.height * 0.01839226),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path7.close();

    Paint paint7fill = Paint()..style = PaintingStyle.fill;
    paint7fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path7, paint7fill);

    Path path8 = Path();
    path8.moveTo(size.width * 0.2109302, size.height * 0.09132710);
    path8.lineTo(size.width * 0.2294141, size.height * 0.07856350);
    path8.arcToPoint(Offset(size.width * 0.2360870, size.height * 0.08213097),
        radius: Radius.elliptical(
            size.width * 0.02842653, size.height * 0.03377200),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path8.lineTo(size.width * 0.2180035, size.height * 0.09513239);
    path8.arcToPoint(Offset(size.width * 0.2109302, size.height * 0.09156493),
        radius: Radius.elliptical(
            size.width * 0.02996130, size.height * 0.03559537),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path8.close();

    Paint paint8fill = Paint()..style = PaintingStyle.fill;
    paint8fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path8, paint8fill);

    Path path9 = Path();
    path9.moveTo(size.width * 0.2179367, size.height * 0.09489456);
    path9.lineTo(size.width * 0.2364207, size.height * 0.08213097);
    path9.lineTo(size.width * 0.9732417, size.height * 0.5875218);
    path9.lineTo(size.width * 0.9547578, size.height * 0.6002854);
    path9.lineTo(size.width * 0.2179367, size.height * 0.09489456);
    path9.close();

    Paint paint9fill = Paint()..style = PaintingStyle.fill;
    paint9fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path9, paint9fill);

    Path path10 = Path();
    path10.moveTo(size.width * 0.9921260, size.height * 0.6629935);
    path10.lineTo(size.width * 0.9737088, size.height * 0.6757571);
    path10.arcToPoint(Offset(size.width * 0.9815161, size.height * 0.6553036),
        radius: Radius.elliptical(
            size.width * 0.01888429, size.height * 0.02243539),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path10.arcToPoint(Offset(size.width * 0.9548245, size.height * 0.6002854),
        radius: Radius.elliptical(
            size.width * 0.05892166, size.height * 0.07000159),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path10.lineTo(size.width * 0.9733084, size.height * 0.5875218);
    path10.arcToPoint(Offset(size.width, size.height * 0.6425400),
        radius: Radius.elliptical(
            size.width * 0.05905512, size.height * 0.07016014),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path10.arcToPoint(Offset(size.width * 0.9921260, size.height * 0.6629935),
        radius: Radius.elliptical(
            size.width * 0.01895102, size.height * 0.02251467),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path10.close();

    Paint paint10fill = Paint()..style = PaintingStyle.fill;
    paint10fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path10, paint10fill);

    Path path11 = Path();
    path11.moveTo(size.width * 0.9547578, size.height * 0.6002854);
    path11.lineTo(size.width * 0.9732417, size.height * 0.5875218);
    path11.lineTo(size.width * 0.9753770, size.height * 0.5891073);
    path11.lineTo(size.width * 0.9568931, size.height * 0.6017917);
    path11.lineTo(size.width * 0.9547578, size.height * 0.6002854);
    path11.close();

    Paint paint11fill = Paint()..style = PaintingStyle.fill;
    paint11fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path11, paint11fill);

    Path path12 = Path();
    path12.moveTo(size.width * 0.9568931, size.height * 0.6017917);
    path12.lineTo(size.width * 0.9753770, size.height * 0.5891073);
    path12.arcToPoint(Offset(size.width * 0.9849193, size.height * 0.5991755),
        radius: Radius.elliptical(
            size.width * 0.04917923, size.height * 0.05842714),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path12.lineTo(size.width * 0.9664353, size.height * 0.6119391);
    path12.arcToPoint(Offset(size.width * 0.9568931, size.height * 0.6017917),
        radius: Radius.elliptical(
            size.width * 0.05191512, size.height * 0.06167750),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path12.close();

    Paint paint12fill = Paint()..style = PaintingStyle.fill;
    paint12fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path12, paint12fill);

    Path path13 = Path();
    path13.moveTo(size.width * 0.9664353, size.height * 0.6119391);
    path13.lineTo(size.width * 0.9849193, size.height * 0.5991755);
    path13.arcToPoint(Offset(size.width * 0.9953290, size.height * 0.6183606),
        radius: Radius.elliptical(
            size.width * 0.06459362, size.height * 0.07674013),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path13.lineTo(size.width * 0.9768451, size.height * 0.6311241);
    path13.arcToPoint(Offset(size.width * 0.9664353, size.height * 0.6116220),
        radius: Radius.elliptical(
            size.width * 0.06459362, size.height * 0.07674013),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path13.close();

    Paint paint13fill = Paint()..style = PaintingStyle.fill;
    paint13fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path13, paint13fill);

    Path path14 = Path();
    path14.moveTo(size.width * 0.9768451, size.height * 0.6314413);
    path14.lineTo(size.width * 0.9953290, size.height * 0.6183606);
    path14.arcToPoint(Offset(size.width * 0.9990658, size.height * 0.6318376),
        radius: Radius.elliptical(
            size.width * 0.05645269, size.height * 0.06706834),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path14.lineTo(size.width * 0.9809155, size.height * 0.6449183);
    path14.arcToPoint(Offset(size.width * 0.9771787, size.height * 0.6314413),
        radius: Radius.elliptical(
            size.width * 0.05645269, size.height * 0.06706834),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path14.close();

    Paint paint14fill = Paint()..style = PaintingStyle.fill;
    paint14fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path14, paint14fill);

    Path path15 = Path();
    path15.moveTo(size.width * 0.9809155, size.height * 0.6449183);
    path15.lineTo(size.width * 0.9993994, size.height * 0.6321547);
    path15.arcToPoint(Offset(size.width * 1.000334, size.height * 0.6425400),
        radius: Radius.elliptical(
            size.width * 0.04484185, size.height * 0.05327414),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path15.cubicTo(
        size.width * 1.000334,
        size.height * 0.6434914,
        size.width * 1.000334,
        size.height * 0.6443634,
        size.width * 1.000334,
        size.height * 0.6452355);
    path15.lineTo(size.width * 0.9814494, size.height * 0.6579990);
    path15.cubicTo(
        size.width * 0.9814494,
        size.height * 0.6572063,
        size.width * 0.9814494,
        size.height * 0.6562550,
        size.width * 0.9814494,
        size.height * 0.6553829);
    path15.arcToPoint(Offset(size.width * 0.9805151, size.height * 0.6449976),
        radius: Radius.elliptical(
            size.width * 0.04430802, size.height * 0.05263992),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path15.close();

    Paint paint15fill = Paint()..style = PaintingStyle.fill;
    paint15fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path15, paint15fill);

    Path path16 = Path();
    path16.moveTo(size.width * 0.9814494, size.height * 0.6579990);
    path16.lineTo(size.width * 0.9998665, size.height * 0.6453147);
    path16.arcToPoint(Offset(size.width * 0.9921260, size.height * 0.6630728),
        radius: Radius.elliptical(
            size.width * 0.01754971, size.height * 0.02084985),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path16.lineTo(size.width * 0.9737088, size.height * 0.6758364);
    path16.arcToPoint(Offset(size.width * 0.9814494, size.height * 0.6579990),
        radius: Radius.elliptical(
            size.width * 0.01788336, size.height * 0.02124623),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path16.close();

    Paint paint16fill = Paint()..style = PaintingStyle.fill;
    paint16fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path16, paint16fill);

    Path path17 = Path();
    path17.moveTo(size.width * 0.9547578, size.height * 0.6002854);
    path17.arcToPoint(Offset(size.width * 0.9814494, size.height * 0.6553036),
        radius: Radius.elliptical(
            size.width * 0.05892166, size.height * 0.07000159),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path17.cubicTo(
        size.width * 0.9814494,
        size.height * 0.6755193,
        size.width * 0.9693714,
        size.height * 0.6836848,
        size.width * 0.9547578,
        size.height * 0.6735373);
    path17.lineTo(size.width * 0.2178033, size.height * 0.1681465);
    path17.arcToPoint(Offset(size.width * 0.1911117, size.height * 0.1131283),
        radius: Radius.elliptical(
            size.width * 0.05892166, size.height * 0.07000159),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path17.cubicTo(
        size.width * 0.1911117,
        size.height * 0.09291264,
        size.width * 0.2031896,
        size.height * 0.08474711,
        size.width * 0.2178033,
        size.height * 0.09489456);
    path17.close();

    Paint paint17fill = Paint()..style = PaintingStyle.fill;
    paint17fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path17, paint17fill);

    Path path18 = Path();
    path18.moveTo(size.width * 0.7793941, size.height * 0.7240368);
    path18.lineTo(size.width * 0.9500867, size.height * 0.6062312);
    path18.lineTo(size.width * 0.2279461, size.height * 0.1109085);
    path18.lineTo(size.width * 0.05732017, size.height * 0.2287141);
    path18.lineTo(size.width * 0.7793941, size.height * 0.7240368);
    path18.close();

    Paint paint18fill = Paint()..style = PaintingStyle.fill;
    paint18fill.color = Color(0xff252529).withOpacity(1.0);
    canvas.drawPath(path18, paint18fill);

    Path path19 = Path();
    path19.moveTo(size.width * 0.7954758, size.height * 0.7963374);
    path19.lineTo(size.width * 0.9661684, size.height * 0.6784525);
    path19.arcToPoint(Offset(size.width * 0.9728413, size.height * 0.6610909),
        radius: Radius.elliptical(
            size.width * 0.01588149, size.height * 0.01886792),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path19.lineTo(size.width * 0.8020819, size.height * 0.7789757);
    path19.arcToPoint(Offset(size.width * 0.7954758, size.height * 0.7963374),
        radius: Radius.elliptical(
            size.width * 0.01601495, size.height * 0.01902648),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path19.close();

    Paint paint19fill = Paint()..style = PaintingStyle.fill;
    paint19fill.color = Color(0xff1a191d).withOpacity(1.0);
    canvas.drawPath(path19, paint19fill);

    Path path20 = Path();
    path20.moveTo(size.width * 0.7954758, size.height * 0.7963374);
    path20.lineTo(size.width * 0.9661684, size.height * 0.6784525);
    path20.arcToPoint(Offset(size.width * 0.9728413, size.height * 0.6610909),
        radius: Radius.elliptical(
            size.width * 0.01588149, size.height * 0.01886792),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path20.lineTo(size.width * 0.8020819, size.height * 0.7789757);
    path20.arcToPoint(Offset(size.width * 0.7954090, size.height * 0.7963374),
        radius: Radius.elliptical(
            size.width * 0.01601495, size.height * 0.01902648),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path20.close();

    Paint paint20fill = Paint()..style = PaintingStyle.fill;
    paint20fill.color = Color(0xff1a191d).withOpacity(1.0);
    canvas.drawPath(path20, paint20fill);

    Path path21 = Path();
    path21.moveTo(size.width * 0.8020819, size.height * 0.7789757);
    path21.lineTo(size.width * 0.9727746, size.height * 0.6610909);
    path21.lineTo(size.width * 0.9727746, size.height * 0.6529253);
    path21.lineTo(size.width * 0.8021487, size.height * 0.7708102);
    path21.lineTo(size.width * 0.8020819, size.height * 0.7789757);
    path21.close();

    Paint paint21fill = Paint()..style = PaintingStyle.fill;
    paint21fill.color = Color(0xff1a191d).withOpacity(1.0);
    canvas.drawPath(path21, paint21fill);

    Path path22 = Path();
    path22.moveTo(size.width * 0.8021487, size.height * 0.7708102);
    path22.lineTo(size.width * 0.9727746, size.height * 0.6530046);
    path22.arcToPoint(Offset(size.width * 0.9500867, size.height * 0.6062312),
        radius: Radius.elliptical(
            size.width * 0.04991325, size.height * 0.05929919),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path22.lineTo(size.width * 0.7793941, size.height * 0.7240368);
    path22.arcToPoint(Offset(size.width * 0.8021487, size.height * 0.7708102),
        radius: Radius.elliptical(
            size.width * 0.05018017, size.height * 0.05961630),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path22.close();

    Paint paint22fill = Paint()..style = PaintingStyle.fill;
    paint22fill.color = Color(0xff1a191d).withOpacity(1.0);
    canvas.drawPath(path22, paint22fill);

    Path path23 = Path();
    path23.moveTo(size.width * 0.8021487, size.height * 0.7708102);
    path23.lineTo(size.width * 0.9727746, size.height * 0.6530046);
    path23.arcToPoint(Offset(size.width * 0.9698385, size.height * 0.6354844),
        radius: Radius.elliptical(
            size.width * 0.03950354, size.height * 0.04693198),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path23.lineTo(size.width * 0.7991459, size.height * 0.7531314);
    path23.arcToPoint(Offset(size.width * 0.8021487, size.height * 0.7705724),
        radius: Radius.elliptical(
            size.width * 0.04003737, size.height * 0.04756620),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path23.close();

    Paint paint23fill = Paint()..style = PaintingStyle.fill;
    paint23fill.color = Color(0xff1a191d).withOpacity(1.0);
    canvas.drawPath(path23, paint23fill);

    Path path24 = Path();
    path24.moveTo(size.width * 0.7991459, size.height * 0.7531314);
    path24.lineTo(size.width * 0.9698385, size.height * 0.6352466);
    path24.arcToPoint(Offset(size.width * 0.9649006, size.height * 0.6235928),
        radius: Radius.elliptical(
            size.width * 0.05625250, size.height * 0.06683051),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path24.lineTo(size.width * 0.7940745, size.height * 0.7417156);
    path24.arcToPoint(Offset(size.width * 0.7990124, size.height * 0.7533693),
        radius: Radius.elliptical(
            size.width * 0.05004671, size.height * 0.05945775),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path24.close();

    Paint paint24fill = Paint()..style = PaintingStyle.fill;
    paint24fill.color = Color(0xff1a191d).withOpacity(1.0);
    canvas.drawPath(path24, paint24fill);

    Path path25 = Path();
    path25.moveTo(size.width * 0.7940745, size.height * 0.7417156);
    path25.lineTo(size.width * 0.9649006, size.height * 0.6238307);
    path25.arcToPoint(Offset(size.width * 0.9500867, size.height * 0.6062312),
        radius: Radius.elliptical(
            size.width * 0.04550914, size.height * 0.05406691),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path25.lineTo(size.width * 0.7793941, size.height * 0.7240368);
    path25.arcToPoint(Offset(size.width * 0.7940745, size.height * 0.7417156),
        radius: Radius.elliptical(
            size.width * 0.04510877, size.height * 0.05359125),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path25.close();

    Paint paint25fill = Paint()..style = PaintingStyle.fill;
    paint25fill.color = Color(0xff1a191d).withOpacity(1.0);
    canvas.drawPath(path25, paint25fill);

    Path path26 = Path();
    path26.moveTo(size.width * 0.007807287, size.height * 0.2264944);
    path26.lineTo(size.width * 0.02629121, size.height * 0.2140479);
    path26.arcToPoint(Offset(size.width * 0.04537568, size.height * 0.2162676),
        radius: Radius.elliptical(
            size.width * 0.01875083, size.height * 0.02227684),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path26.lineTo(size.width * 0.02669158, size.height * 0.2287141);
    path26.arcToPoint(Offset(size.width * 0.007807287, size.height * 0.2264944),
        radius: Radius.elliptical(
            size.width * 0.01908448, size.height * 0.02267322),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path26.close();

    Paint paint26fill = Paint()..style = PaintingStyle.fill;
    paint26fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path26, paint26fill);

    Path path27 = Path();
    path27.moveTo(size.width * 0.007807287, size.height * 0.2264944);
    path27.lineTo(size.width * 0.02629121, size.height * 0.2140479);
    path27.arcToPoint(Offset(size.width * 0.03836914, size.height * 0.2127002),
        radius: Radius.elliptical(
            size.width * 0.01534766, size.height * 0.01823371),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path27.lineTo(size.width * 0.02001868, size.height * 0.2252259);
    path27.arcToPoint(Offset(size.width * 0.007940745, size.height * 0.2264944),
        radius: Radius.elliptical(
            size.width * 0.01568130, size.height * 0.01863009),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path27.close();

    Paint paint27fill = Paint()..style = PaintingStyle.fill;
    paint27fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path27, paint27fill);

    Path path28 = Path();
    path28.moveTo(size.width * 0.02001868, size.height * 0.2252259);
    path28.lineTo(size.width * 0.03836914, size.height * 0.2124623);
    path28.arcToPoint(Offset(size.width * 0.04504204, size.height * 0.2160298),
        radius: Radius.elliptical(
            size.width * 0.02956092, size.height * 0.03511971),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path28.lineTo(size.width * 0.02669158, size.height * 0.2287141);
    path28.arcToPoint(Offset(size.width * 0.02001868, size.height * 0.2252259),
        radius: Radius.elliptical(
            size.width * 0.02809289, size.height * 0.03337561),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path28.close();

    Paint paint28fill = Paint()..style = PaintingStyle.fill;
    paint28fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path28, paint28fill);

    Path path29 = Path();
    path29.moveTo(size.width * 0.02689177, size.height * 0.2287141);
    path29.lineTo(size.width * 0.04537568, size.height * 0.2160298);
    path29.lineTo(size.width * 0.7821967, size.height * 0.7214206);
    path29.lineTo(size.width * 0.7637128, size.height * 0.7341050);
    path29.lineTo(size.width * 0.02689177, size.height * 0.2287141);
    path29.close();

    Paint paint29fill = Paint()..style = PaintingStyle.fill;
    paint29fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path29, paint29fill);

    Path path30 = Path();
    path30.moveTo(size.width * 0.8010810, size.height * 0.7968131);
    path30.lineTo(size.width * 0.7825971, size.height * 0.8095767);
    path30.arcToPoint(Offset(size.width * 0.7904711, size.height * 0.7891232),
        radius: Radius.elliptical(
            size.width * 0.01875083, size.height * 0.02227684),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path30.arcToPoint(Offset(size.width * 0.7637795, size.height * 0.7341050),
        radius: Radius.elliptical(
            size.width * 0.05918858, size.height * 0.07031869),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path30.lineTo(size.width * 0.7821967, size.height * 0.7214206);
    path30.arcToPoint(Offset(size.width * 0.8088883, size.height * 0.7769145),
        radius: Radius.elliptical(
            size.width * 0.05892166, size.height * 0.07000159),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path30.arcToPoint(Offset(size.width * 0.8010810, size.height * 0.7968131),
        radius: Radius.elliptical(
            size.width * 0.01861738, size.height * 0.02211828),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path30.close();

    Paint paint30fill = Paint()..style = PaintingStyle.fill;
    paint30fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path30, paint30fill);

    Path path31 = Path();
    path31.moveTo(size.width * 0.7637128, size.height * 0.7341050);
    path31.lineTo(size.width * 0.7821967, size.height * 0.7214206);
    path31.lineTo(size.width * 0.7843320, size.height * 0.7230062);
    path31.lineTo(size.width * 0.7658481, size.height * 0.7357698);
    path31.lineTo(size.width * 0.7637128, size.height * 0.7341842);
    path31.close();

    Paint paint31fill = Paint()..style = PaintingStyle.fill;
    paint31fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path31, paint31fill);

    Path path32 = Path();
    path32.moveTo(size.width * 0.7658481, size.height * 0.7356905);
    path32.lineTo(size.width * 0.7843320, size.height * 0.7229269);
    path32.arcToPoint(Offset(size.width * 0.7940745, size.height * 0.7330744),
        radius: Radius.elliptical(
            size.width * 0.04957961, size.height * 0.05890281),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path32.lineTo(size.width * 0.7755906, size.height * 0.7458380);
    path32.arcToPoint(Offset(size.width * 0.7660483, size.height * 0.7356905),
        radius: Radius.elliptical(
            size.width * 0.04957961, size.height * 0.05890281),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path32.close();

    Paint paint32fill = Paint()..style = PaintingStyle.fill;
    paint32fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path32, paint32fill);

    Path path33 = Path();
    path33.moveTo(size.width * 0.7753904, size.height * 0.7458380);
    path33.lineTo(size.width * 0.7940745, size.height * 0.7330744);
    path33.arcToPoint(Offset(size.width * 0.8044842, size.height * 0.7524972),
        radius: Radius.elliptical(
            size.width * 0.06546110, size.height * 0.07777073),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path33.lineTo(size.width * 0.7860003, size.height * 0.7652608);
    path33.arcToPoint(Offset(size.width * 0.7755906, size.height * 0.7458380),
        radius: Radius.elliptical(
            size.width * 0.06312558, size.height * 0.07499604),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path33.close();

    Paint paint33fill = Paint()..style = PaintingStyle.fill;
    paint33fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path33, paint33fill);

    Path path34 = Path();
    path34.moveTo(size.width * 0.7858001, size.height * 0.7652608);
    path34.lineTo(size.width * 0.8042840, size.height * 0.7524972);
    path34.arcToPoint(Offset(size.width * 0.8079541, size.height * 0.7660536),
        radius: Radius.elliptical(
            size.width * 0.05278260, size.height * 0.06270810),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path34.lineTo(size.width * 0.7895369, size.height * 0.7787379);
    path34.arcToPoint(Offset(size.width * 0.7858001, size.height * 0.7652608),
        radius: Radius.elliptical(
            size.width * 0.05785400, size.height * 0.06873315),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path34.close();

    Paint paint34fill = Paint()..style = PaintingStyle.fill;
    paint34fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path34, paint34fill);

    Path path35 = Path();
    path35.moveTo(size.width * 0.7895369, size.height * 0.7787379);
    path35.lineTo(size.width * 0.8079541, size.height * 0.7660536);
    path35.arcToPoint(Offset(size.width * 0.8088883, size.height * 0.7764389),
        radius: Radius.elliptical(
            size.width * 0.03937008, size.height * 0.04677343),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path35.cubicTo(
        size.width * 0.8088883,
        size.height * 0.7773109,
        size.width * 0.8088883,
        size.height * 0.7781830,
        size.width * 0.8088883,
        size.height * 0.7790550);
    path35.lineTo(size.width * 0.7904044, size.height * 0.7918186);
    path35.cubicTo(
        size.width * 0.7904044,
        size.height * 0.7909466,
        size.width * 0.7904044,
        size.height * 0.7900745,
        size.width * 0.7904044,
        size.height * 0.7891232);
    path35.arcToPoint(Offset(size.width * 0.7894702, size.height * 0.7787379),
        radius: Radius.elliptical(
            size.width * 0.04484185, size.height * 0.05327414),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path35.close();

    Paint paint35fill = Paint()..style = PaintingStyle.fill;
    paint35fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path35, paint35fill);

    Path path36 = Path();
    path36.moveTo(size.width * 0.7903376, size.height * 0.7918186);
    path36.lineTo(size.width * 0.8088216, size.height * 0.7790550);
    path36.arcToPoint(Offset(size.width * 0.8010810, size.height * 0.7968131),
        radius: Radius.elliptical(
            size.width * 0.01754971, size.height * 0.02084985),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path36.lineTo(size.width * 0.7825971, size.height * 0.8095767);
    path36.arcToPoint(Offset(size.width * 0.7903376, size.height * 0.7918186),
        radius: Radius.elliptical(
            size.width * 0.01754971, size.height * 0.02084985),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path36.close();

    Paint paint36fill = Paint()..style = PaintingStyle.fill;
    paint36fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path36, paint36fill);

    Path path37 = Path();
    path37.moveTo(size.width * 0.7637128, size.height * 0.7341050);
    path37.arcToPoint(Offset(size.width * 0.7904044, size.height * 0.7891232),
        radius: Radius.elliptical(
            size.width * 0.05918858, size.height * 0.07031869),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path37.cubicTo(
        size.width * 0.7904044,
        size.height * 0.8094181,
        size.width * 0.7782597,
        size.height * 0.8175044,
        size.width * 0.7637128,
        size.height * 0.8073569);
    path37.lineTo(size.width * 0.02669158, size.height * 0.3019661);
    path37.arcToPoint(Offset(0, size.height * 0.2469478),
        radius: Radius.elliptical(
            size.width * 0.05892166, size.height * 0.07000159),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path37.cubicTo(
        0,
        size.height * 0.2267322,
        size.width * 0.01207794,
        size.height * 0.2185667,
        size.width * 0.02669158,
        size.height * 0.2287141);
    path37.close();

    Paint paint37fill = Paint()..style = PaintingStyle.fill;
    paint37fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path37, paint37fill);

    Path path38 = Path();
    path38.moveTo(size.width * 0.4824503, size.height * 0.5707944);
    path38.lineTo(size.width * 0.4883224, size.height * 0.5667512);
    path38.arcToPoint(Offset(size.width * 0.4988656, size.height * 0.5679404),
        radius: Radius.elliptical(
            size.width * 0.01027626, size.height * 0.01220866),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path38.lineTo(size.width * 0.4929935, size.height * 0.5719835);
    path38.arcToPoint(Offset(size.width * 0.4824503, size.height * 0.5707944),
        radius: Radius.elliptical(
            size.width * 0.01047644, size.height * 0.01244649),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path38.close();

    Paint paint38fill = Paint()..style = PaintingStyle.fill;
    paint38fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path38, paint38fill);

    Path path39 = Path();
    path39.moveTo(size.width * 0.4824503, size.height * 0.5707944);
    path39.lineTo(size.width * 0.4883224, size.height * 0.5667512);
    path39.arcToPoint(Offset(size.width * 0.4928600, size.height * 0.5655621),
        radius: Radius.elliptical(
            size.width * 0.007473642, size.height * 0.008879023),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path39.lineTo(size.width * 0.4869879, size.height * 0.5696052);
    path39.arcToPoint(Offset(size.width * 0.4824503, size.height * 0.5707944),
        radius: Radius.elliptical(
            size.width * 0.007473642, size.height * 0.008879023),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path39.close();

    Paint paint39fill = Paint()..style = PaintingStyle.fill;
    paint39fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path39, paint39fill);

    Path path40 = Path();
    path40.moveTo(size.width * 0.4871213, size.height * 0.5698430);
    path40.lineTo(size.width * 0.4929935, size.height * 0.5657999);
    path40.arcToPoint(Offset(size.width * 0.4961297, size.height * 0.5665927),
        radius: Radius.elliptical(
            size.width * 0.01101028, size.height * 0.01308070),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path40.lineTo(size.width * 0.4902576, size.height * 0.5706358);
    path40.arcToPoint(Offset(size.width * 0.4871213, size.height * 0.5698430),
        radius: Radius.elliptical(
            size.width * 0.01101028, size.height * 0.01308070),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path40.close();

    Paint paint40fill = Paint()..style = PaintingStyle.fill;
    paint40fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path40, paint40fill);

    Path path41 = Path();
    path41.moveTo(size.width * 0.4901241, size.height * 0.5707944);
    path41.lineTo(size.width * 0.4959963, size.height * 0.5667512);
    path41.arcToPoint(Offset(size.width * 0.4988656, size.height * 0.5683368),
        radius: Radius.elliptical(
            size.width * 0.01561457, size.height * 0.01855082),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path41.lineTo(size.width * 0.4929935, size.height * 0.5723799);
    path41.arcToPoint(Offset(size.width * 0.4901241, size.height * 0.5707944),
        radius: Radius.elliptical(
            size.width * 0.02175364, size.height * 0.02584430),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path41.close();

    Paint paint41fill = Paint()..style = PaintingStyle.fill;
    paint41fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path41, paint41fill);

    Path path42 = Path();
    path42.moveTo(size.width * 0.5092753, size.height * 0.6097194);
    path42.lineTo(size.width * 0.5034032, size.height * 0.6138418);
    path42.arcToPoint(Offset(size.width * 0.5077406, size.height * 0.6025052),
        radius: Radius.elliptical(
            size.width * 0.01047644, size.height * 0.01244649),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path42.arcToPoint(Offset(size.width * 0.4929935, size.height * 0.5722213),
        radius: Radius.elliptical(
            size.width * 0.03263046, size.height * 0.03876645),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path42.lineTo(size.width * 0.4988656, size.height * 0.5681782);
    path42.arcToPoint(Offset(size.width * 0.5138129, size.height * 0.5984620),
        radius: Radius.elliptical(
            size.width * 0.03263046, size.height * 0.03876645),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path42.arcToPoint(Offset(size.width * 0.5092753, size.height * 0.6097194),
        radius: Radius.elliptical(
            size.width * 0.01027626, size.height * 0.01220866),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path42.close();

    Paint paint42fill = Paint()..style = PaintingStyle.fill;
    paint42fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path42, paint42fill);

    Path path43 = Path();
    path43.moveTo(size.width * 0.4929935, size.height * 0.5722213);
    path43.lineTo(size.width * 0.4988656, size.height * 0.5681782);
    path43.lineTo(size.width * 0.4988656, size.height * 0.5681782);
    path43.lineTo(size.width * 0.4929935, size.height * 0.5722213);
    path43.close();

    Paint paint43fill = Paint()..style = PaintingStyle.fill;
    paint43fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path43, paint43fill);

    Path path44 = Path();
    path44.moveTo(size.width * 0.4931269, size.height * 0.5723006);
    path44.lineTo(size.width * 0.4989991, size.height * 0.5682575);
    path44.arcToPoint(Offset(size.width * 0.5022021, size.height * 0.5709529),
        radius: Radius.elliptical(
            size.width * 0.02141999, size.height * 0.02544792),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path44.lineTo(size.width * 0.4963299, size.height * 0.5750753);
    path44.arcToPoint(Offset(size.width * 0.4931269, size.height * 0.5723006),
        radius: Radius.elliptical(
            size.width * 0.02182037, size.height * 0.02592358),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path44.close();

    Paint paint44fill = Paint()..style = PaintingStyle.fill;
    paint44fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path44, paint44fill);

    Path path45 = Path();
    path45.moveTo(size.width * 0.4963299, size.height * 0.5750753);
    path45.lineTo(size.width * 0.5022021, size.height * 0.5709529);
    path45.cubicTo(
        size.width * 0.5032697,
        size.height * 0.5720628,
        size.width * 0.5043374,
        size.height * 0.5733312,
        size.width * 0.5053383,
        size.height * 0.5745997);
    path45.lineTo(size.width * 0.4994662, size.height * 0.5787221);
    path45.arcToPoint(Offset(size.width * 0.4963299, size.height * 0.5750753),
        radius: Radius.elliptical(
            size.width * 0.02709195, size.height * 0.03218646),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path45.close();

    Paint paint45fill = Paint()..style = PaintingStyle.fill;
    paint45fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path45, paint45fill);

    Path path46 = Path();
    path46.moveTo(size.width * 0.4994662, size.height * 0.5787221);
    path46.lineTo(size.width * 0.5053383, size.height * 0.5745997);
    path46.arcToPoint(Offset(size.width * 0.5110103, size.height * 0.5853020),
        radius: Radius.elliptical(
            size.width * 0.03603363, size.height * 0.04280958),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path46.lineTo(size.width * 0.5051381, size.height * 0.5893452);
    path46.arcToPoint(Offset(size.width * 0.4994662, size.height * 0.5787221),
        radius: Radius.elliptical(
            size.width * 0.03563326, size.height * 0.04233391),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path46.close();

    Paint paint46fill = Paint()..style = PaintingStyle.fill;
    paint46fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path46, paint46fill);

    Path path47 = Path();
    path47.moveTo(size.width * 0.5051381, size.height * 0.5893452);
    path47.lineTo(size.width * 0.5110103, size.height * 0.5853020);
    path47.cubicTo(
        size.width * 0.5115441,
        size.height * 0.5867290,
        size.width * 0.5120112,
        size.height * 0.5882353,
        size.width * 0.5124116,
        size.height * 0.5896623);
    path47.lineTo(size.width * 0.5065394, size.height * 0.5937054);
    path47.cubicTo(
        size.width * 0.5061391,
        size.height * 0.5922784,
        size.width * 0.5056720,
        size.height * 0.5907722,
        size.width * 0.5051381,
        size.height * 0.5893452);
    path47.close();

    Paint paint47fill = Paint()..style = PaintingStyle.fill;
    paint47fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path47, paint47fill);

    Path path48 = Path();
    path48.moveTo(size.width * 0.5065394, size.height * 0.5937054);
    path48.lineTo(size.width * 0.5124116, size.height * 0.5896623);
    path48.arcToPoint(Offset(size.width * 0.5132791, size.height * 0.5942603),
        radius: Radius.elliptical(
            size.width * 0.02669158, size.height * 0.03171080),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path48.lineTo(size.width * 0.5074069, size.height * 0.5983035);
    path48.arcToPoint(Offset(size.width * 0.5065394, size.height * 0.5937054),
        radius: Radius.elliptical(
            size.width * 0.02902709, size.height * 0.03448549),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path48.close();

    Paint paint48fill = Paint()..style = PaintingStyle.fill;
    paint48fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path48, paint48fill);

    Path path49 = Path();
    path49.moveTo(size.width * 0.5071400, size.height * 0.5983035);
    path49.lineTo(size.width * 0.5130121, size.height * 0.5942603);
    path49.arcToPoint(Offset(size.width * 0.5130121, size.height * 0.5984620),
        radius: Radius.elliptical(
            size.width * 0.02182037, size.height * 0.02592358),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path49.lineTo(size.width * 0.5130121, size.height * 0.5984620);
    path49.lineTo(size.width * 0.5071400, size.height * 0.6025052);
    path49.lineTo(size.width * 0.5071400, size.height * 0.6025052);
    path49.arcToPoint(Offset(size.width * 0.5071400, size.height * 0.5983035),
        radius: Radius.elliptical(
            size.width * 0.02182037, size.height * 0.02592358),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path49.close();

    Paint paint49fill = Paint()..style = PaintingStyle.fill;
    paint49fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path49, paint49fill);

    Path path50 = Path();
    path50.moveTo(size.width * 0.5077406, size.height * 0.6025052);
    path50.lineTo(size.width * 0.5138129, size.height * 0.5985413);
    path50.arcToPoint(Offset(size.width * 0.5134125, size.height * 0.6027430),
        radius: Radius.elliptical(
            size.width * 0.01468037, size.height * 0.01744094),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path50.lineTo(size.width * 0.5075404, size.height * 0.6067861);
    path50.arcToPoint(Offset(size.width * 0.5079407, size.height * 0.6025844),
        radius: Radius.elliptical(
            size.width * 0.01434672, size.height * 0.01704455),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path50.close();

    Paint paint50fill = Paint()..style = PaintingStyle.fill;
    paint50fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path50, paint50fill);

    Path path51 = Path();
    path51.moveTo(size.width * 0.5071400, size.height * 0.6067861);
    path51.lineTo(size.width * 0.5130121, size.height * 0.6027430);
    path51.arcToPoint(Offset(size.width * 0.5090751, size.height * 0.6097194),
        radius: Radius.elliptical(
            size.width * 0.008608034, size.height * 0.01022673),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path51.lineTo(size.width * 0.5032030, size.height * 0.6138418);
    path51.arcToPoint(Offset(size.width * 0.5071400, size.height * 0.6067861),
        radius: Radius.elliptical(
            size.width * 0.008874950, size.height * 0.01054384),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path51.close();

    Paint paint51fill = Paint()..style = PaintingStyle.fill;
    paint51fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path51, paint51fill);

    Path path52 = Path();
    path52.moveTo(size.width * 0.4929935, size.height * 0.5722213);
    path52.arcToPoint(Offset(size.width * 0.5077406, size.height * 0.6025052),
        radius: Radius.elliptical(
            size.width * 0.03263046, size.height * 0.03876645),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path52.cubicTo(
        size.width * 0.5077406,
        size.height * 0.6136832,
        size.width * 0.5010677,
        size.height * 0.6183606,
        size.width * 0.4929267,
        size.height * 0.6125733);
    path52.arcToPoint(Offset(size.width * 0.4781796, size.height * 0.5822895),
        radius: Radius.elliptical(
            size.width * 0.03229681, size.height * 0.03837007),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path52.cubicTo(
        size.width * 0.4781796,
        size.height * 0.5707944,
        size.width * 0.4848525,
        size.height * 0.5665927,
        size.width * 0.4929935,
        size.height * 0.5722213);
    path52.close();

    Paint paint52fill = Paint()..style = PaintingStyle.fill;
    paint52fill.color = Color(0xff252529).withOpacity(1.0);
    canvas.drawPath(path52, paint52fill);

    Path path53 = Path();
    path53.moveTo(size.width * 0.4824503, size.height * 0.5811796);
    path53.lineTo(size.width * 0.4862538, size.height * 0.5784842);
    path53.arcToPoint(Offset(size.width * 0.4929267, size.height * 0.5792770),
        radius: Radius.elliptical(
            size.width * 0.006672895, size.height * 0.007927699),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path53.lineTo(size.width * 0.4891232, size.height * 0.5819724);
    path53.arcToPoint(Offset(size.width * 0.4824503, size.height * 0.5811796),
        radius: Radius.elliptical(
            size.width * 0.006672895, size.height * 0.007927699),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path53.close();

    Paint paint53fill = Paint()..style = PaintingStyle.fill;
    paint53fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path53, paint53fill);

    Path path54 = Path();
    path54.moveTo(size.width * 0.4824503, size.height * 0.5811796);
    path54.lineTo(size.width * 0.4862538, size.height * 0.5784842);
    path54.arcToPoint(Offset(size.width * 0.4892566, size.height * 0.5777707),
        radius: Radius.elliptical(
            size.width * 0.005004671, size.height * 0.005945775),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path54.lineTo(size.width * 0.4853864, size.height * 0.5803869);
    path54.arcToPoint(Offset(size.width * 0.4824503, size.height * 0.5811796),
        radius: Radius.elliptical(
            size.width * 0.004937942, size.height * 0.005866498),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path54.close();

    Paint paint54fill = Paint()..style = PaintingStyle.fill;
    paint54fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path54, paint54fill);

    Path path55 = Path();
    path55.moveTo(size.width * 0.4853864, size.height * 0.5803869);
    path55.lineTo(size.width * 0.4892566, size.height * 0.5777707);
    path55.arcToPoint(Offset(size.width * 0.4912585, size.height * 0.5782464),
        radius: Radius.elliptical(
            size.width * 0.005338316, size.height * 0.006342160),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path55.lineTo(size.width * 0.4874550, size.height * 0.5809418);
    path55.arcToPoint(Offset(size.width * 0.4853864, size.height * 0.5803869),
        radius: Radius.elliptical(
            size.width * 0.008341118, size.height * 0.009909624),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path55.close();

    Paint paint55fill = Paint()..style = PaintingStyle.fill;
    paint55fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path55, paint55fill);

    Path path56 = Path();
    path56.moveTo(size.width * 0.4874550, size.height * 0.5809418);
    path56.lineTo(size.width * 0.4912585, size.height * 0.5782464);
    path56.arcToPoint(Offset(size.width * 0.4931269, size.height * 0.5792770),
        radius: Radius.elliptical(
            size.width * 0.01167757, size.height * 0.01387347),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path56.lineTo(size.width * 0.4893234, size.height * 0.5819724);
    path56.arcToPoint(Offset(size.width * 0.4874550, size.height * 0.5809418),
        radius: Radius.elliptical(
            size.width * 0.009208595, size.height * 0.01094023),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path56.close();

    Paint paint56fill = Paint()..style = PaintingStyle.fill;
    paint56fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path56, paint56fill);

    Path path57 = Path();
    path57.moveTo(size.width * 0.4999333, size.height * 0.6063897);
    path57.lineTo(size.width * 0.4961297, size.height * 0.6090851);
    path57.arcToPoint(Offset(size.width * 0.4989323, size.height * 0.6017124),
        radius: Radius.elliptical(
            size.width * 0.006672895, size.height * 0.007927699),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path57.arcToPoint(Offset(size.width * 0.4893234, size.height * 0.5819724),
        radius: Radius.elliptical(
            size.width * 0.02108635, size.height * 0.02505153),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path57.lineTo(size.width * 0.4931269, size.height * 0.5792770);
    path57.arcToPoint(Offset(size.width * 0.5027359, size.height * 0.5990962),
        radius: Radius.elliptical(
            size.width * 0.02121981, size.height * 0.02521008),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path57.arcToPoint(Offset(size.width * 0.4999333, size.height * 0.6063897),
        radius: Radius.elliptical(
            size.width * 0.006672895, size.height * 0.007927699),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path57.close();

    Paint paint57fill = Paint()..style = PaintingStyle.fill;
    paint57fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path57, paint57fill);

    Path path58 = Path();
    path58.moveTo(size.width * 0.4893234, size.height * 0.5819724);
    path58.lineTo(size.width * 0.4931269, size.height * 0.5792770);
    path58.lineTo(size.width * 0.4931269, size.height * 0.5792770);
    path58.lineTo(size.width * 0.4892566, size.height * 0.5818931);
    path58.close();

    Paint paint58fill = Paint()..style = PaintingStyle.fill;
    paint58fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path58, paint58fill);

    Path path59 = Path();
    path59.moveTo(size.width * 0.4893901, size.height * 0.5819724);
    path59.lineTo(size.width * 0.4932604, size.height * 0.5793563);
    path59.arcToPoint(Offset(size.width * 0.4953290, size.height * 0.5811004),
        radius: Radius.elliptical(
            size.width * 0.02001868, size.height * 0.02378310),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path59.lineTo(size.width * 0.4915254, size.height * 0.5837958);
    path59.arcToPoint(Offset(size.width * 0.4893901, size.height * 0.5819724),
        radius: Radius.elliptical(
            size.width * 0.02128653, size.height * 0.02528936),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path59.close();

    Paint paint59fill = Paint()..style = PaintingStyle.fill;
    paint59fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path59, paint59fill);

    Path path60 = Path();
    path60.moveTo(size.width * 0.4915254, size.height * 0.5837958);
    path60.lineTo(size.width * 0.4953290, size.height * 0.5811004);
    path60.arcToPoint(Offset(size.width * 0.4973308, size.height * 0.5834787),
        radius: Radius.elliptical(
            size.width * 0.01421327, size.height * 0.01688600),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path60.lineTo(size.width * 0.4935273, size.height * 0.5861741);
    path60.quadraticBezierTo(size.width * 0.4925264, size.height * 0.5849057,
        size.width * 0.4915254, size.height * 0.5837958);
    path60.close();

    Paint paint60fill = Paint()..style = PaintingStyle.fill;
    paint60fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path60, paint60fill);

    Path path61 = Path();
    path61.moveTo(size.width * 0.4937942, size.height * 0.5861741);
    path61.lineTo(size.width * 0.4975978, size.height * 0.5834787);
    path61.arcToPoint(Offset(size.width * 0.5013346, size.height * 0.5904550),
        radius: Radius.elliptical(
            size.width * 0.02248766, size.height * 0.02671635),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path61.lineTo(size.width * 0.4975310, size.height * 0.5931505);
    path61.arcToPoint(Offset(size.width * 0.4937942, size.height * 0.5861741),
        radius: Radius.elliptical(
            size.width * 0.02148672, size.height * 0.02552719),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path61.close();

    Paint paint61fill = Paint()..style = PaintingStyle.fill;
    paint61fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path61, paint61fill);

    Path path62 = Path();
    path62.moveTo(size.width * 0.4972641, size.height * 0.5931505);
    path62.lineTo(size.width * 0.5010677, size.height * 0.5904550);
    path62.cubicTo(
        size.width * 0.5010677,
        size.height * 0.5914064,
        size.width * 0.5017350,
        size.height * 0.5923577,
        size.width * 0.5020019,
        size.height * 0.5933090);
    path62.lineTo(size.width * 0.4981316, size.height * 0.5959252);
    path62.arcToPoint(Offset(size.width * 0.4972641, size.height * 0.5931505),
        radius: Radius.elliptical(
            size.width * 0.01394635, size.height * 0.01656889),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path62.close();

    Paint paint62fill = Paint()..style = PaintingStyle.fill;
    paint62fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path62, paint62fill);

    Path path63 = Path();
    path63.moveTo(size.width * 0.4981316, size.height * 0.5959252);
    path63.lineTo(size.width * 0.5020019, size.height * 0.5933090);
    path63.cubicTo(
        size.width * 0.5020019,
        size.height * 0.5943396,
        size.width * 0.5024022,
        size.height * 0.5952909,
        size.width * 0.5025357,
        size.height * 0.5963215);
    path63.lineTo(size.width * 0.4987322, size.height * 0.5989377);
    path63.arcToPoint(Offset(size.width * 0.4981316, size.height * 0.5959252),
        radius: Radius.elliptical(
            size.width * 0.02001868, size.height * 0.02378310),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path63.close();

    Paint paint63fill = Paint()..style = PaintingStyle.fill;
    paint63fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path63, paint63fill);

    Path path64 = Path();
    path64.moveTo(size.width * 0.4987322, size.height * 0.5989377);
    path64.lineTo(size.width * 0.5025357, size.height * 0.5963215);
    path64.arcToPoint(Offset(size.width * 0.5025357, size.height * 0.5990962),
        radius: Radius.elliptical(
            size.width * 0.01381289, size.height * 0.01641034),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path64.lineTo(size.width * 0.5025357, size.height * 0.5990962);
    path64.lineTo(size.width * 0.4987322, size.height * 0.6017124);
    path64.lineTo(size.width * 0.4987322, size.height * 0.6017124);
    path64.arcToPoint(Offset(size.width * 0.4987322, size.height * 0.5989377),
        radius: Radius.elliptical(
            size.width * 0.01441345, size.height * 0.01712383),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path64.close();

    Paint paint64fill = Paint()..style = PaintingStyle.fill;
    paint64fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path64, paint64fill);

    Path path65 = Path();
    path65.moveTo(size.width * 0.4989323, size.height * 0.6017124);
    path65.lineTo(size.width * 0.5027359, size.height * 0.5990962);
    path65.arcToPoint(Offset(size.width * 0.5027359, size.height * 0.6018709),
        radius: Radius.elliptical(
            size.width * 0.008608034, size.height * 0.01022673),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path65.lineTo(size.width * 0.4989323, size.height * 0.6044871);
    path65.arcToPoint(Offset(size.width * 0.4989323, size.height * 0.6017124),
        radius: Radius.elliptical(
            size.width * 0.01187775, size.height * 0.01411130),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path65.close();

    Paint paint65fill = Paint()..style = PaintingStyle.fill;
    paint65fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path65, paint65fill);

    Path path66 = Path();
    path66.moveTo(size.width * 0.4986654, size.height * 0.6044871);
    path66.lineTo(size.width * 0.5024690, size.height * 0.6018709);
    path66.arcToPoint(Offset(size.width * 0.4999333, size.height * 0.6063897),
        radius: Radius.elliptical(
            size.width * 0.005538503, size.height * 0.006579990),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path66.lineTo(size.width * 0.4961297, size.height * 0.6090851);
    path66.arcToPoint(Offset(size.width * 0.4986654, size.height * 0.6044871),
        radius: Radius.elliptical(
            size.width * 0.005872147, size.height * 0.006976375),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path66.close();

    Paint paint66fill = Paint()..style = PaintingStyle.fill;
    paint66fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path66, paint66fill);

    Path path67 = Path();
    path67.moveTo(size.width * 0.4893234, size.height * 0.5819724);
    path67.arcToPoint(Offset(size.width * 0.4989323, size.height * 0.6017124),
        radius: Radius.elliptical(
            size.width * 0.02108635, size.height * 0.02505153),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path67.cubicTo(
        size.width * 0.4989323,
        size.height * 0.6090059,
        size.width * 0.4945950,
        size.height * 0.6119391,
        size.width * 0.4892566,
        size.height * 0.6082924);
    path67.arcToPoint(Offset(size.width * 0.4796477, size.height * 0.5884731),
        radius: Radius.elliptical(
            size.width * 0.02135326, size.height * 0.02536864),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path67.cubicTo(
        size.width * 0.4796477,
        size.height * 0.5812589,
        size.width * 0.4839851,
        size.height * 0.5782464,
        size.width * 0.4893234,
        size.height * 0.5819724);
    path67.close();

    Paint paint67fill = Paint()..style = PaintingStyle.fill;
    paint67fill.color = Color(0xff252529).withOpacity(1.0);
    canvas.drawPath(path67, paint67fill);

    Path path68 = Path();
    path68.moveTo(size.width * 0.6177099, size.height * 0.6612494);
    path68.lineTo(size.width * 0.6236487, size.height * 0.6572063);
    path68.arcToPoint(Offset(size.width * 0.6341252, size.height * 0.6584747),
        radius: Radius.elliptical(
            size.width * 0.01034299, size.height * 0.01228793),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path68.lineTo(size.width * 0.6282530, size.height * 0.6625178);
    path68.arcToPoint(Offset(size.width * 0.6177099, size.height * 0.6612494),
        radius: Radius.elliptical(
            size.width * 0.01047644, size.height * 0.01244649),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path68.close();

    Paint paint68fill = Paint()..style = PaintingStyle.fill;
    paint68fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path68, paint68fill);

    Path path69 = Path();
    path69.moveTo(size.width * 0.6177099, size.height * 0.6612494);
    path69.lineTo(size.width * 0.6236487, size.height * 0.6572063);
    path69.arcToPoint(Offset(size.width * 0.6281863, size.height * 0.6560171),
        radius: Radius.elliptical(
            size.width * 0.008274389, size.height * 0.009830347),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path69.lineTo(size.width * 0.6223142, size.height * 0.6601395);
    path69.arcToPoint(Offset(size.width * 0.6177099, size.height * 0.6612494),
        radius: Radius.elliptical(
            size.width * 0.008074203, size.height * 0.009592516),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path69.close();

    Paint paint69fill = Paint()..style = PaintingStyle.fill;
    paint69fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path69, paint69fill);

    Path path70 = Path();
    path70.moveTo(size.width * 0.6223142, size.height * 0.6601395);
    path70.lineTo(size.width * 0.6281863, size.height * 0.6560171);
    path70.arcToPoint(Offset(size.width * 0.6312558, size.height * 0.6568892),
        radius: Radius.elliptical(
            size.width * 0.01134392, size.height * 0.01347709),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path70.lineTo(size.width * 0.6253837, size.height * 0.6609323);
    path70.arcToPoint(Offset(size.width * 0.6223142, size.height * 0.6601395),
        radius: Radius.elliptical(
            size.width * 0.01107701, size.height * 0.01315998),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path70.close();

    Paint paint70fill = Paint()..style = PaintingStyle.fill;
    paint70fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path70, paint70fill);

    Path path71 = Path();
    path71.moveTo(size.width * 0.6253837, size.height * 0.6609323);
    path71.lineTo(size.width * 0.6312558, size.height * 0.6568892);
    path71.arcToPoint(Offset(size.width * 0.6341252, size.height * 0.6584747),
        radius: Radius.elliptical(
            size.width * 0.01221140, size.height * 0.01450769),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path71.lineTo(size.width * 0.6282530, size.height * 0.6625178);
    path71.arcToPoint(Offset(size.width * 0.6253837, size.height * 0.6609323),
        radius: Radius.elliptical(
            size.width * 0.01561457, size.height * 0.01855082),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path71.close();

    Paint paint71fill = Paint()..style = PaintingStyle.fill;
    paint71fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path71, paint71fill);

    Path path72 = Path();
    path72.moveTo(size.width * 0.6445349, size.height * 0.7000159);
    path72.lineTo(size.width * 0.6386628, size.height * 0.7040590);
    path72.arcToPoint(Offset(size.width * 0.6430001, size.height * 0.6928016),
        radius: Radius.elliptical(
            size.width * 0.01027626, size.height * 0.01220866),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path72.arcToPoint(Offset(size.width * 0.6282530, size.height * 0.6625178),
        radius: Radius.elliptical(
            size.width * 0.03256373, size.height * 0.03868717),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path72.lineTo(size.width * 0.6341252, size.height * 0.6584747);
    path72.arcToPoint(Offset(size.width * 0.6488723, size.height * 0.6887585),
        radius: Radius.elliptical(
            size.width * 0.03243027, size.height * 0.03852862),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path72.arcToPoint(Offset(size.width * 0.6445349, size.height * 0.7000159),
        radius: Radius.elliptical(
            size.width * 0.01027626, size.height * 0.01220866),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path72.close();

    Paint paint72fill = Paint()..style = PaintingStyle.fill;
    paint72fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path72, paint72fill);

    Path path73 = Path();
    path73.moveTo(size.width * 0.6282530, size.height * 0.6625178);
    path73.lineTo(size.width * 0.6341252, size.height * 0.6584747);
    path73.lineTo(size.width * 0.6341252, size.height * 0.6584747);
    path73.lineTo(size.width * 0.6282530, size.height * 0.6625178);
    path73.close();

    Paint paint73fill = Paint()..style = PaintingStyle.fill;
    paint73fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path73, paint73fill);

    Path path74 = Path();
    path74.moveTo(size.width * 0.6283865, size.height * 0.6625971);
    path74.lineTo(size.width * 0.6342586, size.height * 0.6585540);
    path74.arcToPoint(Offset(size.width * 0.6374616, size.height * 0.6612494),
        radius: Radius.elliptical(
            size.width * 0.01748298, size.height * 0.02077057),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path74.lineTo(size.width * 0.6315895, size.height * 0.6652925);
    path74.arcToPoint(Offset(size.width * 0.6283865, size.height * 0.6625971),
        radius: Radius.elliptical(
            size.width * 0.02141999, size.height * 0.02544792),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path74.close();

    Paint paint74fill = Paint()..style = PaintingStyle.fill;
    paint74fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path74, paint74fill);

    Path path75 = Path();
    path75.moveTo(size.width * 0.6315895, size.height * 0.6652925);
    path75.lineTo(size.width * 0.6374616, size.height * 0.6612494);
    path75.arcToPoint(Offset(size.width * 0.6405979, size.height * 0.6648961),
        radius: Radius.elliptical(
            size.width * 0.02722541, size.height * 0.03234501),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path75.lineTo(size.width * 0.6347257, size.height * 0.6689393);
    path75.arcToPoint(Offset(size.width * 0.6315895, size.height * 0.6652925),
        radius: Radius.elliptical(
            size.width * 0.02722541, size.height * 0.03234501),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path75.close();

    Paint paint75fill = Paint()..style = PaintingStyle.fill;
    paint75fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path75, paint75fill);

    Path path76 = Path();
    path76.moveTo(size.width * 0.6347257, size.height * 0.6689393);
    path76.lineTo(size.width * 0.6405979, size.height * 0.6648961);
    path76.arcToPoint(Offset(size.width * 0.6463366, size.height * 0.6755985),
        radius: Radius.elliptical(
            size.width * 0.03696784, size.height * 0.04391945),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path76.lineTo(size.width * 0.6403977, size.height * 0.6796417);
    path76.arcToPoint(Offset(size.width * 0.6347257, size.height * 0.6689393),
        radius: Radius.elliptical(
            size.width * 0.03603363, size.height * 0.04280958),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path76.close();

    Paint paint76fill = Paint()..style = PaintingStyle.fill;
    paint76fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path76, paint76fill);

    Path path77 = Path();
    path77.moveTo(size.width * 0.6405979, size.height * 0.6796417);
    path77.lineTo(size.width * 0.6465368, size.height * 0.6755985);
    path77.arcToPoint(Offset(size.width * 0.6478713, size.height * 0.6799588),
        radius: Radius.elliptical(
            size.width * 0.03429868, size.height * 0.04074837),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path77.lineTo(size.width * 0.6419992, size.height * 0.6840019);
    path77.arcToPoint(Offset(size.width * 0.6405979, size.height * 0.6796417),
        radius: Radius.elliptical(
            size.width * 0.03469905, size.height * 0.04122404),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path77.close();

    Paint paint77fill = Paint()..style = PaintingStyle.fill;
    paint77fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path77, paint77fill);

    Path path78 = Path();
    path78.moveTo(size.width * 0.6417990, size.height * 0.6840019);
    path78.lineTo(size.width * 0.6476712, size.height * 0.6799588);
    path78.arcToPoint(Offset(size.width * 0.6486054, size.height * 0.6844776),
        radius: Radius.elliptical(
            size.width * 0.02669158, size.height * 0.03171080),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path78.lineTo(size.width * 0.6427332, size.height * 0.6886000);
    path78.arcToPoint(Offset(size.width * 0.6417990, size.height * 0.6840019),
        radius: Radius.elliptical(
            size.width * 0.02515681, size.height * 0.02988743),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path78.close();

    Paint paint78fill = Paint()..style = PaintingStyle.fill;
    paint78fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path78, paint78fill);

    Path path79 = Path();
    path79.moveTo(size.width * 0.6427332, size.height * 0.6886000);
    path79.lineTo(size.width * 0.6486054, size.height * 0.6844776);
    path79.arcToPoint(Offset(size.width * 0.6486054, size.height * 0.6887585),
        radius: Radius.elliptical(
            size.width * 0.03396503, size.height * 0.04035199),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path79.lineTo(size.width * 0.6486054, size.height * 0.6887585);
    path79.lineTo(size.width * 0.6427332, size.height * 0.6928809);
    path79.lineTo(size.width * 0.6427332, size.height * 0.6928809);
    path79.arcToPoint(Offset(size.width * 0.6427332, size.height * 0.6886792),
        radius: Radius.elliptical(
            size.width * 0.03276391, size.height * 0.03892500),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path79.close();

    Paint paint79fill = Paint()..style = PaintingStyle.fill;
    paint79fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path79, paint79fill);

    Path path80 = Path();
    path80.moveTo(size.width * 0.6430001, size.height * 0.6928809);
    path80.lineTo(size.width * 0.6488723, size.height * 0.6887585);
    path80.arcToPoint(Offset(size.width * 0.6484719, size.height * 0.6930395),
        radius: Radius.elliptical(
            size.width * 0.01488056, size.height * 0.01767877),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path80.lineTo(size.width * 0.6425998, size.height * 0.6970826);
    path80.arcToPoint(Offset(size.width * 0.6430001, size.height * 0.6928809),
        radius: Radius.elliptical(
            size.width * 0.01468037, size.height * 0.01744094),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path80.close();

    Paint paint80fill = Paint()..style = PaintingStyle.fill;
    paint80fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path80, paint80fill);

    Path path81 = Path();
    path81.moveTo(size.width * 0.6425998, size.height * 0.6970826);
    path81.lineTo(size.width * 0.6484719, size.height * 0.6930395);
    path81.arcToPoint(Offset(size.width * 0.6445349, size.height * 0.7000159),
        radius: Radius.elliptical(
            size.width * 0.008674763, size.height * 0.01030601),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path81.lineTo(size.width * 0.6386628, size.height * 0.7040590);
    path81.arcToPoint(Offset(size.width * 0.6425998, size.height * 0.6970826),
        radius: Radius.elliptical(
            size.width * 0.008541305, size.height * 0.01014746),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path81.close();

    Paint paint81fill = Paint()..style = PaintingStyle.fill;
    paint81fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path81, paint81fill);

    Path path82 = Path();
    path82.moveTo(size.width * 0.6282530, size.height * 0.6625178);
    path82.arcToPoint(Offset(size.width * 0.6430001, size.height * 0.6928016),
        radius: Radius.elliptical(
            size.width * 0.03256373, size.height * 0.03868717),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path82.cubicTo(
        size.width * 0.6430001,
        size.height * 0.7039797,
        size.width * 0.6363272,
        size.height * 0.7086570,
        size.width * 0.6281863,
        size.height * 0.7028698);
    path82.arcToPoint(Offset(size.width * 0.6134392, size.height * 0.6725067),
        radius: Radius.elliptical(
            size.width * 0.03229681, size.height * 0.03837007),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path82.cubicTo(
        size.width * 0.6134392,
        size.height * 0.6614080,
        size.width * 0.6201121,
        size.height * 0.6568892,
        size.width * 0.6282530,
        size.height * 0.6625178);
    path82.close();

    Paint paint82fill = Paint()..style = PaintingStyle.fill;
    paint82fill.color = Color(0xff252529).withOpacity(1.0);
    canvas.drawPath(path82, paint82fill);

    Path path83 = Path();
    path83.moveTo(size.width * 0.6177099, size.height * 0.6713969);
    path83.lineTo(size.width * 0.6215801, size.height * 0.6687807);
    path83.arcToPoint(Offset(size.width * 0.6282530, size.height * 0.6695735),
        radius: Radius.elliptical(
            size.width * 0.006672895, size.height * 0.007927699),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path83.lineTo(size.width * 0.6244495, size.height * 0.6721896);
    path83.arcToPoint(Offset(size.width * 0.6177099, size.height * 0.6713969),
        radius: Radius.elliptical(
            size.width * 0.006672895, size.height * 0.007927699),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path83.close();

    Paint paint83fill = Paint()..style = PaintingStyle.fill;
    paint83fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path83, paint83fill);

    Path path84 = Path();
    path84.moveTo(size.width * 0.6177099, size.height * 0.6713969);
    path84.lineTo(size.width * 0.6215801, size.height * 0.6687807);
    path84.arcToPoint(Offset(size.width * 0.6245162, size.height * 0.6679879),
        radius: Radius.elliptical(
            size.width * 0.004671026, size.height * 0.005549390),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path84.lineTo(size.width * 0.6205792, size.height * 0.6706834);
    path84.arcToPoint(Offset(size.width * 0.6175764, size.height * 0.6713969),
        radius: Radius.elliptical(
            size.width * 0.005004671, size.height * 0.005945775),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path84.close();

    Paint paint84fill = Paint()..style = PaintingStyle.fill;
    paint84fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path84, paint84fill);

    Path path85 = Path();
    path85.moveTo(size.width * 0.6205792, size.height * 0.6706834);
    path85.lineTo(size.width * 0.6243828, size.height * 0.6679879);
    path85.arcToPoint(Offset(size.width * 0.6263846, size.height * 0.6685429),
        radius: Radius.elliptical(
            size.width * 0.007273455, size.height * 0.008641192),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path85.lineTo(size.width * 0.6225811, size.height * 0.6711590);
    path85.arcToPoint(Offset(size.width * 0.6205792, size.height * 0.6706834),
        radius: Radius.elliptical(
            size.width * 0.005938876, size.height * 0.007055652),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path85.close();

    Paint paint85fill = Paint()..style = PaintingStyle.fill;
    paint85fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path85, paint85fill);

    Path path86 = Path();
    path86.moveTo(size.width * 0.6227145, size.height * 0.6711590);
    path86.lineTo(size.width * 0.6265181, size.height * 0.6685429);
    path86.arcToPoint(Offset(size.width * 0.6283865, size.height * 0.6695735),
        radius: Radius.elliptical(
            size.width * 0.007807287, size.height * 0.009275408),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path86.lineTo(size.width * 0.6245829, size.height * 0.6721896);
    path86.arcToPoint(Offset(size.width * 0.6227145, size.height * 0.6711590),
        radius: Radius.elliptical(
            size.width * 0.01521420, size.height * 0.01807515),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path86.close();

    Paint paint86fill = Paint()..style = PaintingStyle.fill;
    paint86fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path86, paint86fill);

    Path path87 = Path();
    path87.moveTo(size.width * 0.6351928, size.height * 0.6966862);
    path87.lineTo(size.width * 0.6313893, size.height * 0.6993024);
    path87.arcToPoint(Offset(size.width * 0.6341919, size.height * 0.6920089),
        radius: Radius.elliptical(
            size.width * 0.006672895, size.height * 0.007927699),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path87.arcToPoint(Offset(size.width * 0.6245829, size.height * 0.6721896),
        radius: Radius.elliptical(
            size.width * 0.02121981, size.height * 0.02521008),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path87.lineTo(size.width * 0.6283865, size.height * 0.6695735);
    path87.arcToPoint(Offset(size.width * 0.6379955, size.height * 0.6897098),
        radius: Radius.elliptical(
            size.width * 0.02101962, size.height * 0.02497225),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path87.arcToPoint(Offset(size.width * 0.6351928, size.height * 0.6966862),
        radius: Radius.elliptical(
            size.width * 0.006672895, size.height * 0.007927699),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path87.close();

    Paint paint87fill = Paint()..style = PaintingStyle.fill;
    paint87fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path87, paint87fill);

    Path path88 = Path();
    path88.moveTo(size.width * 0.6245829, size.height * 0.6721896);
    path88.lineTo(size.width * 0.6283865, size.height * 0.6695735);
    path88.lineTo(size.width * 0.6283865, size.height * 0.6695735);
    path88.lineTo(size.width * 0.6245162, size.height * 0.6721896);
    path88.close();

    Paint paint88fill = Paint()..style = PaintingStyle.fill;
    paint88fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path88, paint88fill);

    Path path89 = Path();
    path89.moveTo(size.width * 0.6246497, size.height * 0.6722689);
    path89.lineTo(size.width * 0.6285200, size.height * 0.6696528);
    path89.arcToPoint(Offset(size.width * 0.6305885, size.height * 0.6713969),
        radius: Radius.elliptical(
            size.width * 0.01067663, size.height * 0.01268432),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path89.lineTo(size.width * 0.6267850, size.height * 0.6740130);
    path89.arcToPoint(Offset(size.width * 0.6246497, size.height * 0.6722689),
        radius: Radius.elliptical(
            size.width * 0.01514747, size.height * 0.01799588),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path89.close();

    Paint paint89fill = Paint()..style = PaintingStyle.fill;
    paint89fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path89, paint89fill);

    Path path90 = Path();
    path90.moveTo(size.width * 0.6267850, size.height * 0.6738544);
    path90.lineTo(size.width * 0.6305885, size.height * 0.6712383);
    path90.arcToPoint(Offset(size.width * 0.6325904, size.height * 0.6736166),
        radius: Radius.elliptical(
            size.width * 0.01421327, size.height * 0.01688600),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path90.lineTo(size.width * 0.6287869, size.height * 0.6762328);
    path90.lineTo(size.width * 0.6267850, size.height * 0.6738544);
    path90.close();

    Paint paint90fill = Paint()..style = PaintingStyle.fill;
    paint90fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path90, paint90fill);

    Path path91 = Path();
    path91.moveTo(size.width * 0.6287869, size.height * 0.6763913);
    path91.lineTo(size.width * 0.6325904, size.height * 0.6738544);
    path91.arcToPoint(Offset(size.width * 0.6363272, size.height * 0.6808308),
        radius: Radius.elliptical(
            size.width * 0.02248766, size.height * 0.02671635),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path91.lineTo(size.width * 0.6325237, size.height * 0.6834470);
    path91.arcToPoint(Offset(size.width * 0.6287869, size.height * 0.6764706),
        radius: Radius.elliptical(
            size.width * 0.02248766, size.height * 0.02671635),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path91.close();

    Paint paint91fill = Paint()..style = PaintingStyle.fill;
    paint91fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path91, paint91fill);

    Path path92 = Path();
    path92.moveTo(size.width * 0.6325237, size.height * 0.6833677);
    path92.lineTo(size.width * 0.6363272, size.height * 0.6807515);
    path92.arcToPoint(Offset(size.width * 0.6372614, size.height * 0.6836055),
        radius: Radius.elliptical(
            size.width * 0.01781663, size.height * 0.02116696),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path92.lineTo(size.width * 0.6333912, size.height * 0.6862217);
    path92.arcToPoint(Offset(size.width * 0.6325237, size.height * 0.6833677),
        radius: Radius.elliptical(
            size.width * 0.01734953, size.height * 0.02061202),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path92.close();

    Paint paint92fill = Paint()..style = PaintingStyle.fill;
    paint92fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path92, paint92fill);

    Path path93 = Path();
    path93.moveTo(size.width * 0.6333912, size.height * 0.6862217);
    path93.lineTo(size.width * 0.6372614, size.height * 0.6836055);
    path93.arcToPoint(Offset(size.width * 0.6378620, size.height * 0.6865388),
        radius: Radius.elliptical(
            size.width * 0.01661551, size.height * 0.01973997),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path93.lineTo(size.width * 0.6339917, size.height * 0.6892342);
    path93.arcToPoint(Offset(size.width * 0.6333912, size.height * 0.6862217),
        radius: Radius.elliptical(
            size.width * 0.01748298, size.height * 0.02077057),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path93.close();

    Paint paint93fill = Paint()..style = PaintingStyle.fill;
    paint93fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path93, paint93fill);

    Path path94 = Path();
    path94.moveTo(size.width * 0.6339250, size.height * 0.6892342);
    path94.lineTo(size.width * 0.6377953, size.height * 0.6865388);
    path94.cubicTo(
        size.width * 0.6377953,
        size.height * 0.6874901,
        size.width * 0.6377953,
        size.height * 0.6884414,
        size.width * 0.6377953,
        size.height * 0.6893135);
    path94.lineTo(size.width * 0.6377953, size.height * 0.6893135);
    path94.lineTo(size.width * 0.6339917, size.height * 0.6919296);
    path94.lineTo(size.width * 0.6339917, size.height * 0.6919296);
    path94.arcToPoint(Offset(size.width * 0.6339917, size.height * 0.6891549),
        radius: Radius.elliptical(
            size.width * 0.01334579, size.height * 0.01585540),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path94.close();

    Paint paint94fill = Paint()..style = PaintingStyle.fill;
    paint94fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path94, paint94fill);

    Path path95 = Path();
    path95.moveTo(size.width * 0.6339250, size.height * 0.6920089);
    path95.lineTo(size.width * 0.6377285, size.height * 0.6893927);
    path95.arcToPoint(Offset(size.width * 0.6377285, size.height * 0.6920882),
        radius: Radius.elliptical(
            size.width * 0.01194448, size.height * 0.01419058),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path95.lineTo(size.width * 0.6338583, size.height * 0.6947836);
    path95.arcToPoint(Offset(size.width * 0.6338583, size.height * 0.6920089),
        radius: Radius.elliptical(
            size.width * 0.008608034, size.height * 0.01022673),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path95.close();

    Paint paint95fill = Paint()..style = PaintingStyle.fill;
    paint95fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path95, paint95fill);

    Path path96 = Path();
    path96.moveTo(size.width * 0.6339250, size.height * 0.6947836);
    path96.lineTo(size.width * 0.6377953, size.height * 0.6920882);
    path96.arcToPoint(Offset(size.width * 0.6351928, size.height * 0.6966862),
        radius: Radius.elliptical(
            size.width * 0.005938876, size.height * 0.007055652),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path96.lineTo(size.width * 0.6313893, size.height * 0.6993024);
    path96.arcToPoint(Offset(size.width * 0.6339250, size.height * 0.6947836),
        radius: Radius.elliptical(
            size.width * 0.005738689, size.height * 0.006817821),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path96.close();

    Paint paint96fill = Paint()..style = PaintingStyle.fill;
    paint96fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path96, paint96fill);

    Path path97 = Path();
    path97.moveTo(size.width * 0.6245829, size.height * 0.6721896);
    path97.arcToPoint(Offset(size.width * 0.6339250, size.height * 0.6920089),
        radius: Radius.elliptical(
            size.width * 0.02121981, size.height * 0.02521008),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path97.cubicTo(
        size.width * 0.6339250,
        size.height * 0.6992231,
        size.width * 0.6295876,
        size.height * 0.7021563,
        size.width * 0.6242493,
        size.height * 0.6985096);
    path97.arcToPoint(Offset(size.width * 0.6146403, size.height * 0.6787696),
        radius: Radius.elliptical(
            size.width * 0.02121981, size.height * 0.02521008),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path97.cubicTo(
        size.width * 0.6149072,
        size.height * 0.6714761,
        size.width * 0.6192446,
        size.height * 0.6685429,
        size.width * 0.6245829,
        size.height * 0.6721896);
    path97.close();

    Paint paint97fill = Paint()..style = PaintingStyle.fill;
    paint97fill.color = Color(0xff252529).withOpacity(1.0);
    canvas.drawPath(path97, paint97fill);

    Path path98 = Path();
    path98.moveTo(size.width * 0.7452956, size.height * 0.7514666);
    path98.lineTo(size.width * 0.7511678, size.height * 0.7474235);
    path98.arcToPoint(Offset(size.width * 0.7616442, size.height * 0.7486127),
        radius: Radius.elliptical(
            size.width * 0.01014280, size.height * 0.01205010),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path98.lineTo(size.width * 0.7557721, size.height * 0.7526558);
    path98.arcToPoint(Offset(size.width * 0.7452956, size.height * 0.7514666),
        radius: Radius.elliptical(
            size.width * 0.01034299, size.height * 0.01228793),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path98.close();

    Paint paint98fill = Paint()..style = PaintingStyle.fill;
    paint98fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path98, paint98fill);

    Path path99 = Path();
    path99.moveTo(size.width * 0.7452956, size.height * 0.7514666);
    path99.lineTo(size.width * 0.7511678, size.height * 0.7474235);
    path99.arcToPoint(Offset(size.width * 0.7557053, size.height * 0.7462343),
        radius: Radius.elliptical(
            size.width * 0.007273455, size.height * 0.008641192),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path99.lineTo(size.width * 0.7498332, size.height * 0.7502775);
    path99.arcToPoint(Offset(size.width * 0.7452956, size.height * 0.7514666),
        radius: Radius.elliptical(
            size.width * 0.007273455, size.height * 0.008641192),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path99.close();

    Paint paint99fill = Paint()..style = PaintingStyle.fill;
    paint99fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path99, paint99fill);

    Path path100 = Path();
    path100.moveTo(size.width * 0.7498332, size.height * 0.7502775);
    path100.lineTo(size.width * 0.7557053, size.height * 0.7462343);
    path100.arcToPoint(Offset(size.width * 0.7587749, size.height * 0.7470271),
        radius: Radius.elliptical(
            size.width * 0.01060990, size.height * 0.01260504),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path100.lineTo(size.width * 0.7529027, size.height * 0.7510702);
    path100.arcToPoint(Offset(size.width * 0.7498332, size.height * 0.7502775),
        radius: Radius.elliptical(
            size.width * 0.01060990, size.height * 0.01260504),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path100.close();

    Paint paint100fill = Paint()..style = PaintingStyle.fill;
    paint100fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path100, paint100fill);

    Path path101 = Path();
    path101.moveTo(size.width * 0.7529027, size.height * 0.7510702);
    path101.lineTo(size.width * 0.7587749, size.height * 0.7470271);
    path101.arcToPoint(Offset(size.width * 0.7616442, size.height * 0.7486127),
        radius: Radius.elliptical(
            size.width * 0.01841719, size.height * 0.02188045),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path101.lineTo(size.width * 0.7557721, size.height * 0.7526558);
    path101.arcToPoint(Offset(size.width * 0.7529027, size.height * 0.7510702),
        radius: Radius.elliptical(
            size.width * 0.01841719, size.height * 0.02188045),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path101.close();

    Paint paint101fill = Paint()..style = PaintingStyle.fill;
    paint101fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path101, paint101fill);

    Path path102 = Path();
    path102.moveTo(size.width * 0.7721206, size.height * 0.7901538);
    path102.lineTo(size.width * 0.7661818, size.height * 0.7942762);
    path102.arcToPoint(Offset(size.width * 0.7705192, size.height * 0.7830189),
        radius: Radius.elliptical(
            size.width * 0.01034299, size.height * 0.01228793),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path102.arcToPoint(Offset(size.width * 0.7557721, size.height * 0.7526558),
        radius: Radius.elliptical(
            size.width * 0.03249700, size.height * 0.03860790),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path102.lineTo(size.width * 0.7616442, size.height * 0.7486127);
    path102.arcToPoint(Offset(size.width * 0.7763913, size.height * 0.7788965),
        radius: Radius.elliptical(
            size.width * 0.03249700, size.height * 0.03860790),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path102.arcToPoint(Offset(size.width * 0.7721206, size.height * 0.7901538),
        radius: Radius.elliptical(
            size.width * 0.01040972, size.height * 0.01236721),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path102.close();

    Paint paint102fill = Paint()..style = PaintingStyle.fill;
    paint102fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path102, paint102fill);

    Path path103 = Path();
    path103.moveTo(size.width * 0.7557721, size.height * 0.7526558);
    path103.lineTo(size.width * 0.7616442, size.height * 0.7486127);
    path103.lineTo(size.width * 0.7616442, size.height * 0.7486127);
    path103.lineTo(size.width * 0.7557053, size.height * 0.7526558);
    path103.close();

    Paint paint103fill = Paint()..style = PaintingStyle.fill;
    paint103fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path103, paint103fill);

    Path path104 = Path();
    path104.moveTo(size.width * 0.7559055, size.height * 0.7531314);
    path104.lineTo(size.width * 0.7618444, size.height * 0.7490883);
    path104.arcToPoint(Offset(size.width * 0.7649806, size.height * 0.7518630),
        radius: Radius.elliptical(
            size.width * 0.02549046, size.height * 0.03028381),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path104.lineTo(size.width * 0.7591085, size.height * 0.7559061);
    path104.arcToPoint(Offset(size.width * 0.7559055, size.height * 0.7531314),
        radius: Radius.elliptical(
            size.width * 0.02182037, size.height * 0.02592358),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path104.close();

    Paint paint104fill = Paint()..style = PaintingStyle.fill;
    paint104fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path104, paint104fill);

    Path path105 = Path();
    path105.moveTo(size.width * 0.7591085, size.height * 0.7555098);
    path105.lineTo(size.width * 0.7649806, size.height * 0.7514666);
    path105.arcToPoint(Offset(size.width * 0.7681169, size.height * 0.7550341),
        radius: Radius.elliptical(
            size.width * 0.02669158, size.height * 0.03171080),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path105.lineTo(size.width * 0.7622448, size.height * 0.7591565);
    path105.arcToPoint(Offset(size.width * 0.7591085, size.height * 0.7555098),
        radius: Radius.elliptical(
            size.width * 0.02262111, size.height * 0.02687490),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path105.close();

    Paint paint105fill = Paint()..style = PaintingStyle.fill;
    paint105fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path105, paint105fill);

    Path path106 = Path();
    path106.moveTo(size.width * 0.7622448, size.height * 0.7591565);
    path106.lineTo(size.width * 0.7681169, size.height * 0.7550341);
    path106.arcToPoint(Offset(size.width * 0.7738556, size.height * 0.7657365),
        radius: Radius.elliptical(
            size.width * 0.03623382, size.height * 0.04304741),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path106.lineTo(size.width * 0.7679835, size.height * 0.7697796);
    path106.arcToPoint(Offset(size.width * 0.7622448, size.height * 0.7591565),
        radius: Radius.elliptical(
            size.width * 0.03590017, size.height * 0.04265102),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path106.close();

    Paint paint106fill = Paint()..style = PaintingStyle.fill;
    paint106fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path106, paint106fill);

    Path path107 = Path();
    path107.moveTo(size.width * 0.7679835, size.height * 0.7697796);
    path107.lineTo(size.width * 0.7738556, size.height * 0.7657365);
    path107.arcToPoint(Offset(size.width * 0.7751902, size.height * 0.7700967),
        radius: Radius.elliptical(
            size.width * 0.02702522, size.height * 0.03210718),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path107.lineTo(size.width * 0.7693180, size.height * 0.7741398);
    path107.arcToPoint(Offset(size.width * 0.7679835, size.height * 0.7697796),
        radius: Radius.elliptical(
            size.width * 0.02702522, size.height * 0.03210718),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path107.close();

    Paint paint107fill = Paint()..style = PaintingStyle.fill;
    paint107fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path107, paint107fill);

    Path path108 = Path();
    path108.moveTo(size.width * 0.7693180, size.height * 0.7741398);
    path108.lineTo(size.width * 0.7751902, size.height * 0.7700967);
    path108.arcToPoint(Offset(size.width * 0.7761244, size.height * 0.7746948),
        radius: Radius.elliptical(
            size.width * 0.02715868, size.height * 0.03226574),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path108.lineTo(size.width * 0.7702522, size.height * 0.7787379);
    path108.arcToPoint(Offset(size.width * 0.7693180, size.height * 0.7741398),
        radius: Radius.elliptical(
            size.width * 0.02956092, size.height * 0.03511971),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path108.close();

    Paint paint108fill = Paint()..style = PaintingStyle.fill;
    paint108fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path108, paint108fill);

    Path path109 = Path();
    path109.moveTo(size.width * 0.7702522, size.height * 0.7787379);
    path109.lineTo(size.width * 0.7761244, size.height * 0.7746948);
    path109.arcToPoint(Offset(size.width * 0.7761244, size.height * 0.7788965),
        radius: Radius.elliptical(
            size.width * 0.02155345, size.height * 0.02560647),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path109.lineTo(size.width * 0.7761244, size.height * 0.7788965);
    path109.lineTo(size.width * 0.7702522, size.height * 0.7829396);
    path109.lineTo(size.width * 0.7702522, size.height * 0.7829396);
    path109.arcToPoint(Offset(size.width * 0.7702522, size.height * 0.7786586),
        radius: Radius.elliptical(
            size.width * 0.02182037, size.height * 0.02592358),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path109.close();

    Paint paint109fill = Paint()..style = PaintingStyle.fill;
    paint109fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path109, paint109fill);

    Path path110 = Path();
    path110.moveTo(size.width * 0.7705192, size.height * 0.7830189);
    path110.lineTo(size.width * 0.7763913, size.height * 0.7789757);
    path110.arcToPoint(Offset(size.width * 0.7759909, size.height * 0.7831774),
        radius: Radius.elliptical(
            size.width * 0.01468037, size.height * 0.01744094),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path110.lineTo(size.width * 0.7701188, size.height * 0.7872205);
    path110.arcToPoint(Offset(size.width * 0.7705192, size.height * 0.7830189),
        radius: Radius.elliptical(
            size.width * 0.01434672, size.height * 0.01704455),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path110.close();

    Paint paint110fill = Paint()..style = PaintingStyle.fill;
    paint110fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path110, paint110fill);

    Path path111 = Path();
    path111.moveTo(size.width * 0.7701188, size.height * 0.7872205);
    path111.lineTo(size.width * 0.7759909, size.height * 0.7831774);
    path111.arcToPoint(Offset(size.width * 0.7721206, size.height * 0.7901538),
        radius: Radius.elliptical(
            size.width * 0.008541305, size.height * 0.01014746),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path111.lineTo(size.width * 0.7661818, size.height * 0.7942762);
    path111.arcToPoint(Offset(size.width * 0.7701188, size.height * 0.7872205),
        radius: Radius.elliptical(
            size.width * 0.008674763, size.height * 0.01030601),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path111.close();

    Paint paint111fill = Paint()..style = PaintingStyle.fill;
    paint111fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path111, paint111fill);

    Path path112 = Path();
    path112.moveTo(size.width * 0.7557721, size.height * 0.7526558);
    path112.arcToPoint(Offset(size.width * 0.7705192, size.height * 0.7830189),
        radius: Radius.elliptical(
            size.width * 0.03249700, size.height * 0.03860790),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path112.cubicTo(
        size.width * 0.7705192,
        size.height * 0.7941176,
        size.width * 0.7638463,
        size.height * 0.7988743,
        size.width * 0.7557053,
        size.height * 0.7930078);
    path112.arcToPoint(Offset(size.width * 0.7406913, size.height * 0.7627240),
        radius: Radius.elliptical(
            size.width * 0.03249700, size.height * 0.03860790),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path112.cubicTo(
        size.width * 0.7410250,
        size.height * 0.7515459,
        size.width * 0.7473642,
        size.height * 0.7470271,
        size.width * 0.7557721,
        size.height * 0.7526558);
    path112.close();

    Paint paint112fill = Paint()..style = PaintingStyle.fill;
    paint112fill.color = Color(0xff252529).withOpacity(1.0);
    canvas.drawPath(path112, paint112fill);

    Path path113 = Path();
    path113.moveTo(size.width * 0.7452289, size.height * 0.7616141);
    path113.lineTo(size.width * 0.7490992, size.height * 0.7589187);
    path113.arcToPoint(Offset(size.width * 0.7557721, size.height * 0.7597114),
        radius: Radius.elliptical(
            size.width * 0.006672895, size.height * 0.007927699),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path113.lineTo(size.width * 0.7519018, size.height * 0.7624068);
    path113.arcToPoint(Offset(size.width * 0.7452289, size.height * 0.7616141),
        radius: Radius.elliptical(
            size.width * 0.006672895, size.height * 0.007927699),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path113.close();

    Paint paint113fill = Paint()..style = PaintingStyle.fill;
    paint113fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path113, paint113fill);

    Path path114 = Path();
    path114.moveTo(size.width * 0.7452289, size.height * 0.7616141);
    path114.lineTo(size.width * 0.7490992, size.height * 0.7589187);
    path114.arcToPoint(Offset(size.width * 0.7520352, size.height * 0.7582052),
        radius: Radius.elliptical(
            size.width * 0.005405045, size.height * 0.006421436),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path114.lineTo(size.width * 0.7482317, size.height * 0.7608213);
    path114.arcToPoint(Offset(size.width * 0.7452289, size.height * 0.7616141),
        radius: Radius.elliptical(
            size.width * 0.005004671, size.height * 0.005945775),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path114.close();

    Paint paint114fill = Paint()..style = PaintingStyle.fill;
    paint114fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path114, paint114fill);

    Path path115 = Path();
    path115.moveTo(size.width * 0.7482317, size.height * 0.7610591);
    path115.lineTo(size.width * 0.7520352, size.height * 0.7584430);
    path115.arcToPoint(Offset(size.width * 0.7541038, size.height * 0.7589187),
        radius: Radius.elliptical(
            size.width * 0.008074203, size.height * 0.009592516),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path115.lineTo(size.width * 0.7502336, size.height * 0.7616141);
    path115.arcToPoint(Offset(size.width * 0.7482317, size.height * 0.7610591),
        radius: Radius.elliptical(
            size.width * 0.007874016, size.height * 0.009354685),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path115.close();

    Paint paint115fill = Paint()..style = PaintingStyle.fill;
    paint115fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path115, paint115fill);

    Path path116 = Path();
    path116.moveTo(size.width * 0.7502336, size.height * 0.7610591);
    path116.lineTo(size.width * 0.7541038, size.height * 0.7583637);
    path116.arcToPoint(Offset(size.width * 0.7559722, size.height * 0.7593943),
        radius: Radius.elliptical(
            size.width * 0.01521420, size.height * 0.01807515),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path116.lineTo(size.width * 0.7521020, size.height * 0.7620897);
    path116.arcToPoint(Offset(size.width * 0.7502336, size.height * 0.7610591),
        radius: Radius.elliptical(
            size.width * 0.007807287, size.height * 0.009275408),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path116.close();

    Paint paint116fill = Paint()..style = PaintingStyle.fill;
    paint116fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path116, paint116fill);

    Path path117 = Path();
    path117.moveTo(size.width * 0.7627119, size.height * 0.7868242);
    path117.lineTo(size.width * 0.7589083, size.height * 0.7895196);
    path117.arcToPoint(Offset(size.width * 0.7617109, size.height * 0.7821468),
        radius: Radius.elliptical(
            size.width * 0.006672895, size.height * 0.007927699),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path117.arcToPoint(Offset(size.width * 0.7521020, size.height * 0.7624068),
        radius: Radius.elliptical(
            size.width * 0.02108635, size.height * 0.02505153),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path117.lineTo(size.width * 0.7559722, size.height * 0.7597114);
    path117.arcToPoint(Offset(size.width * 0.7655812, size.height * 0.7795307),
        radius: Radius.elliptical(
            size.width * 0.02141999, size.height * 0.02544792),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path117.arcToPoint(Offset(size.width * 0.7627119, size.height * 0.7868242),
        radius: Radius.elliptical(
            size.width * 0.006672895, size.height * 0.007927699),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path117.close();

    Paint paint117fill = Paint()..style = PaintingStyle.fill;
    paint117fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path117, paint117fill);

    Path path118 = Path();
    path118.moveTo(size.width * 0.7521020, size.height * 0.7624068);
    path118.lineTo(size.width * 0.7559722, size.height * 0.7597114);
    path118.lineTo(size.width * 0.7559722, size.height * 0.7597114);
    path118.lineTo(size.width * 0.7521687, size.height * 0.7623276);
    path118.close();

    Paint paint118fill = Paint()..style = PaintingStyle.fill;
    paint118fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path118, paint118fill);

    Path path119 = Path();
    path119.moveTo(size.width * 0.7522354, size.height * 0.7624068);
    path119.lineTo(size.width * 0.7560390, size.height * 0.7597907);
    path119.arcToPoint(Offset(size.width * 0.7581076, size.height * 0.7615348),
        radius: Radius.elliptical(
            size.width * 0.01454691, size.height * 0.01728238),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path119.lineTo(size.width * 0.7543040, size.height * 0.7642302);
    path119.arcToPoint(Offset(size.width * 0.7522354, size.height * 0.7624068),
        radius: Radius.elliptical(
            size.width * 0.02061924, size.height * 0.02449659),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path119.close();

    Paint paint119fill = Paint()..style = PaintingStyle.fill;
    paint119fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path119, paint119fill);

    Path path120 = Path();
    path120.moveTo(size.width * 0.7540371, size.height * 0.7642302);
    path120.lineTo(size.width * 0.7578407, size.height * 0.7615348);
    path120.arcToPoint(Offset(size.width * 0.7599092, size.height * 0.7639131),
        radius: Radius.elliptical(
            size.width * 0.01941812, size.height * 0.02306961),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path120.lineTo(size.width * 0.7560390, size.height * 0.7666085);
    path120.arcToPoint(Offset(size.width * 0.7540371, size.height * 0.7642302),
        radius: Radius.elliptical(
            size.width * 0.01421327, size.height * 0.01688600),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path120.close();

    Paint paint120fill = Paint()..style = PaintingStyle.fill;
    paint120fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path120, paint120fill);

    Path path121 = Path();
    path121.moveTo(size.width * 0.7563059, size.height * 0.7666085);
    path121.lineTo(size.width * 0.7601762, size.height * 0.7639131);
    path121.arcToPoint(Offset(size.width * 0.7639130, size.height * 0.7708895),
        radius: Radius.elliptical(
            size.width * 0.02442279, size.height * 0.02901538),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path121.lineTo(size.width * 0.7600427, size.height * 0.7735849);
    path121.arcToPoint(Offset(size.width * 0.7563059, size.height * 0.7666085),
        radius: Radius.elliptical(
            size.width * 0.02148672, size.height * 0.02552719),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path121.close();

    Paint paint121fill = Paint()..style = PaintingStyle.fill;
    paint121fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path121, paint121fill);

    Path path122 = Path();
    path122.moveTo(size.width * 0.7600427, size.height * 0.7735849);
    path122.lineTo(size.width * 0.7639130, size.height * 0.7708895);
    path122.cubicTo(
        size.width * 0.7639130,
        size.height * 0.7718408,
        size.width * 0.7645135,
        size.height * 0.7727921,
        size.width * 0.7647805,
        size.height * 0.7737435);
    path122.lineTo(size.width * 0.7609769, size.height * 0.7763596);
    path122.arcToPoint(Offset(size.width * 0.7600427, size.height * 0.7735849),
        radius: Radius.elliptical(
            size.width * 0.02435607, size.height * 0.02893610),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path122.close();

    Paint paint122fill = Paint()..style = PaintingStyle.fill;
    paint122fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path122, paint122fill);

    Path path123 = Path();
    path123.moveTo(size.width * 0.7607100, size.height * 0.7763596);
    path123.lineTo(size.width * 0.7645135, size.height * 0.7737435);
    path123.arcToPoint(Offset(size.width * 0.7651141, size.height * 0.7767560),
        radius: Radius.elliptical(
            size.width * 0.01748298, size.height * 0.02077057),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path123.lineTo(size.width * 0.7612438, size.height * 0.7793721);
    path123.cubicTo(
        size.width * 0.7612438,
        size.height * 0.7784208,
        size.width * 0.7609102,
        size.height * 0.7773902,
        size.width * 0.7607100,
        size.height * 0.7763596);
    path123.close();

    Paint paint123fill = Paint()..style = PaintingStyle.fill;
    paint123fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path123, paint123fill);

    Path path124 = Path();
    path124.moveTo(size.width * 0.7615107, size.height * 0.7793721);
    path124.lineTo(size.width * 0.7653810, size.height * 0.7767560);
    path124.arcToPoint(Offset(size.width * 0.7653810, size.height * 0.7795307),
        radius: Radius.elliptical(
            size.width * 0.01381289, size.height * 0.01641034),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path124.lineTo(size.width * 0.7653810, size.height * 0.7795307);
    path124.lineTo(size.width * 0.7615107, size.height * 0.7821468);
    path124.lineTo(size.width * 0.7615107, size.height * 0.7821468);
    path124.arcToPoint(Offset(size.width * 0.7615107, size.height * 0.7793721),
        radius: Radius.elliptical(
            size.width * 0.01441345, size.height * 0.01712383),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path124.close();

    Paint paint124fill = Paint()..style = PaintingStyle.fill;
    paint124fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path124, paint124fill);

    Path path125 = Path();
    path125.moveTo(size.width * 0.7617109, size.height * 0.7821468);
    path125.lineTo(size.width * 0.7655812, size.height * 0.7795307);
    path125.arcToPoint(Offset(size.width * 0.7655812, size.height * 0.7823054),
        radius: Radius.elliptical(
            size.width * 0.01247831, size.height * 0.01482480),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path125.lineTo(size.width * 0.7617109, size.height * 0.7849215);
    path125.arcToPoint(Offset(size.width * 0.7617109, size.height * 0.7821468),
        radius: Radius.elliptical(
            size.width * 0.008341118, size.height * 0.009909624),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path125.close();

    Paint paint125fill = Paint()..style = PaintingStyle.fill;
    paint125fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path125, paint125fill);

    Path path126 = Path();
    path126.moveTo(size.width * 0.7614440, size.height * 0.7848422);
    path126.lineTo(size.width * 0.7653143, size.height * 0.7822261);
    path126.arcToPoint(Offset(size.width * 0.7627119, size.height * 0.7867449),
        radius: Radius.elliptical(
            size.width * 0.005471774, size.height * 0.006500713),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path126.lineTo(size.width * 0.7589083, size.height * 0.7894403);
    path126.arcToPoint(Offset(size.width * 0.7614440, size.height * 0.7848422),
        radius: Radius.elliptical(
            size.width * 0.005671960, size.height * 0.006738544),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path126.close();

    Paint paint126fill = Paint()..style = PaintingStyle.fill;
    paint126fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path126, paint126fill);

    Paint paint127fill = Paint()..style = PaintingStyle.fill;
    paint127fill.color = Color(0xff252529).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.7521020, size.height * 0.7755668),
            width: size.width * 0.01574803,
            height: size.height * 0.03234501),
        paint127fill);

    Path path128 = Path();
    path128.moveTo(size.width * 0.3553316, size.height * 0.4824005);
    path128.lineTo(size.width * 0.3612038, size.height * 0.4783574);
    path128.arcToPoint(Offset(size.width * 0.3716802, size.height * 0.4796258),
        radius: Radius.elliptical(
            size.width * 0.01034299, size.height * 0.01228793),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path128.lineTo(size.width * 0.3658081, size.height * 0.4836689);
    path128.arcToPoint(Offset(size.width * 0.3553316, size.height * 0.4824005),
        radius: Radius.elliptical(
            size.width * 0.01034299, size.height * 0.01228793),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path128.close();

    Paint paint128fill = Paint()..style = PaintingStyle.fill;
    paint128fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path128, paint128fill);

    Path path129 = Path();
    path129.moveTo(size.width * 0.3553316, size.height * 0.4824005);
    path129.lineTo(size.width * 0.3612038, size.height * 0.4783574);
    path129.arcToPoint(Offset(size.width * 0.3657414, size.height * 0.4772475),
        radius: Radius.elliptical(
            size.width * 0.007740558, size.height * 0.009196131),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path129.lineTo(size.width * 0.3598692, size.height * 0.4812906);
    path129.arcToPoint(Offset(size.width * 0.3553316, size.height * 0.4824005),
        radius: Radius.elliptical(
            size.width * 0.007740558, size.height * 0.009196131),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path129.close();

    Paint paint129fill = Paint()..style = PaintingStyle.fill;
    paint129fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path129, paint129fill);

    Path path130 = Path();
    path130.moveTo(size.width * 0.3598692, size.height * 0.4812906);
    path130.lineTo(size.width * 0.3657414, size.height * 0.4772475);
    path130.arcToPoint(Offset(size.width * 0.3688109, size.height * 0.4780403),
        radius: Radius.elliptical(
            size.width * 0.01107701, size.height * 0.01315998),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path130.lineTo(size.width * 0.3629387, size.height * 0.4820834);
    path130.arcToPoint(Offset(size.width * 0.3598692, size.height * 0.4812906),
        radius: Radius.elliptical(
            size.width * 0.01107701, size.height * 0.01315998),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path130.close();

    Paint paint130fill = Paint()..style = PaintingStyle.fill;
    paint130fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path130, paint130fill);

    Path path131 = Path();
    path131.moveTo(size.width * 0.3629387, size.height * 0.4820834);
    path131.lineTo(size.width * 0.3688109, size.height * 0.4780403);
    path131.arcToPoint(Offset(size.width * 0.3716802, size.height * 0.4796258),
        radius: Radius.elliptical(
            size.width * 0.01107701, size.height * 0.01315998),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path131.lineTo(size.width * 0.3658081, size.height * 0.4836689);
    path131.arcToPoint(Offset(size.width * 0.3629387, size.height * 0.4820834),
        radius: Radius.elliptical(
            size.width * 0.01381289, size.height * 0.01641034),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path131.close();

    Paint paint131fill = Paint()..style = PaintingStyle.fill;
    paint131fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path131, paint131fill);

    Path path132 = Path();
    path132.moveTo(size.width * 0.3820900, size.height * 0.5211670);
    path132.lineTo(size.width * 0.3762178, size.height * 0.5252101);
    path132.arcToPoint(Offset(size.width * 0.3803550, size.height * 0.5139528),
        radius: Radius.elliptical(
            size.width * 0.01027626, size.height * 0.01220866),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path132.arcToPoint(Offset(size.width * 0.3658081, size.height * 0.4835897),
        radius: Radius.elliptical(
            size.width * 0.03236354, size.height * 0.03844934),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path132.lineTo(size.width * 0.3716802, size.height * 0.4795465);
    path132.arcToPoint(Offset(size.width * 0.3864273, size.height * 0.5098303),
        radius: Radius.elliptical(
            size.width * 0.03236354, size.height * 0.03844934),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path132.arcToPoint(Offset(size.width * 0.3820900, size.height * 0.5211670),
        radius: Radius.elliptical(
            size.width * 0.01027626, size.height * 0.01220866),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path132.close();

    Paint paint132fill = Paint()..style = PaintingStyle.fill;
    paint132fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path132, paint132fill);

    Path path133 = Path();
    path133.moveTo(size.width * 0.3658081, size.height * 0.4835897);
    path133.lineTo(size.width * 0.3716802, size.height * 0.4795465);
    path133.lineTo(size.width * 0.3716802, size.height * 0.4795465);
    path133.lineTo(size.width * 0.3658081, size.height * 0.4835897);
    path133.close();

    Paint paint133fill = Paint()..style = PaintingStyle.fill;
    paint133fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path133, paint133fill);

    Path path134 = Path();
    path134.moveTo(size.width * 0.3659415, size.height * 0.4835897);
    path134.lineTo(size.width * 0.3718137, size.height * 0.4795465);
    path134.arcToPoint(Offset(size.width * 0.3750167, size.height * 0.4822420),
        radius: Radius.elliptical(
            size.width * 0.02141999, size.height * 0.02544792),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path134.lineTo(size.width * 0.3691445, size.height * 0.4862851);
    path134.arcToPoint(Offset(size.width * 0.3659415, size.height * 0.4835897),
        radius: Radius.elliptical(
            size.width * 0.02141999, size.height * 0.02544792),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path134.close();

    Paint paint134fill = Paint()..style = PaintingStyle.fill;
    paint134fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path134, paint134fill);

    Path path135 = Path();
    path135.moveTo(size.width * 0.3691445, size.height * 0.4864436);
    path135.lineTo(size.width * 0.3750167, size.height * 0.4824005);
    path135.arcToPoint(Offset(size.width * 0.3781529, size.height * 0.4860472),
        radius: Radius.elliptical(
            size.width * 0.02722541, size.height * 0.03234501),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path135.lineTo(size.width * 0.3722808, size.height * 0.4900904);
    path135.arcToPoint(Offset(size.width * 0.3691445, size.height * 0.4864436),
        radius: Radius.elliptical(
            size.width * 0.02722541, size.height * 0.03234501),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path135.close();

    Paint paint135fill = Paint()..style = PaintingStyle.fill;
    paint135fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path135, paint135fill);

    Path path136 = Path();
    path136.moveTo(size.width * 0.3722808, size.height * 0.4900904);
    path136.lineTo(size.width * 0.3781529, size.height * 0.4860472);
    path136.arcToPoint(Offset(size.width * 0.3838916, size.height * 0.4967496),
        radius: Radius.elliptical(
            size.width * 0.03509943, size.height * 0.04169970),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path136.lineTo(size.width * 0.3780195, size.height * 0.5007928);
    path136.arcToPoint(Offset(size.width * 0.3722808, size.height * 0.4900904),
        radius: Radius.elliptical(
            size.width * 0.03623382, size.height * 0.04304741),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path136.close();

    Paint paint136fill = Paint()..style = PaintingStyle.fill;
    paint136fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path136, paint136fill);

    Path path137 = Path();
    path137.moveTo(size.width * 0.3780195, size.height * 0.5007928);
    path137.lineTo(size.width * 0.3838916, size.height * 0.4967496);
    path137.arcToPoint(Offset(size.width * 0.3852262, size.height * 0.5011099),
        radius: Radius.elliptical(
            size.width * 0.02415588, size.height * 0.02869827),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path137.lineTo(size.width * 0.3793541, size.height * 0.5051530);
    path137.arcToPoint(Offset(size.width * 0.3780195, size.height * 0.5007928),
        radius: Radius.elliptical(
            size.width * 0.02415588, size.height * 0.02869827),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path137.close();

    Paint paint137fill = Paint()..style = PaintingStyle.fill;
    paint137fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path137, paint137fill);

    Path path138 = Path();
    path138.moveTo(size.width * 0.3793541, size.height * 0.5051530);
    path138.lineTo(size.width * 0.3852262, size.height * 0.5011099);
    path138.arcToPoint(Offset(size.width * 0.3861604, size.height * 0.5057079),
        radius: Radius.elliptical(
            size.width * 0.02515681, size.height * 0.02988743),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path138.lineTo(size.width * 0.3803550, size.height * 0.5097511);
    path138.arcToPoint(Offset(size.width * 0.3794208, size.height * 0.5051530),
        radius: Radius.elliptical(
            size.width * 0.02715868, size.height * 0.03226574),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path138.close();

    Paint paint138fill = Paint()..style = PaintingStyle.fill;
    paint138fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path138, paint138fill);

    Path path139 = Path();
    path139.moveTo(size.width * 0.3803550, size.height * 0.5097511);
    path139.lineTo(size.width * 0.3862271, size.height * 0.5057079);
    path139.arcToPoint(Offset(size.width * 0.3862271, size.height * 0.5099096),
        radius: Radius.elliptical(
            size.width * 0.02155345, size.height * 0.02560647),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path139.lineTo(size.width * 0.3862271, size.height * 0.5099096);
    path139.lineTo(size.width * 0.3803550, size.height * 0.5139528);
    path139.lineTo(size.width * 0.3803550, size.height * 0.5139528);
    path139.arcToPoint(Offset(size.width * 0.3803550, size.height * 0.5097511),
        radius: Radius.elliptical(
            size.width * 0.02155345, size.height * 0.02560647),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path139.close();

    Paint paint139fill = Paint()..style = PaintingStyle.fill;
    paint139fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path139, paint139fill);

    Path path140 = Path();
    path140.moveTo(size.width * 0.3803550, size.height * 0.5140320);
    path140.lineTo(size.width * 0.3862271, size.height * 0.5099889);
    path140.arcToPoint(Offset(size.width * 0.3858268, size.height * 0.5141906),
        radius: Radius.elliptical(
            size.width * 0.01468037, size.height * 0.01744094),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path140.lineTo(size.width * 0.3799546, size.height * 0.5182337);
    path140.arcToPoint(Offset(size.width * 0.3803550, size.height * 0.5140320),
        radius: Radius.elliptical(
            size.width * 0.01468037, size.height * 0.01744094),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path140.close();

    Paint paint140fill = Paint()..style = PaintingStyle.fill;
    paint140fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path140, paint140fill);

    Path path141 = Path();
    path141.moveTo(size.width * 0.3803550, size.height * 0.5182337);
    path141.lineTo(size.width * 0.3862271, size.height * 0.5141906);
    path141.arcToPoint(Offset(size.width * 0.3822901, size.height * 0.5211670),
        radius: Radius.elliptical(
            size.width * 0.008674763, size.height * 0.01030601),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path141.lineTo(size.width * 0.3764180, size.height * 0.5252101);
    path141.arcToPoint(Offset(size.width * 0.3803550, size.height * 0.5182337),
        radius: Radius.elliptical(
            size.width * 0.008407847, size.height * 0.009988901),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path141.close();

    Paint paint141fill = Paint()..style = PaintingStyle.fill;
    paint141fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path141, paint141fill);

    Path path142 = Path();
    path142.moveTo(size.width * 0.3658081, size.height * 0.4835897);
    path142.arcToPoint(Offset(size.width * 0.3803550, size.height * 0.5139528),
        radius: Radius.elliptical(
            size.width * 0.03236354, size.height * 0.03844934),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path142.cubicTo(
        size.width * 0.3803550,
        size.height * 0.5251308,
        size.width * 0.3736821,
        size.height * 0.5298081,
        size.width * 0.3655412,
        size.height * 0.5240209);
    path142.arcToPoint(Offset(size.width * 0.3507941, size.height * 0.4936578),
        radius: Radius.elliptical(
            size.width * 0.03249700, size.height * 0.03860790),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path142.cubicTo(
        size.width * 0.3509943,
        size.height * 0.4825591,
        size.width * 0.3576672,
        size.height * 0.4780403,
        size.width * 0.3658081,
        size.height * 0.4835897);
    path142.close();

    Paint paint142fill = Paint()..style = PaintingStyle.fill;
    paint142fill.color = Color(0xff252529).withOpacity(1.0);
    canvas.drawPath(path142, paint142fill);

    Path path143 = Path();
    path143.moveTo(size.width * 0.3552649, size.height * 0.4925480);
    path143.lineTo(size.width * 0.3591352, size.height * 0.4899318);
    path143.arcToPoint(Offset(size.width * 0.3658081, size.height * 0.4907246),
        radius: Radius.elliptical(
            size.width * 0.006672895, size.height * 0.007927699),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path143.lineTo(size.width * 0.3619378, size.height * 0.4933407);
    path143.arcToPoint(Offset(size.width * 0.3552649, size.height * 0.4925480),
        radius: Radius.elliptical(
            size.width * 0.006672895, size.height * 0.007927699),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path143.close();

    Paint paint143fill = Paint()..style = PaintingStyle.fill;
    paint143fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path143, paint143fill);

    Path path144 = Path();
    path144.moveTo(size.width * 0.3552649, size.height * 0.4925480);
    path144.lineTo(size.width * 0.3591352, size.height * 0.4899318);
    path144.arcToPoint(Offset(size.width * 0.3620713, size.height * 0.4891391),
        radius: Radius.elliptical(
            size.width * 0.004671026, size.height * 0.005549390),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path144.lineTo(size.width * 0.3582677, size.height * 0.4918345);
    path144.arcToPoint(Offset(size.width * 0.3552649, size.height * 0.4925480),
        radius: Radius.elliptical(
            size.width * 0.005004671, size.height * 0.005945775),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path144.close();

    Paint paint144fill = Paint()..style = PaintingStyle.fill;
    paint144fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path144, paint144fill);

    Path path145 = Path();
    path145.moveTo(size.width * 0.3582677, size.height * 0.4915174);
    path145.lineTo(size.width * 0.3620713, size.height * 0.4888219);
    path145.arcToPoint(Offset(size.width * 0.3641399, size.height * 0.4893769),
        radius: Radius.elliptical(
            size.width * 0.008341118, size.height * 0.009909624),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path145.lineTo(size.width * 0.3603363, size.height * 0.4923101);
    path145.arcToPoint(Offset(size.width * 0.3583344, size.height * 0.4918345),
        radius: Radius.elliptical(
            size.width * 0.005605232, size.height * 0.006659267),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path145.close();

    Paint paint145fill = Paint()..style = PaintingStyle.fill;
    paint145fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path145, paint145fill);

    Path path146 = Path();
    path146.moveTo(size.width * 0.3603363, size.height * 0.4923101);
    path146.lineTo(size.width * 0.3642066, size.height * 0.4896940);
    path146.arcToPoint(Offset(size.width * 0.3660750, size.height * 0.4907246),
        radius: Radius.elliptical(
            size.width * 0.009208595, size.height * 0.01094023),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path146.lineTo(size.width * 0.3622047, size.height * 0.4933407);
    path146.arcToPoint(Offset(size.width * 0.3603363, size.height * 0.4923101),
        radius: Radius.elliptical(
            size.width * 0.01167757, size.height * 0.01387347),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path146.close();

    Paint paint146fill = Paint()..style = PaintingStyle.fill;
    paint146fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path146, paint146fill);

    Path path147 = Path();
    path147.moveTo(size.width * 0.3727479, size.height * 0.5178373);
    path147.lineTo(size.width * 0.3689443, size.height * 0.5204535);
    path147.arcToPoint(Offset(size.width * 0.3717470, size.height * 0.5131600),
        radius: Radius.elliptical(
            size.width * 0.006672895, size.height * 0.007927699),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path147.arcToPoint(Offset(size.width * 0.3621380, size.height * 0.4933407),
        radius: Radius.elliptical(
            size.width * 0.02121981, size.height * 0.02521008),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path147.lineTo(size.width * 0.3660083, size.height * 0.4907246);
    path147.arcToPoint(Offset(size.width * 0.3755505, size.height * 0.5104646),
        radius: Radius.elliptical(
            size.width * 0.02115308, size.height * 0.02513081),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path147.arcToPoint(Offset(size.width * 0.3727479, size.height * 0.5178373),
        radius: Radius.elliptical(
            size.width * 0.006672895, size.height * 0.007927699),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path147.close();

    Paint paint147fill = Paint()..style = PaintingStyle.fill;
    paint147fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path147, paint147fill);

    Path path148 = Path();
    path148.moveTo(size.width * 0.3621380, size.height * 0.4933407);
    path148.lineTo(size.width * 0.3660083, size.height * 0.4907246);
    path148.lineTo(size.width * 0.3660083, size.height * 0.4907246);
    path148.lineTo(size.width * 0.3622047, size.height * 0.4933407);
    path148.close();

    Paint paint148fill = Paint()..style = PaintingStyle.fill;
    paint148fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path148, paint148fill);

    Path path149 = Path();
    path149.moveTo(size.width * 0.3622715, size.height * 0.4934200);
    path149.lineTo(size.width * 0.3660750, size.height * 0.4908039);
    path149.arcToPoint(Offset(size.width * 0.3681436, size.height * 0.4925480),
        radius: Radius.elliptical(
            size.width * 0.01454691, size.height * 0.01728238),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path149.lineTo(size.width * 0.3643401, size.height * 0.4951641);
    path149.arcToPoint(Offset(size.width * 0.3622715, size.height * 0.4934200),
        radius: Radius.elliptical(
            size.width * 0.02001868, size.height * 0.02378310),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path149.close();

    Paint paint149fill = Paint()..style = PaintingStyle.fill;
    paint149fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path149, paint149fill);

    Path path150 = Path();
    path150.moveTo(size.width * 0.3643401, size.height * 0.4951641);
    path150.lineTo(size.width * 0.3681436, size.height * 0.4925480);
    path150.arcToPoint(Offset(size.width * 0.3702122, size.height * 0.4949263),
        radius: Radius.elliptical(
            size.width * 0.01941812, size.height * 0.02306961),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path150.lineTo(size.width * 0.3663419, size.height * 0.4975424);
    path150.arcToPoint(Offset(size.width * 0.3643401, size.height * 0.4951641),
        radius: Radius.elliptical(
            size.width * 0.01888429, size.height * 0.02243539),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path150.close();

    Paint paint150fill = Paint()..style = PaintingStyle.fill;
    paint150fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path150, paint150fill);

    Path path151 = Path();
    path151.moveTo(size.width * 0.3663419, size.height * 0.4975424);
    path151.lineTo(size.width * 0.3702122, size.height * 0.4949263);
    path151.arcToPoint(Offset(size.width * 0.3738823, size.height * 0.5019026),
        radius: Radius.elliptical(
            size.width * 0.02415588, size.height * 0.02869827),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path151.lineTo(size.width * 0.3700787, size.height * 0.5045188);
    path151.arcToPoint(Offset(size.width * 0.3663419, size.height * 0.4975424),
        radius: Radius.elliptical(
            size.width * 0.02248766, size.height * 0.02671635),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path151.close();

    Paint paint151fill = Paint()..style = PaintingStyle.fill;
    paint151fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path151, paint151fill);

    Path path152 = Path();
    path152.moveTo(size.width * 0.3700787, size.height * 0.5045188);
    path152.lineTo(size.width * 0.3738823, size.height * 0.5019026);
    path152.arcToPoint(Offset(size.width * 0.3748165, size.height * 0.5047566),
        radius: Radius.elliptical(
            size.width * 0.01781663, size.height * 0.02116696),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path152.lineTo(size.width * 0.3709462, size.height * 0.5073728);
    path152.arcToPoint(Offset(size.width * 0.3700787, size.height * 0.5045188),
        radius: Radius.elliptical(
            size.width * 0.01734953, size.height * 0.02061202),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path152.close();

    Paint paint152fill = Paint()..style = PaintingStyle.fill;
    paint152fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path152, paint152fill);

    Path path153 = Path();
    path153.moveTo(size.width * 0.3709462, size.height * 0.5073728);
    path153.lineTo(size.width * 0.3748165, size.height * 0.5047566);
    path153.arcToPoint(Offset(size.width * 0.3754171, size.height * 0.5076899),
        radius: Radius.elliptical(
            size.width * 0.01661551, size.height * 0.01973997),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path153.lineTo(size.width * 0.3715468, size.height * 0.5103853);
    path153.arcToPoint(Offset(size.width * 0.3709462, size.height * 0.5073728),
        radius: Radius.elliptical(
            size.width * 0.01748298, size.height * 0.02077057),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path153.close();

    Paint paint153fill = Paint()..style = PaintingStyle.fill;
    paint153fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path153, paint153fill);

    Path path154 = Path();
    path154.moveTo(size.width * 0.3715468, size.height * 0.5103853);
    path154.lineTo(size.width * 0.3754171, size.height * 0.5076899);
    path154.arcToPoint(Offset(size.width * 0.3754171, size.height * 0.5104646),
        radius: Radius.elliptical(
            size.width * 0.009342053, size.height * 0.01109878),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path154.lineTo(size.width * 0.3754171, size.height * 0.5104646);
    path154.lineTo(size.width * 0.3716135, size.height * 0.5130807);
    path154.lineTo(size.width * 0.3716135, size.height * 0.5130807);
    path154.arcToPoint(Offset(size.width * 0.3716135, size.height * 0.5103060),
        radius: Radius.elliptical(
            size.width * 0.01381289, size.height * 0.01641034),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path154.close();

    Paint paint154fill = Paint()..style = PaintingStyle.fill;
    paint154fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path154, paint154fill);

    Path path155 = Path();
    path155.moveTo(size.width * 0.3717470, size.height * 0.5131600);
    path155.lineTo(size.width * 0.3755505, size.height * 0.5105438);
    path155.arcToPoint(Offset(size.width * 0.3755505, size.height * 0.5132393),
        radius: Radius.elliptical(
            size.width * 0.01194448, size.height * 0.01419058),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path155.lineTo(size.width * 0.3716802, size.height * 0.5159347);
    path155.arcToPoint(Offset(size.width * 0.3716802, size.height * 0.5131600),
        radius: Radius.elliptical(
            size.width * 0.008608034, size.height * 0.01022673),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path155.close();

    Paint paint155fill = Paint()..style = PaintingStyle.fill;
    paint155fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path155, paint155fill);

    Path path156 = Path();
    path156.moveTo(size.width * 0.3714800, size.height * 0.5159347);
    path156.lineTo(size.width * 0.3753503, size.height * 0.5132393);
    path156.arcToPoint(Offset(size.width * 0.3727479, size.height * 0.5178373),
        radius: Radius.elliptical(
            size.width * 0.005738689, size.height * 0.006817821),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path156.lineTo(size.width * 0.3689443, size.height * 0.5204535);
    path156.arcToPoint(Offset(size.width * 0.3714800, size.height * 0.5159347),
        radius: Radius.elliptical(
            size.width * 0.005538503, size.height * 0.006579990),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path156.close();

    Paint paint156fill = Paint()..style = PaintingStyle.fill;
    paint156fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path156, paint156fill);

    Path path157 = Path();
    path157.moveTo(size.width * 0.3621380, size.height * 0.4933407);
    path157.arcToPoint(Offset(size.width * 0.3717470, size.height * 0.5131600),
        radius: Radius.elliptical(
            size.width * 0.02121981, size.height * 0.02521008),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path157.cubicTo(
        size.width * 0.3717470,
        size.height * 0.5203742,
        size.width * 0.3674096,
        size.height * 0.5233074,
        size.width * 0.3620713,
        size.height * 0.5196607);
    path157.arcToPoint(Offset(size.width * 0.3524623, size.height * 0.4999207),
        radius: Radius.elliptical(
            size.width * 0.02108635, size.height * 0.02505153),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path157.cubicTo(
        size.width * 0.3524623,
        size.height * 0.4926272,
        size.width * 0.3567997,
        size.height * 0.4896940,
        size.width * 0.3621380,
        size.height * 0.4933407);
    path157.close();

    Paint paint157fill = Paint()..style = PaintingStyle.fill;
    paint157fill.color = Color(0xff252529).withOpacity(1.0);
    canvas.drawPath(path157, paint157fill);

    Path path158 = Path();
    path158.moveTo(size.width * 0.2346857, size.height * 0.4005074);
    path158.lineTo(size.width * 0.2405579, size.height * 0.3964642);
    path158.arcToPoint(Offset(size.width * 0.2511010, size.height * 0.3977327),
        radius: Radius.elliptical(
            size.width * 0.01047644, size.height * 0.01244649),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path158.lineTo(size.width * 0.2452289, size.height * 0.4017758);
    path158.arcToPoint(Offset(size.width * 0.2346857, size.height * 0.4005074),
        radius: Radius.elliptical(
            size.width * 0.01047644, size.height * 0.01244649),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path158.close();

    Paint paint158fill = Paint()..style = PaintingStyle.fill;
    paint158fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path158, paint158fill);

    Path path159 = Path();
    path159.moveTo(size.width * 0.2346857, size.height * 0.4005074);
    path159.lineTo(size.width * 0.2405579, size.height * 0.3964642);
    path159.arcToPoint(Offset(size.width * 0.2450954, size.height * 0.3952751),
        radius: Radius.elliptical(
            size.width * 0.008608034, size.height * 0.01022673),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path159.lineTo(size.width * 0.2392233, size.height * 0.3993975);
    path159.arcToPoint(Offset(size.width * 0.2346857, size.height * 0.4005074),
        radius: Radius.elliptical(
            size.width * 0.007940745, size.height * 0.009433962),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path159.close();

    Paint paint159fill = Paint()..style = PaintingStyle.fill;
    paint159fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path159, paint159fill);

    Path path160 = Path();
    path160.moveTo(size.width * 0.2392233, size.height * 0.3993975);
    path160.lineTo(size.width * 0.2450954, size.height * 0.3952751);
    path160.arcToPoint(Offset(size.width * 0.2482317, size.height * 0.3961471),
        radius: Radius.elliptical(
            size.width * 0.01121046, size.height * 0.01331853),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path160.lineTo(size.width * 0.2423595, size.height * 0.4001903);
    path160.arcToPoint(Offset(size.width * 0.2392233, size.height * 0.3993975),
        radius: Radius.elliptical(
            size.width * 0.01101028, size.height * 0.01308070),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path160.close();

    Paint paint160fill = Paint()..style = PaintingStyle.fill;
    paint160fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path160, paint160fill);

    Path path161 = Path();
    path161.moveTo(size.width * 0.2423595, size.height * 0.4001903);
    path161.lineTo(size.width * 0.2482317, size.height * 0.3963850);
    path161.arcToPoint(Offset(size.width * 0.2511010, size.height * 0.3979705),
        radius: Radius.elliptical(
            size.width * 0.01221140, size.height * 0.01450769),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path161.lineTo(size.width * 0.2452289, size.height * 0.4020136);
    path161.arcToPoint(Offset(size.width * 0.2423595, size.height * 0.4004281),
        radius: Radius.elliptical(
            size.width * 0.01561457, size.height * 0.01855082),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path161.close();

    Paint paint161fill = Paint()..style = PaintingStyle.fill;
    paint161fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path161, paint161fill);

    Path path162 = Path();
    path162.moveTo(size.width * 0.2615107, size.height * 0.4392738);
    path162.lineTo(size.width * 0.2556386, size.height * 0.4433169);
    path162.arcToPoint(Offset(size.width * 0.2602429, size.height * 0.4320596),
        radius: Radius.elliptical(
            size.width * 0.01040972, size.height * 0.01236721),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path162.arcToPoint(Offset(size.width * 0.2454958, size.height * 0.4017758),
        radius: Radius.elliptical(
            size.width * 0.03256373, size.height * 0.03868717),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path162.lineTo(size.width * 0.2513679, size.height * 0.3977327);
    path162.arcToPoint(Offset(size.width * 0.2658481, size.height * 0.4280958),
        radius: Radius.elliptical(
            size.width * 0.03243027, size.height * 0.03852862),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path162.arcToPoint(Offset(size.width * 0.2615107, size.height * 0.4392738),
        radius: Radius.elliptical(
            size.width * 0.01027626, size.height * 0.01220866),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path162.close();

    Paint paint162fill = Paint()..style = PaintingStyle.fill;
    paint162fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path162, paint162fill);

    Path path163 = Path();
    path163.moveTo(size.width * 0.2452289, size.height * 0.4017758);
    path163.lineTo(size.width * 0.2511010, size.height * 0.3977327);
    path163.lineTo(size.width * 0.2511010, size.height * 0.3977327);
    path163.lineTo(size.width * 0.2452289, size.height * 0.4017758);
    path163.close();

    Paint paint163fill = Paint()..style = PaintingStyle.fill;
    paint163fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path163, paint163fill);

    Path path164 = Path();
    path164.moveTo(size.width * 0.2453623, size.height * 0.4018551);
    path164.lineTo(size.width * 0.2512345, size.height * 0.3978120);
    path164.arcToPoint(Offset(size.width * 0.2544375, size.height * 0.4005074),
        radius: Radius.elliptical(
            size.width * 0.01748298, size.height * 0.02077057),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path164.lineTo(size.width * 0.2485653, size.height * 0.4045505);
    path164.arcToPoint(Offset(size.width * 0.2453623, size.height * 0.4018551),
        radius: Radius.elliptical(
            size.width * 0.02141999, size.height * 0.02544792),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path164.close();

    Paint paint164fill = Paint()..style = PaintingStyle.fill;
    paint164fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path164, paint164fill);

    Path path165 = Path();
    path165.moveTo(size.width * 0.2485653, size.height * 0.4043127);
    path165.lineTo(size.width * 0.2544375, size.height * 0.4002695);
    path165.arcToPoint(Offset(size.width * 0.2575737, size.height * 0.4039163),
        radius: Radius.elliptical(
            size.width * 0.03383158, size.height * 0.04019344),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path165.lineTo(size.width * 0.2517016, size.height * 0.4079594);
    path165.arcToPoint(Offset(size.width * 0.2485653, size.height * 0.4043127),
        radius: Radius.elliptical(
            size.width * 0.03383158, size.height * 0.04019344),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path165.close();

    Paint paint165fill = Paint()..style = PaintingStyle.fill;
    paint165fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path165, paint165fill);

    Path path166 = Path();
    path166.moveTo(size.width * 0.2517016, size.height * 0.4081972);
    path166.lineTo(size.width * 0.2575737, size.height * 0.4043127);
    path166.arcToPoint(Offset(size.width * 0.2632457, size.height * 0.4150151),
        radius: Radius.elliptical(
            size.width * 0.03489924, size.height * 0.04146187),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path166.lineTo(size.width * 0.2573735, size.height * 0.4190582);
    path166.arcToPoint(Offset(size.width * 0.2517016, size.height * 0.4083558),
        radius: Radius.elliptical(
            size.width * 0.03603363, size.height * 0.04280958),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path166.close();

    Paint paint166fill = Paint()..style = PaintingStyle.fill;
    paint166fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path166, paint166fill);

    Path path167 = Path();
    path167.moveTo(size.width * 0.2573735, size.height * 0.4188996);
    path167.lineTo(size.width * 0.2632457, size.height * 0.4148565);
    path167.arcToPoint(Offset(size.width * 0.2646470, size.height * 0.4192167),
        radius: Radius.elliptical(
            size.width * 0.03469905, size.height * 0.04122404),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path167.lineTo(size.width * 0.2587749, size.height * 0.4232599);
    path167.arcToPoint(Offset(size.width * 0.2573735, size.height * 0.4188996),
        radius: Radius.elliptical(
            size.width * 0.03469905, size.height * 0.04122404),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path167.close();

    Paint paint167fill = Paint()..style = PaintingStyle.fill;
    paint167fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path167, paint167fill);

    Path path168 = Path();
    path168.moveTo(size.width * 0.2587749, size.height * 0.4232599);
    path168.lineTo(size.width * 0.2646470, size.height * 0.4192167);
    path168.arcToPoint(Offset(size.width * 0.2655145, size.height * 0.4237355),
        radius: Radius.elliptical(
            size.width * 0.02602429, size.height * 0.03091803),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path168.lineTo(size.width * 0.2596423, size.height * 0.4278579);
    path168.arcToPoint(Offset(size.width * 0.2587749, size.height * 0.4232599),
        radius: Radius.elliptical(
            size.width * 0.02502336, size.height * 0.02972887),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path168.close();

    Paint paint168fill = Paint()..style = PaintingStyle.fill;
    paint168fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path168, paint168fill);

    Path path169 = Path();
    path169.moveTo(size.width * 0.2596423, size.height * 0.4280958);
    path169.lineTo(size.width * 0.2655145, size.height * 0.4239734);
    path169.arcToPoint(Offset(size.width * 0.2658481, size.height * 0.4282543),
        radius: Radius.elliptical(
            size.width * 0.02262111, size.height * 0.02687490),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path169.lineTo(size.width * 0.2658481, size.height * 0.4282543);
    path169.lineTo(size.width * 0.2599760, size.height * 0.4322974);
    path169.lineTo(size.width * 0.2599760, size.height * 0.4322974);
    path169.arcToPoint(Offset(size.width * 0.2596423, size.height * 0.4280958),
        radius: Radius.elliptical(
            size.width * 0.02182037, size.height * 0.02592358),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path169.close();

    Paint paint169fill = Paint()..style = PaintingStyle.fill;
    paint169fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path169, paint169fill);

    Path path170 = Path();
    path170.moveTo(size.width * 0.2602429, size.height * 0.4321389);
    path170.lineTo(size.width * 0.2661150, size.height * 0.4280958);
    path170.arcToPoint(Offset(size.width * 0.2657147, size.height * 0.4322974),
        radius: Radius.elliptical(
            size.width * 0.01468037, size.height * 0.01744094),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path170.lineTo(size.width * 0.2595756, size.height * 0.4360235);
    path170.arcToPoint(Offset(size.width * 0.2599760, size.height * 0.4318218),
        radius: Radius.elliptical(
            size.width * 0.01468037, size.height * 0.01744094),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path170.close();

    Paint paint170fill = Paint()..style = PaintingStyle.fill;
    paint170fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path170, paint170fill);

    Path path171 = Path();
    path171.moveTo(size.width * 0.2595756, size.height * 0.4360235);
    path171.lineTo(size.width * 0.2654478, size.height * 0.4319803);
    path171.arcToPoint(Offset(size.width * 0.2615107, size.height * 0.4389567),
        radius: Radius.elliptical(
            size.width * 0.008874950, size.height * 0.01054384),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path171.lineTo(size.width * 0.2556386, size.height * 0.4429998);
    path171.arcToPoint(Offset(size.width * 0.2595756, size.height * 0.4360235),
        radius: Radius.elliptical(
            size.width * 0.008741492, size.height * 0.01038529),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path171.close();

    Paint paint171fill = Paint()..style = PaintingStyle.fill;
    paint171fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path171, paint171fill);

    Path path172 = Path();
    path172.moveTo(size.width * 0.2452289, size.height * 0.4017758);
    path172.arcToPoint(Offset(size.width * 0.2602429, size.height * 0.4320596),
        radius: Radius.elliptical(
            size.width * 0.03256373, size.height * 0.03868717),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path172.cubicTo(
        size.width * 0.2602429,
        size.height * 0.4432377,
        size.width * 0.2535700,
        size.height * 0.4479150,
        size.width * 0.2453623,
        size.height * 0.4421278);
    path172.arcToPoint(Offset(size.width * 0.2306820, size.height * 0.4117647),
        radius: Radius.elliptical(
            size.width * 0.03243027, size.height * 0.03852862),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path172.cubicTo(
        size.width * 0.2304151,
        size.height * 0.4006659,
        size.width * 0.2370879,
        size.height * 0.3963850,
        size.width * 0.2452289,
        size.height * 0.4017758);
    path172.close();

    Paint paint172fill = Paint()..style = PaintingStyle.fill;
    paint172fill.color = Color(0xff252529).withOpacity(1.0);
    canvas.drawPath(path172, paint172fill);

    Path path173 = Path();
    path173.moveTo(size.width * 0.2346857, size.height * 0.4106548);
    path173.lineTo(size.width * 0.2384893, size.height * 0.4080387);
    path173.arcToPoint(Offset(size.width * 0.2451622, size.height * 0.4088315),
        radius: Radius.elliptical(
            size.width * 0.006672895, size.height * 0.007927699),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path173.lineTo(size.width * 0.2413586, size.height * 0.4114476);
    path173.arcToPoint(Offset(size.width * 0.2346857, size.height * 0.4106548),
        radius: Radius.elliptical(
            size.width * 0.006672895, size.height * 0.007927699),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path173.close();

    Paint paint173fill = Paint()..style = PaintingStyle.fill;
    paint173fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path173, paint173fill);

    Path path174 = Path();
    path174.moveTo(size.width * 0.2346857, size.height * 0.4106548);
    path174.lineTo(size.width * 0.2384893, size.height * 0.4080387);
    path174.arcToPoint(Offset(size.width * 0.2414921, size.height * 0.4072459),
        radius: Radius.elliptical(
            size.width * 0.005004671, size.height * 0.005945775),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path174.lineTo(size.width * 0.2376218, size.height * 0.4099413);
    path174.arcToPoint(Offset(size.width * 0.2346857, size.height * 0.4106548),
        radius: Radius.elliptical(
            size.width * 0.004871213, size.height * 0.005787221),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path174.close();

    Paint paint174fill = Paint()..style = PaintingStyle.fill;
    paint174fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path174, paint174fill);

    Path path175 = Path();
    path175.moveTo(size.width * 0.2376218, size.height * 0.4099413);
    path175.lineTo(size.width * 0.2414921, size.height * 0.4072459);
    path175.arcToPoint(Offset(size.width * 0.2434939, size.height * 0.4078009),
        radius: Radius.elliptical(
            size.width * 0.007874016, size.height * 0.009354685),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path175.lineTo(size.width * 0.2396904, size.height * 0.4104170);
    path175.arcToPoint(Offset(size.width * 0.2376218, size.height * 0.4099413),
        radius: Radius.elliptical(
            size.width * 0.005938876, size.height * 0.007055652),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path175.close();

    Paint paint175fill = Paint()..style = PaintingStyle.fill;
    paint175fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path175, paint175fill);

    Path path176 = Path();
    path176.moveTo(size.width * 0.2396904, size.height * 0.4104170);
    path176.lineTo(size.width * 0.2434939, size.height * 0.4078009);
    path176.arcToPoint(Offset(size.width * 0.2453623, size.height * 0.4088315),
        radius: Radius.elliptical(
            size.width * 0.007807287, size.height * 0.009275408),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path176.lineTo(size.width * 0.2415588, size.height * 0.4114476);
    path176.arcToPoint(Offset(size.width * 0.2396904, size.height * 0.4104170),
        radius: Radius.elliptical(
            size.width * 0.01521420, size.height * 0.01807515),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path176.close();

    Paint paint176fill = Paint()..style = PaintingStyle.fill;
    paint176fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path176, paint176fill);

    Path path177 = Path();
    path177.moveTo(size.width * 0.2521687, size.height * 0.4360235);
    path177.lineTo(size.width * 0.2483651, size.height * 0.4386396);
    path177.arcToPoint(Offset(size.width * 0.2511678, size.height * 0.4313461),
        radius: Radius.elliptical(
            size.width * 0.006672895, size.height * 0.007927699),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path177.arcToPoint(Offset(size.width * 0.2415588, size.height * 0.4115269),
        radius: Radius.elliptical(
            size.width * 0.02121981, size.height * 0.02521008),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path177.lineTo(size.width * 0.2453623, size.height * 0.4089107);
    path177.arcToPoint(Offset(size.width * 0.2549713, size.height * 0.4286507),
        radius: Radius.elliptical(
            size.width * 0.02121981, size.height * 0.02521008),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path177.arcToPoint(Offset(size.width * 0.2521687, size.height * 0.4360235),
        radius: Radius.elliptical(
            size.width * 0.006672895, size.height * 0.007927699),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path177.close();

    Paint paint177fill = Paint()..style = PaintingStyle.fill;
    paint177fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path177, paint177fill);

    Path path178 = Path();
    path178.moveTo(size.width * 0.2415588, size.height * 0.4114476);
    path178.lineTo(size.width * 0.2453623, size.height * 0.4088315);
    path178.lineTo(size.width * 0.2453623, size.height * 0.4088315);
    path178.lineTo(size.width * 0.2414921, size.height * 0.4114476);
    path178.close();

    Paint paint178fill = Paint()..style = PaintingStyle.fill;
    paint178fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path178, paint178fill);

    Path path179 = Path();
    path179.moveTo(size.width * 0.2416255, size.height * 0.4115269);
    path179.lineTo(size.width * 0.2454958, size.height * 0.4089107);
    path179.arcToPoint(Offset(size.width * 0.2475644, size.height * 0.4106548),
        radius: Radius.elliptical(
            size.width * 0.01334579, size.height * 0.01585540),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path179.lineTo(size.width * 0.2437608, size.height * 0.4132710);
    path179.arcToPoint(Offset(size.width * 0.2416255, size.height * 0.4115269),
        radius: Radius.elliptical(
            size.width * 0.02035233, size.height * 0.02417948),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path179.close();

    Paint paint179fill = Paint()..style = PaintingStyle.fill;
    paint179fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path179, paint179fill);

    Path path180 = Path();
    path180.moveTo(size.width * 0.2437608, size.height * 0.4132710);
    path180.lineTo(size.width * 0.2475644, size.height * 0.4106548);
    path180.arcToPoint(Offset(size.width * 0.2495663, size.height * 0.4130331),
        radius: Radius.elliptical(
            size.width * 0.01421327, size.height * 0.01688600),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path180.lineTo(size.width * 0.2457627, size.height * 0.4156493);
    path180.quadraticBezierTo(size.width * 0.2447618, size.height * 0.4143808,
        size.width * 0.2437608, size.height * 0.4132710);
    path180.close();

    Paint paint180fill = Paint()..style = PaintingStyle.fill;
    paint180fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path180, paint180fill);

    Path path181 = Path();
    path181.moveTo(size.width * 0.2457627, size.height * 0.4156493);
    path181.lineTo(size.width * 0.2495663, size.height * 0.4130331);
    path181.arcToPoint(Offset(size.width * 0.2535700, size.height * 0.4201681),
        radius: Radius.elliptical(
            size.width * 0.02248766, size.height * 0.02671635),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path181.lineTo(size.width * 0.2497664, size.height * 0.4227842);
    path181.arcToPoint(Offset(size.width * 0.2460296, size.height * 0.4158078),
        radius: Radius.elliptical(
            size.width * 0.02248766, size.height * 0.02671635),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path181.close();

    Paint paint181fill = Paint()..style = PaintingStyle.fill;
    paint181fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path181, paint181fill);

    Path path182 = Path();
    path182.moveTo(size.width * 0.2494995, size.height * 0.4226257);
    path182.lineTo(size.width * 0.2535700, size.height * 0.4201681);
    path182.cubicTo(
        size.width * 0.2535700,
        size.height * 0.4211194,
        size.width * 0.2542373,
        size.height * 0.4220707,
        size.width * 0.2545042,
        size.height * 0.4230220);
    path182.lineTo(size.width * 0.2506339, size.height * 0.4256382);
    path182.arcToPoint(Offset(size.width * 0.2497664, size.height * 0.4227842),
        radius: Radius.elliptical(
            size.width * 0.01734953, size.height * 0.02061202),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path182.close();

    Paint paint182fill = Paint()..style = PaintingStyle.fill;
    paint182fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path182, paint182fill);

    Path path183 = Path();
    path183.moveTo(size.width * 0.2503670, size.height * 0.4254796);
    path183.lineTo(size.width * 0.2542373, size.height * 0.4228635);
    path183.cubicTo(
        size.width * 0.2542373,
        size.height * 0.4238148,
        size.width * 0.2546377,
        size.height * 0.4248454,
        size.width * 0.2547711,
        size.height * 0.4257967);
    path183.lineTo(size.width * 0.2509676, size.height * 0.4284922);
    path183.arcToPoint(Offset(size.width * 0.2503670, size.height * 0.4254796),
        radius: Radius.elliptical(
            size.width * 0.01748298, size.height * 0.02077057),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path183.close();

    Paint paint183fill = Paint()..style = PaintingStyle.fill;
    paint183fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path183, paint183fill);

    Path path184 = Path();
    path184.moveTo(size.width * 0.2509676, size.height * 0.4284922);
    path184.lineTo(size.width * 0.2547711, size.height * 0.4257967);
    path184.arcToPoint(Offset(size.width * 0.2547711, size.height * 0.4285714),
        radius: Radius.elliptical(
            size.width * 0.01441345, size.height * 0.01712383),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path184.lineTo(size.width * 0.2547711, size.height * 0.4285714);
    path184.lineTo(size.width * 0.2509676, size.height * 0.4311876);
    path184.lineTo(size.width * 0.2509676, size.height * 0.4311876);
    path184.arcToPoint(Offset(size.width * 0.2509676, size.height * 0.4284129),
        radius: Radius.elliptical(
            size.width * 0.01334579, size.height * 0.01585540),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path184.close();

    Paint paint184fill = Paint()..style = PaintingStyle.fill;
    paint184fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path184, paint184fill);

    Path path185 = Path();
    path185.moveTo(size.width * 0.2511678, size.height * 0.4312668);
    path185.lineTo(size.width * 0.2549713, size.height * 0.4286507);
    path185.arcToPoint(Offset(size.width * 0.2549713, size.height * 0.4313461),
        radius: Radius.elliptical(
            size.width * 0.008140932, size.height * 0.009671793),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path185.lineTo(size.width * 0.2511678, size.height * 0.4340415);
    path185.arcToPoint(Offset(size.width * 0.2511678, size.height * 0.4312668),
        radius: Radius.elliptical(
            size.width * 0.01247831, size.height * 0.01482480),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path185.close();

    Paint paint185fill = Paint()..style = PaintingStyle.fill;
    paint185fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path185, paint185fill);

    Path path186 = Path();
    path186.moveTo(size.width * 0.2509008, size.height * 0.4340415);
    path186.lineTo(size.width * 0.2547044, size.height * 0.4313461);
    path186.arcToPoint(Offset(size.width * 0.2521687, size.height * 0.4359442),
        radius: Radius.elliptical(
            size.width * 0.005671960, size.height * 0.006738544),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path186.lineTo(size.width * 0.2483651, size.height * 0.4385603);
    path186.arcToPoint(Offset(size.width * 0.2509008, size.height * 0.4340415),
        radius: Radius.elliptical(
            size.width * 0.005738689, size.height * 0.006817821),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path186.close();

    Paint paint186fill = Paint()..style = PaintingStyle.fill;
    paint186fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path186, paint186fill);

    Path path187 = Path();
    path187.moveTo(size.width * 0.2415588, size.height * 0.4114476);
    path187.arcToPoint(Offset(size.width * 0.2511678, size.height * 0.4312668),
        radius: Radius.elliptical(
            size.width * 0.02121981, size.height * 0.02521008),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path187.cubicTo(
        size.width * 0.2511678,
        size.height * 0.4384811,
        size.width * 0.2468304,
        size.height * 0.4414143,
        size.width * 0.2414921,
        size.height * 0.4377676);
    path187.arcToPoint(Offset(size.width * 0.2318831, size.height * 0.4180276),
        radius: Radius.elliptical(
            size.width * 0.02121981, size.height * 0.02521008),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path187.cubicTo(
        size.width * 0.2318831,
        size.height * 0.4107341,
        size.width * 0.2362205,
        size.height * 0.4078009,
        size.width * 0.2415588,
        size.height * 0.4114476);
    path187.close();

    Paint paint187fill = Paint()..style = PaintingStyle.fill;
    paint187fill.color = Color(0xff252529).withOpacity(1.0);
    canvas.drawPath(path187, paint187fill);

    Path path188 = Path();
    path188.moveTo(size.width * 0.1183772, size.height * 0.3206754);
    path188.lineTo(size.width * 0.1242493, size.height * 0.3165530);
    path188.arcToPoint(Offset(size.width * 0.1347257, size.height * 0.3178215),
        radius: Radius.elliptical(
            size.width * 0.01034299, size.height * 0.01228793),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path188.lineTo(size.width * 0.1288536, size.height * 0.3218646);
    path188.arcToPoint(Offset(size.width * 0.1183772, size.height * 0.3206754),
        radius: Radius.elliptical(
            size.width * 0.01014280, size.height * 0.01205010),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path188.close();

    Paint paint188fill = Paint()..style = PaintingStyle.fill;
    paint188fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path188, paint188fill);

    Path path189 = Path();
    path189.moveTo(size.width * 0.1183772, size.height * 0.3206754);
    path189.lineTo(size.width * 0.1242493, size.height * 0.3165530);
    path189.arcToPoint(Offset(size.width * 0.1287869, size.height * 0.3154432),
        radius: Radius.elliptical(
            size.width * 0.007740558, size.height * 0.009196131),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path189.lineTo(size.width * 0.1229147, size.height * 0.3194863);
    path189.arcToPoint(Offset(size.width * 0.1183772, size.height * 0.3206754),
        radius: Radius.elliptical(
            size.width * 0.007273455, size.height * 0.008641192),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path189.close();

    Paint paint189fill = Paint()..style = PaintingStyle.fill;
    paint189fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path189, paint189fill);

    Path path190 = Path();
    path190.moveTo(size.width * 0.1229147, size.height * 0.3194863);
    path190.lineTo(size.width * 0.1287869, size.height * 0.3154432);
    path190.arcToPoint(Offset(size.width * 0.1318564, size.height * 0.3162359),
        radius: Radius.elliptical(
            size.width * 0.01060990, size.height * 0.01260504),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path190.lineTo(size.width * 0.1259843, size.height * 0.3202791);
    path190.arcToPoint(Offset(size.width * 0.1229147, size.height * 0.3194863),
        radius: Radius.elliptical(
            size.width * 0.01060990, size.height * 0.01260504),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path190.close();

    Paint paint190fill = Paint()..style = PaintingStyle.fill;
    paint190fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path190, paint190fill);

    Path path191 = Path();
    path191.moveTo(size.width * 0.1259843, size.height * 0.3202791);
    path191.lineTo(size.width * 0.1318564, size.height * 0.3162359);
    path191.arcToPoint(Offset(size.width * 0.1347257, size.height * 0.3178215),
        radius: Radius.elliptical(
            size.width * 0.01381289, size.height * 0.01641034),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path191.lineTo(size.width * 0.1288536, size.height * 0.3218646);
    path191.arcToPoint(Offset(size.width * 0.1259843, size.height * 0.3202791),
        radius: Radius.elliptical(
            size.width * 0.01841719, size.height * 0.02188045),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path191.close();

    Paint paint191fill = Paint()..style = PaintingStyle.fill;
    paint191fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path191, paint191fill);

    Path path192 = Path();
    path192.moveTo(size.width * 0.1451355, size.height * 0.3593626);
    path192.lineTo(size.width * 0.1392633, size.height * 0.3634057);
    path192.arcToPoint(Offset(size.width * 0.1436007, size.height * 0.3521484),
        radius: Radius.elliptical(
            size.width * 0.01027626, size.height * 0.01220866),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path192.arcToPoint(Offset(size.width * 0.1288536, size.height * 0.3218646),
        radius: Radius.elliptical(
            size.width * 0.03249700, size.height * 0.03860790),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path192.lineTo(size.width * 0.1347257, size.height * 0.3178215);
    path192.arcToPoint(Offset(size.width * 0.1494728, size.height * 0.3481053),
        radius: Radius.elliptical(
            size.width * 0.03249700, size.height * 0.03860790),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path192.arcToPoint(Offset(size.width * 0.1451355, size.height * 0.3593626),
        radius: Radius.elliptical(
            size.width * 0.01027626, size.height * 0.01220866),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path192.close();

    Paint paint192fill = Paint()..style = PaintingStyle.fill;
    paint192fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path192, paint192fill);

    Path path193 = Path();
    path193.moveTo(size.width * 0.1288536, size.height * 0.3218646);
    path193.lineTo(size.width * 0.1347257, size.height * 0.3178215);
    path193.lineTo(size.width * 0.1347257, size.height * 0.3178215);
    path193.lineTo(size.width * 0.1288536, size.height * 0.3218646);
    path193.close();

    Paint paint193fill = Paint()..style = PaintingStyle.fill;
    paint193fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path193, paint193fill);

    Path path194 = Path();
    path194.moveTo(size.width * 0.1289871, size.height * 0.3219439);
    path194.lineTo(size.width * 0.1348592, size.height * 0.3179007);
    path194.arcToPoint(Offset(size.width * 0.1380622, size.height * 0.3205962),
        radius: Radius.elliptical(
            size.width * 0.02141999, size.height * 0.02544792),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path194.lineTo(size.width * 0.1321900, size.height * 0.3247186);
    path194.arcToPoint(Offset(size.width * 0.1289871, size.height * 0.3219439),
        radius: Radius.elliptical(
            size.width * 0.02182037, size.height * 0.02592358),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path194.close();

    Paint paint194fill = Paint()..style = PaintingStyle.fill;
    paint194fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path194, paint194fill);

    Path path195 = Path();
    path195.moveTo(size.width * 0.1321900, size.height * 0.3250357);
    path195.lineTo(size.width * 0.1380622, size.height * 0.3209133);
    path195.arcToPoint(Offset(size.width * 0.1411985, size.height * 0.3245600),
        radius: Radius.elliptical(
            size.width * 0.03403176, size.height * 0.04043127),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path195.lineTo(size.width * 0.1353263, size.height * 0.3286031);
    path195.arcToPoint(Offset(size.width * 0.1321900, size.height * 0.3250357),
        radius: Radius.elliptical(
            size.width * 0.02669158, size.height * 0.03171080),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path195.close();

    Paint paint195fill = Paint()..style = PaintingStyle.fill;
    paint195fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path195, paint195fill);

    Path path196 = Path();
    path196.moveTo(size.width * 0.1353263, size.height * 0.3282860);
    path196.lineTo(size.width * 0.1411985, size.height * 0.3242429);
    path196.arcToPoint(Offset(size.width * 0.1468037, size.height * 0.3349453),
        radius: Radius.elliptical(
            size.width * 0.03623382, size.height * 0.04304741),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path196.lineTo(size.width * 0.1409315, size.height * 0.3389884);
    path196.arcToPoint(Offset(size.width * 0.1351928, size.height * 0.3282860),
        radius: Radius.elliptical(
            size.width * 0.03623382, size.height * 0.04304741),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path196.close();

    Paint paint196fill = Paint()..style = PaintingStyle.fill;
    paint196fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path196, paint196fill);

    Path path197 = Path();
    path197.moveTo(size.width * 0.1410650, size.height * 0.3389884);
    path197.lineTo(size.width * 0.1469371, size.height * 0.3349453);
    path197.arcToPoint(Offset(size.width * 0.1482717, size.height * 0.3393055),
        radius: Radius.elliptical(
            size.width * 0.02702522, size.height * 0.03210718),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path197.lineTo(size.width * 0.1423996, size.height * 0.3433487);
    path197.arcToPoint(Offset(size.width * 0.1410650, size.height * 0.3389884),
        radius: Radius.elliptical(
            size.width * 0.02702522, size.height * 0.03210718),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path197.close();

    Paint paint197fill = Paint()..style = PaintingStyle.fill;
    paint197fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path197, paint197fill);

    Path path198 = Path();
    path198.moveTo(size.width * 0.1423996, size.height * 0.3433487);
    path198.lineTo(size.width * 0.1482717, size.height * 0.3393055);
    path198.arcToPoint(Offset(size.width * 0.1492059, size.height * 0.3439036),
        radius: Radius.elliptical(
            size.width * 0.02715868, size.height * 0.03226574),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path198.lineTo(size.width * 0.1433338, size.height * 0.3479467);
    path198.arcToPoint(Offset(size.width * 0.1423996, size.height * 0.3433487),
        radius: Radius.elliptical(
            size.width * 0.02715868, size.height * 0.03226574),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path198.close();

    Paint paint198fill = Paint()..style = PaintingStyle.fill;
    paint198fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path198, paint198fill);

    Path path199 = Path();
    path199.moveTo(size.width * 0.1433338, size.height * 0.3479467);
    path199.lineTo(size.width * 0.1492059, size.height * 0.3439036);
    path199.arcToPoint(Offset(size.width * 0.1492059, size.height * 0.3481053),
        radius: Radius.elliptical(
            size.width * 0.02155345, size.height * 0.02560647),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path199.lineTo(size.width * 0.1492059, size.height * 0.3481053);
    path199.lineTo(size.width * 0.1433338, size.height * 0.3521484);
    path199.lineTo(size.width * 0.1433338, size.height * 0.3521484);
    path199.arcToPoint(Offset(size.width * 0.1433338, size.height * 0.3479467),
        radius: Radius.elliptical(
            size.width * 0.02155345, size.height * 0.02560647),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path199.close();

    Paint paint199fill = Paint()..style = PaintingStyle.fill;
    paint199fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path199, paint199fill);

    Path path200 = Path();
    path200.moveTo(size.width * 0.1436007, size.height * 0.3522277);
    path200.lineTo(size.width * 0.1494728, size.height * 0.3481846);
    path200.arcToPoint(Offset(size.width * 0.1490725, size.height * 0.3523862),
        radius: Radius.elliptical(
            size.width * 0.01468037, size.height * 0.01744094),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path200.lineTo(size.width * 0.1432003, size.height * 0.3564294);
    path200.arcToPoint(Offset(size.width * 0.1436007, size.height * 0.3522277),
        radius: Radius.elliptical(
            size.width * 0.01468037, size.height * 0.01744094),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path200.close();

    Paint paint200fill = Paint()..style = PaintingStyle.fill;
    paint200fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path200, paint200fill);

    Path path201 = Path();
    path201.moveTo(size.width * 0.1432003, size.height * 0.3567465);
    path201.lineTo(size.width * 0.1490725, size.height * 0.3527033);
    path201.arcToPoint(Offset(size.width * 0.1451355, size.height * 0.3596797),
        radius: Radius.elliptical(
            size.width * 0.008407847, size.height * 0.009988901),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path201.lineTo(size.width * 0.1392633, size.height * 0.3637228);
    path201.arcToPoint(Offset(size.width * 0.1432003, size.height * 0.3567465),
        radius: Radius.elliptical(
            size.width * 0.008407847, size.height * 0.009988901),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path201.close();

    Paint paint201fill = Paint()..style = PaintingStyle.fill;
    paint201fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path201, paint201fill);

    Path path202 = Path();
    path202.moveTo(size.width * 0.1288536, size.height * 0.3218646);
    path202.arcToPoint(Offset(size.width * 0.1436007, size.height * 0.3521484),
        radius: Radius.elliptical(
            size.width * 0.03249700, size.height * 0.03860790),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path202.cubicTo(
        size.width * 0.1436007,
        size.height * 0.3633265,
        size.width * 0.1369278,
        size.height * 0.3680038,
        size.width * 0.1287869,
        size.height * 0.3622166);
    path202.arcToPoint(Offset(size.width * 0.1140398, size.height * 0.3319328),
        radius: Radius.elliptical(
            size.width * 0.03249700, size.height * 0.03860790),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path202.cubicTo(
        size.width * 0.1140398,
        size.height * 0.3207547,
        size.width * 0.1207127,
        size.height * 0.3162359,
        size.width * 0.1288536,
        size.height * 0.3218646);
    path202.close();

    Paint paint202fill = Paint()..style = PaintingStyle.fill;
    paint202fill.color = Color(0xff252529).withOpacity(1.0);
    canvas.drawPath(path202, paint202fill);

    Path path203 = Path();
    path203.moveTo(size.width * 0.1183104, size.height * 0.3307436);
    path203.lineTo(size.width * 0.1221807, size.height * 0.3281275);
    path203.arcToPoint(Offset(size.width * 0.1288536, size.height * 0.3289202),
        radius: Radius.elliptical(
            size.width * 0.006672895, size.height * 0.007927699),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path203.lineTo(size.width * 0.1249833, size.height * 0.3315364);
    path203.arcToPoint(Offset(size.width * 0.1183104, size.height * 0.3307436),
        radius: Radius.elliptical(
            size.width * 0.006672895, size.height * 0.007927699),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path203.close();

    Paint paint203fill = Paint()..style = PaintingStyle.fill;
    paint203fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path203, paint203fill);

    Path path204 = Path();
    path204.moveTo(size.width * 0.1183104, size.height * 0.3307436);
    path204.lineTo(size.width * 0.1221807, size.height * 0.3281275);
    path204.arcToPoint(Offset(size.width * 0.1251168, size.height * 0.3274140),
        radius: Radius.elliptical(
            size.width * 0.004804484, size.height * 0.005707944),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path204.lineTo(size.width * 0.1213132, size.height * 0.3300301);
    path204.arcToPoint(Offset(size.width * 0.1183104, size.height * 0.3307436),
        radius: Radius.elliptical(
            size.width * 0.005538503, size.height * 0.006579990),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path204.close();

    Paint paint204fill = Paint()..style = PaintingStyle.fill;
    paint204fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path204, paint204fill);

    Path path205 = Path();
    path205.moveTo(size.width * 0.1213132, size.height * 0.3300301);
    path205.lineTo(size.width * 0.1251168, size.height * 0.3274140);
    path205.arcToPoint(Offset(size.width * 0.1271854, size.height * 0.3278896),
        radius: Radius.elliptical(
            size.width * 0.005938876, size.height * 0.007055652),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path205.lineTo(size.width * 0.1233151, size.height * 0.3305058);
    path205.arcToPoint(Offset(size.width * 0.1213132, size.height * 0.3300301),
        radius: Radius.elliptical(
            size.width * 0.01181102, size.height * 0.01403203),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path205.close();

    Paint paint205fill = Paint()..style = PaintingStyle.fill;
    paint205fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path205, paint205fill);

    Path path206 = Path();
    path206.moveTo(size.width * 0.1233151, size.height * 0.3305058);
    path206.lineTo(size.width * 0.1271854, size.height * 0.3278896);
    path206.arcToPoint(Offset(size.width * 0.1290538, size.height * 0.3289202),
        radius: Radius.elliptical(
            size.width * 0.01521420, size.height * 0.01807515),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path206.lineTo(size.width * 0.1251835, size.height * 0.3315364);
    path206.lineTo(size.width * 0.1233151, size.height * 0.3305058);
    path206.close();

    Paint paint206fill = Paint()..style = PaintingStyle.fill;
    paint206fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path206, paint206fill);

    Path path207 = Path();
    path207.moveTo(size.width * 0.1357934, size.height * 0.3560330);
    path207.lineTo(size.width * 0.1319899, size.height * 0.3587284);
    path207.arcToPoint(Offset(size.width * 0.1347925, size.height * 0.3513556),
        radius: Radius.elliptical(
            size.width * 0.006672895, size.height * 0.007927699),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path207.arcToPoint(Offset(size.width * 0.1251835, size.height * 0.3315364),
        radius: Radius.elliptical(
            size.width * 0.02135326, size.height * 0.02536864),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path207.lineTo(size.width * 0.1290538, size.height * 0.3289202);
    path207.arcToPoint(Offset(size.width * 0.1386628, size.height * 0.3488188),
        radius: Radius.elliptical(
            size.width * 0.02141999, size.height * 0.02544792),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path207.arcToPoint(Offset(size.width * 0.1357934, size.height * 0.3560330),
        radius: Radius.elliptical(
            size.width * 0.006672895, size.height * 0.007927699),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path207.close();

    Paint paint207fill = Paint()..style = PaintingStyle.fill;
    paint207fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path207, paint207fill);

    Path path208 = Path();
    path208.moveTo(size.width * 0.1251835, size.height * 0.3315364);
    path208.lineTo(size.width * 0.1290538, size.height * 0.3289202);
    path208.lineTo(size.width * 0.1290538, size.height * 0.3289202);
    path208.lineTo(size.width * 0.1252502, size.height * 0.3315364);
    path208.close();

    Paint paint208fill = Paint()..style = PaintingStyle.fill;
    paint208fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path208, paint208fill);

    Path path209 = Path();
    path209.moveTo(size.width * 0.1253170, size.height * 0.3316157);
    path209.lineTo(size.width * 0.1291205, size.height * 0.3289995);
    path209.arcToPoint(Offset(size.width * 0.1311891, size.height * 0.3307436),
        radius: Radius.elliptical(
            size.width * 0.01454691, size.height * 0.01728238),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path209.lineTo(size.width * 0.1273856, size.height * 0.3334390);
    path209.arcToPoint(Offset(size.width * 0.1253170, size.height * 0.3316157),
        radius: Radius.elliptical(
            size.width * 0.02061924, size.height * 0.02449659),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path209.close();

    Paint paint209fill = Paint()..style = PaintingStyle.fill;
    paint209fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path209, paint209fill);

    Path path210 = Path();
    path210.moveTo(size.width * 0.1273856, size.height * 0.3334390);
    path210.lineTo(size.width * 0.1311891, size.height * 0.3307436);
    path210.arcToPoint(Offset(size.width * 0.1334579, size.height * 0.3329634),
        radius: Radius.elliptical(
            size.width * 0.01941812, size.height * 0.02306961),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path210.lineTo(size.width * 0.1295876, size.height * 0.3356588);
    path210.arcToPoint(Offset(size.width * 0.1275857, size.height * 0.3332805),
        radius: Radius.elliptical(
            size.width * 0.01421327, size.height * 0.01688600),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path210.close();

    Paint paint210fill = Paint()..style = PaintingStyle.fill;
    paint210fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path210, paint210fill);

    Path path211 = Path();
    path211.moveTo(size.width * 0.1293874, size.height * 0.3358173);
    path211.lineTo(size.width * 0.1334579, size.height * 0.3329634);
    path211.arcToPoint(Offset(size.width * 0.1371947, size.height * 0.3399397),
        radius: Radius.elliptical(
            size.width * 0.02442279, size.height * 0.02901538),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path211.lineTo(size.width * 0.1333244, size.height * 0.3426352);
    path211.arcToPoint(Offset(size.width * 0.1295876, size.height * 0.3356588),
        radius: Radius.elliptical(
            size.width * 0.02148672, size.height * 0.02552719),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path211.close();

    Paint paint211fill = Paint()..style = PaintingStyle.fill;
    paint211fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path211, paint211fill);

    Path path212 = Path();
    path212.moveTo(size.width * 0.1334579, size.height * 0.3427937);
    path212.lineTo(size.width * 0.1373282, size.height * 0.3400983);
    path212.cubicTo(
        size.width * 0.1373282,
        size.height * 0.3410496,
        size.width * 0.1379287,
        size.height * 0.3420010,
        size.width * 0.1381956,
        size.height * 0.3429523);
    path212.lineTo(size.width * 0.1343921, size.height * 0.3455684);
    path212.arcToPoint(Offset(size.width * 0.1334579, size.height * 0.3427937),
        radius: Radius.elliptical(
            size.width * 0.02435607, size.height * 0.02893610),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path212.close();

    Paint paint212fill = Paint()..style = PaintingStyle.fill;
    paint212fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path212, paint212fill);

    Path path213 = Path();
    path213.moveTo(size.width * 0.1340585, size.height * 0.3455684);
    path213.lineTo(size.width * 0.1378620, size.height * 0.3429523);
    path213.arcToPoint(Offset(size.width * 0.1384626, size.height * 0.3459648),
        radius: Radius.elliptical(
            size.width * 0.01748298, size.height * 0.02077057),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path213.lineTo(size.width * 0.1345923, size.height * 0.3485809);
    path213.cubicTo(
        size.width * 0.1345923,
        size.height * 0.3476296,
        size.width * 0.1342586,
        size.height * 0.3465990,
        size.width * 0.1340585,
        size.height * 0.3455684);
    path213.close();

    Paint paint213fill = Paint()..style = PaintingStyle.fill;
    paint213fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path213, paint213fill);

    Path path214 = Path();
    path214.moveTo(size.width * 0.1345923, size.height * 0.3488188);
    path214.lineTo(size.width * 0.1384626, size.height * 0.3462026);
    path214.arcToPoint(Offset(size.width * 0.1384626, size.height * 0.3489773),
        radius: Radius.elliptical(
            size.width * 0.01334579, size.height * 0.01585540),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path214.lineTo(size.width * 0.1384626, size.height * 0.3489773);
    path214.lineTo(size.width * 0.1345923, size.height * 0.3515935);
    path214.lineTo(size.width * 0.1345923, size.height * 0.3515935);
    path214.arcToPoint(Offset(size.width * 0.1345923, size.height * 0.3488188),
        radius: Radius.elliptical(
            size.width * 0.01441345, size.height * 0.01712383),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path214.close();

    Paint paint214fill = Paint()..style = PaintingStyle.fill;
    paint214fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path214, paint214fill);

    Path path215 = Path();
    path215.moveTo(size.width * 0.1347925, size.height * 0.3513556);
    path215.lineTo(size.width * 0.1386628, size.height * 0.3487395);
    path215.arcToPoint(Offset(size.width * 0.1386628, size.height * 0.3515142),
        radius: Radius.elliptical(
            size.width * 0.02262111, size.height * 0.02687490),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path215.lineTo(size.width * 0.1347925, size.height * 0.3541303);
    path215.arcToPoint(Offset(size.width * 0.1347925, size.height * 0.3513556),
        radius: Radius.elliptical(
            size.width * 0.008341118, size.height * 0.009909624),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path215.close();

    Paint paint215fill = Paint()..style = PaintingStyle.fill;
    paint215fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path215, paint215fill);

    Path path216 = Path();
    path216.moveTo(size.width * 0.1345256, size.height * 0.3541303);
    path216.lineTo(size.width * 0.1383958, size.height * 0.3515142);
    path216.arcToPoint(Offset(size.width * 0.1357934, size.height * 0.3560330),
        radius: Radius.elliptical(
            size.width * 0.005605232, size.height * 0.006659267),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path216.lineTo(size.width * 0.1319899, size.height * 0.3587284);
    path216.arcToPoint(Offset(size.width * 0.1345256, size.height * 0.3541303),
        radius: Radius.elliptical(
            size.width * 0.005671960, size.height * 0.006738544),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path216.close();

    Paint paint216fill = Paint()..style = PaintingStyle.fill;
    paint216fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path216, paint216fill);

    Path path217 = Path();
    path217.moveTo(size.width * 0.1251835, size.height * 0.3315364);
    path217.arcToPoint(Offset(size.width * 0.1347925, size.height * 0.3513556),
        radius: Radius.elliptical(
            size.width * 0.02135326, size.height * 0.02536864),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path217.cubicTo(
        size.width * 0.1347925,
        size.height * 0.3586491,
        size.width * 0.1304551,
        size.height * 0.3615824,
        size.width * 0.1251168,
        size.height * 0.3578564);
    path217.arcToPoint(Offset(size.width * 0.1155078, size.height * 0.3381164),
        radius: Radius.elliptical(
            size.width * 0.02108635, size.height * 0.02505153),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path217.cubicTo(
        size.width * 0.1155745,
        size.height * 0.3309022,
        size.width * 0.1201121,
        size.height * 0.3278896,
        size.width * 0.1251835,
        size.height * 0.3315364);
    path217.close();

    Paint paint217fill = Paint()..style = PaintingStyle.fill;
    paint217fill.color = Color(0xff252529).withOpacity(1.0);
    canvas.drawPath(path217, paint217fill);

    Path path218 = Path();
    path218.moveTo(size.width * 0.01294542, size.height * 0.2478992);
    path218.lineTo(size.width * 0.01881756, size.height * 0.2437768);
    path218.arcToPoint(Offset(size.width * 0.02936074, size.height * 0.2450452),
        radius: Radius.elliptical(
            size.width * 0.01047644, size.height * 0.01244649),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path218.lineTo(size.width * 0.02348859, size.height * 0.2490883);
    path218.arcToPoint(Offset(size.width * 0.01294542, size.height * 0.2478992),
        radius: Radius.elliptical(
            size.width * 0.01047644, size.height * 0.01244649),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path218.close();

    Paint paint218fill = Paint()..style = PaintingStyle.fill;
    paint218fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path218, paint218fill);

    Path path219 = Path();
    path219.moveTo(size.width * 0.01294542, size.height * 0.2478992);
    path219.lineTo(size.width * 0.01881756, size.height * 0.2437768);
    path219.arcToPoint(Offset(size.width * 0.02335513, size.height * 0.2426669),
        radius: Radius.elliptical(
            size.width * 0.007940745, size.height * 0.009433962),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path219.lineTo(size.width * 0.01748298, size.height * 0.2467100);
    path219.arcToPoint(Offset(size.width * 0.01294542, size.height * 0.2478992),
        radius: Radius.elliptical(
            size.width * 0.007473642, size.height * 0.008879023),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path219.close();

    Paint paint219fill = Paint()..style = PaintingStyle.fill;
    paint219fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path219, paint219fill);

    Path path220 = Path();
    path220.moveTo(size.width * 0.01748298, size.height * 0.2467100);
    path220.lineTo(size.width * 0.02335513, size.height * 0.2426669);
    path220.arcToPoint(Offset(size.width * 0.02649139, size.height * 0.2434596),
        radius: Radius.elliptical(
            size.width * 0.01101028, size.height * 0.01308070),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path220.lineTo(size.width * 0.02061924, size.height * 0.2475028);
    path220.arcToPoint(Offset(size.width * 0.01748298, size.height * 0.2467100),
        radius: Radius.elliptical(
            size.width * 0.01101028, size.height * 0.01308070),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path220.close();

    Paint paint220fill = Paint()..style = PaintingStyle.fill;
    paint220fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path220, paint220fill);

    Path path221 = Path();
    path221.moveTo(size.width * 0.02061924, size.height * 0.2475028);
    path221.lineTo(size.width * 0.02669158, size.height * 0.2434596);
    path221.arcToPoint(Offset(size.width * 0.02956092, size.height * 0.2450452),
        radius: Radius.elliptical(
            size.width * 0.01561457, size.height * 0.01855082),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path221.lineTo(size.width * 0.02368878, size.height * 0.2490883);
    path221.arcToPoint(Offset(size.width * 0.02081943, size.height * 0.2475028),
        radius: Radius.elliptical(
            size.width * 0.02175364, size.height * 0.02584430),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path221.close();

    Paint paint221fill = Paint()..style = PaintingStyle.fill;
    paint221fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path221, paint221fill);

    Path path222 = Path();
    path222.moveTo(size.width * 0.04003737, size.height * 0.2865863);
    path222.lineTo(size.width * 0.03416522, size.height * 0.2907087);
    path222.arcToPoint(Offset(size.width * 0.03843587, size.height * 0.2793721),
        radius: Radius.elliptical(
            size.width * 0.01040972, size.height * 0.01236721),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path222.arcToPoint(Offset(size.width * 0.02375551, size.height * 0.2490883),
        radius: Radius.elliptical(
            size.width * 0.03243027, size.height * 0.03852862),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path222.lineTo(size.width * 0.02962765, size.height * 0.2450452);
    path222.arcToPoint(Offset(size.width * 0.04430802, size.height * 0.2753290),
        radius: Radius.elliptical(
            size.width * 0.03243027, size.height * 0.03852862),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path222.arcToPoint(Offset(size.width * 0.04003737, size.height * 0.2865863),
        radius: Radius.elliptical(
            size.width * 0.01020953, size.height * 0.01212938),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path222.close();

    Paint paint222fill = Paint()..style = PaintingStyle.fill;
    paint222fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path222, paint222fill);

    Path path223 = Path();
    path223.moveTo(size.width * 0.02348859, size.height * 0.2490883);
    path223.lineTo(size.width * 0.02936074, size.height * 0.2450452);
    path223.lineTo(size.width * 0.02936074, size.height * 0.2450452);
    path223.lineTo(size.width * 0.02348859, size.height * 0.2490883);
    path223.close();

    Paint paint223fill = Paint()..style = PaintingStyle.fill;
    paint223fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path223, paint223fill);

    Path path224 = Path();
    path224.moveTo(size.width * 0.02362205, size.height * 0.2491676);
    path224.lineTo(size.width * 0.02949419, size.height * 0.2451245);
    path224.arcToPoint(Offset(size.width * 0.03269718, size.height * 0.2478199),
        radius: Radius.elliptical(
            size.width * 0.03142933, size.height * 0.03733946),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path224.lineTo(size.width * 0.02669158, size.height * 0.2519423);
    path224.arcToPoint(Offset(size.width * 0.02348859, size.height * 0.2491676),
        radius: Radius.elliptical(
            size.width * 0.03236354, size.height * 0.03844934),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path224.close();

    Paint paint224fill = Paint()..style = PaintingStyle.fill;
    paint224fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path224, paint224fill);

    Path path225 = Path();
    path225.moveTo(size.width * 0.02669158, size.height * 0.2519423);
    path225.lineTo(size.width * 0.03256373, size.height * 0.2478199);
    path225.arcToPoint(Offset(size.width * 0.03563326, size.height * 0.2514666),
        radius: Radius.elliptical(
            size.width * 0.03336447, size.height * 0.03963850),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path225.lineTo(size.width * 0.02976111, size.height * 0.2555890);
    path225.arcToPoint(Offset(size.width * 0.02669158, size.height * 0.2519423),
        radius: Radius.elliptical(
            size.width * 0.02222074, size.height * 0.02639924),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path225.close();

    Paint paint225fill = Paint()..style = PaintingStyle.fill;
    paint225fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path225, paint225fill);

    Path path226 = Path();
    path226.moveTo(size.width * 0.02989457, size.height * 0.2555890);
    path226.lineTo(size.width * 0.03576672, size.height * 0.2514666);
    path226.arcToPoint(Offset(size.width * 0.04150541, size.height * 0.2621690),
        radius: Radius.elliptical(
            size.width * 0.03443214, size.height * 0.04090693),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path226.lineTo(size.width * 0.03563326, size.height * 0.2662121);
    path226.arcToPoint(Offset(size.width * 0.02989457, size.height * 0.2555890),
        radius: Radius.elliptical(
            size.width * 0.03409849, size.height * 0.04051054),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path226.close();

    Paint paint226fill = Paint()..style = PaintingStyle.fill;
    paint226fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path226, paint226fill);

    Path path227 = Path();
    path227.moveTo(size.width * 0.03563326, size.height * 0.2662121);
    path227.lineTo(size.width * 0.04150541, size.height * 0.2621690);
    path227.cubicTo(
        size.width * 0.04203924,
        size.height * 0.2635960,
        size.width * 0.04250634,
        size.height * 0.2651023,
        size.width * 0.04290671,
        size.height * 0.2665293);
    path227.lineTo(size.width * 0.03703457, size.height * 0.2705724);
    path227.cubicTo(
        size.width * 0.03663419,
        size.height * 0.2691454,
        size.width * 0.03616709,
        size.height * 0.2676391,
        size.width * 0.03563326,
        size.height * 0.2662121);
    path227.close();

    Paint paint227fill = Paint()..style = PaintingStyle.fill;
    paint227fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path227, paint227fill);

    Path path228 = Path();
    path228.moveTo(size.width * 0.03703457, size.height * 0.2705724);
    path228.lineTo(size.width * 0.04290671, size.height * 0.2665293);
    path228.arcToPoint(Offset(size.width * 0.04377419, size.height * 0.2711273),
        radius: Radius.elliptical(
            size.width * 0.02669158, size.height * 0.03171080),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path228.lineTo(size.width * 0.03790204, size.height * 0.2751704);
    path228.arcToPoint(Offset(size.width * 0.03703457, size.height * 0.2705724),
        radius: Radius.elliptical(
            size.width * 0.02902709, size.height * 0.03448549),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path228.close();

    Paint paint228fill = Paint()..style = PaintingStyle.fill;
    paint228fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path228, paint228fill);

    Path path229 = Path();
    path229.moveTo(size.width * 0.03790204, size.height * 0.2751704);
    path229.lineTo(size.width * 0.04377419, size.height * 0.2711273);
    path229.arcToPoint(Offset(size.width * 0.04377419, size.height * 0.2753290),
        radius: Radius.elliptical(
            size.width * 0.02155345, size.height * 0.02560647),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path229.lineTo(size.width * 0.04377419, size.height * 0.2753290);
    path229.lineTo(size.width * 0.03790204, size.height * 0.2793721);
    path229.lineTo(size.width * 0.03790204, size.height * 0.2793721);
    path229.arcToPoint(Offset(size.width * 0.03790204, size.height * 0.2751704),
        radius: Radius.elliptical(
            size.width * 0.02155345, size.height * 0.02560647),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path229.close();

    Paint paint229fill = Paint()..style = PaintingStyle.fill;
    paint229fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path229, paint229fill);

    Path path230 = Path();
    path230.moveTo(size.width * 0.03816896, size.height * 0.2794514);
    path230.lineTo(size.width * 0.04404111, size.height * 0.2754083);
    path230.arcToPoint(Offset(size.width * 0.04404111, size.height * 0.2796100),
        radius: Radius.elliptical(
            size.width * 0.01928467, size.height * 0.02291105),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path230.lineTo(size.width * 0.03816896, size.height * 0.2836531);
    path230.arcToPoint(Offset(size.width * 0.03816896, size.height * 0.2794514),
        radius: Radius.elliptical(
            size.width * 0.01928467, size.height * 0.02291105),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path230.close();

    Paint paint230fill = Paint()..style = PaintingStyle.fill;
    paint230fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path230, paint230fill);

    Path path231 = Path();
    path231.moveTo(size.width * 0.03783531, size.height * 0.2836531);
    path231.lineTo(size.width * 0.04370746, size.height * 0.2796100);
    path231.arcToPoint(Offset(size.width * 0.03977045, size.height * 0.2865863),
        radius: Radius.elliptical(
            size.width * 0.008808221, size.height * 0.01046456),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path231.lineTo(size.width * 0.03389831, size.height * 0.2907087);
    path231.arcToPoint(Offset(size.width * 0.03783531, size.height * 0.2836531),
        radius: Radius.elliptical(
            size.width * 0.009141866, size.height * 0.01086095),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path231.close();

    Paint paint231fill = Paint()..style = PaintingStyle.fill;
    paint231fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path231, paint231fill);

    Path path232 = Path();
    path232.moveTo(size.width * 0.02348859, size.height * 0.2490883);
    path232.arcToPoint(Offset(size.width * 0.03816896, size.height * 0.2793721),
        radius: Radius.elliptical(
            size.width * 0.03243027, size.height * 0.03852862),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path232.cubicTo(
        size.width * 0.03816896,
        size.height * 0.2905502,
        size.width * 0.03149606,
        size.height * 0.2952275,
        size.width * 0.02335513,
        size.height * 0.2894403);
    path232.arcToPoint(
        Offset(size.width * 0.008608034, size.height * 0.2591565),
        radius: Radius.elliptical(
            size.width * 0.03263046, size.height * 0.03876645),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path232.cubicTo(
        size.width * 0.008674763,
        size.height * 0.2479784,
        size.width * 0.01528093,
        size.height * 0.2434596,
        size.width * 0.02348859,
        size.height * 0.2490883);
    path232.close();

    Paint paint232fill = Paint()..style = PaintingStyle.fill;
    paint232fill.color = Color(0xff252529).withOpacity(1.0);
    canvas.drawPath(path232, paint232fill);

    Path path233 = Path();
    path233.moveTo(size.width * 0.01294542, size.height * 0.2579673);
    path233.lineTo(size.width * 0.01674897, size.height * 0.2553512);
    path233.arcToPoint(Offset(size.width * 0.02342186, size.height * 0.2561440),
        radius: Radius.elliptical(
            size.width * 0.006672895, size.height * 0.007927699),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path233.lineTo(size.width * 0.02001868, size.height * 0.2588394);
    path233.arcToPoint(Offset(size.width * 0.01294542, size.height * 0.2579673),
        radius: Radius.elliptical(
            size.width * 0.006672895, size.height * 0.007927699),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path233.close();

    Paint paint233fill = Paint()..style = PaintingStyle.fill;
    paint233fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path233, paint233fill);

    Path path234 = Path();
    path234.moveTo(size.width * 0.01294542, size.height * 0.2579673);
    path234.lineTo(size.width * 0.01674897, size.height * 0.2553512);
    path234.arcToPoint(Offset(size.width * 0.02001868, size.height * 0.2546377),
        radius: Radius.elliptical(
            size.width * 0.005004671, size.height * 0.005945775),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path234.lineTo(size.width * 0.01614841, size.height * 0.2572538);
    path234.arcToPoint(Offset(size.width * 0.01321233, size.height * 0.2579673),
        radius: Radius.elliptical(
            size.width * 0.005271587, size.height * 0.006262883),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path234.close();

    Paint paint234fill = Paint()..style = PaintingStyle.fill;
    paint234fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path234, paint234fill);

    Path path235 = Path();
    path235.moveTo(size.width * 0.01588149, size.height * 0.2572538);
    path235.lineTo(size.width * 0.02001868, size.height * 0.2546377);
    path235.arcToPoint(Offset(size.width * 0.02202055, size.height * 0.2551134),
        radius: Radius.elliptical(
            size.width * 0.005938876, size.height * 0.007055652),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path235.lineTo(size.width * 0.01821700, size.height * 0.2578088);
    path235.arcToPoint(Offset(size.width * 0.01614841, size.height * 0.2572538),
        radius: Radius.elliptical(
            size.width * 0.008341118, size.height * 0.009909624),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path235.close();

    Paint paint235fill = Paint()..style = PaintingStyle.fill;
    paint235fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path235, paint235fill);

    Path path236 = Path();
    path236.moveTo(size.width * 0.01795009, size.height * 0.2578088);
    path236.lineTo(size.width * 0.02175364, size.height * 0.2551134);
    path236.arcToPoint(Offset(size.width * 0.02362205, size.height * 0.2561440),
        radius: Radius.elliptical(
            size.width * 0.01521420, size.height * 0.01807515),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path236.lineTo(size.width * 0.02001868, size.height * 0.2588394);
    path236.arcToPoint(Offset(size.width * 0.01815027, size.height * 0.2578088),
        radius: Radius.elliptical(
            size.width * 0.009208595, size.height * 0.01094023),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path236.close();

    Paint paint236fill = Paint()..style = PaintingStyle.fill;
    paint236fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path236, paint236fill);

    Path path237 = Path();
    path237.moveTo(size.width * 0.03042840, size.height * 0.2832567);
    path237.lineTo(size.width * 0.02669158, size.height * 0.2859521);
    path237.arcToPoint(Offset(size.width * 0.02956092, size.height * 0.2785794),
        radius: Radius.elliptical(
            size.width * 0.006672895, size.height * 0.007927699),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path237.arcToPoint(Offset(size.width * 0.02001868, size.height * 0.2588394),
        radius: Radius.elliptical(
            size.width * 0.02128653, size.height * 0.02528936),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path237.lineTo(size.width * 0.02382223, size.height * 0.2561440);
    path237.arcToPoint(Offset(size.width * 0.03336447, size.height * 0.2759632),
        radius: Radius.elliptical(
            size.width * 0.02121981, size.height * 0.02521008),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path237.arcToPoint(Offset(size.width * 0.03042840, size.height * 0.2832567),
        radius: Radius.elliptical(
            size.width * 0.006672895, size.height * 0.007927699),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path237.close();

    Paint paint237fill = Paint()..style = PaintingStyle.fill;
    paint237fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path237, paint237fill);

    Path path238 = Path();
    path238.moveTo(size.width * 0.02001868, size.height * 0.2588394);
    path238.lineTo(size.width * 0.02382223, size.height * 0.2561440);
    path238.lineTo(size.width * 0.02382223, size.height * 0.2561440);
    path238.lineTo(size.width * 0.02001868, size.height * 0.2588394);
    path238.close();

    Paint paint238fill = Paint()..style = PaintingStyle.fill;
    paint238fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path238, paint238fill);

    Path path239 = Path();
    path239.moveTo(size.width * 0.02001868, size.height * 0.2588394);
    path239.lineTo(size.width * 0.02382223, size.height * 0.2562232);
    path239.arcToPoint(Offset(size.width * 0.02595756, size.height * 0.2579673),
        radius: Radius.elliptical(
            size.width * 0.01514747, size.height * 0.01799588),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path239.lineTo(size.width * 0.02208728, size.height * 0.2606628);
    path239.arcToPoint(Offset(size.width * 0.02001868, size.height * 0.2588394),
        radius: Radius.elliptical(
            size.width * 0.01508074, size.height * 0.01791660),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path239.close();

    Paint paint239fill = Paint()..style = PaintingStyle.fill;
    paint239fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path239, paint239fill);

    Path path240 = Path();
    path240.moveTo(size.width * 0.02195382, size.height * 0.2606628);
    path240.lineTo(size.width * 0.02582410, size.height * 0.2579673);
    path240.quadraticBezierTo(size.width * 0.02682504, size.height * 0.2590772,
        size.width * 0.02782597, size.height * 0.2603456);
    path240.lineTo(size.width * 0.02402242, size.height * 0.2630411);
    path240.arcToPoint(Offset(size.width * 0.02195382, size.height * 0.2606628),
        radius: Radius.elliptical(
            size.width * 0.01941812, size.height * 0.02306961),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path240.close();

    Paint paint240fill = Paint()..style = PaintingStyle.fill;
    paint240fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path240, paint240fill);

    Path path241 = Path();
    path241.moveTo(size.width * 0.02402242, size.height * 0.2630411);
    path241.lineTo(size.width * 0.02782597, size.height * 0.2603456);
    path241.arcToPoint(Offset(size.width * 0.03156279, size.height * 0.2673220),
        radius: Radius.elliptical(
            size.width * 0.02248766, size.height * 0.02671635),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path241.lineTo(size.width * 0.02775924, size.height * 0.2700174);
    path241.arcToPoint(Offset(size.width * 0.02402242, size.height * 0.2630411),
        radius: Radius.elliptical(
            size.width * 0.02515681, size.height * 0.02988743),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path241.close();

    Paint paint241fill = Paint()..style = PaintingStyle.fill;
    paint241fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path241, paint241fill);

    Path path242 = Path();
    path242.moveTo(size.width * 0.02775924, size.height * 0.2700174);
    path242.lineTo(size.width * 0.03156279, size.height * 0.2673220);
    path242.arcToPoint(Offset(size.width * 0.03243027, size.height * 0.2701760),
        radius: Radius.elliptical(
            size.width * 0.01734953, size.height * 0.02061202),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path242.lineTo(size.width * 0.02862672, size.height * 0.2727921);
    path242.arcToPoint(Offset(size.width * 0.02775924, size.height * 0.2700174),
        radius: Radius.elliptical(
            size.width * 0.02415588, size.height * 0.02869827),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path242.close();

    Paint paint242fill = Paint()..style = PaintingStyle.fill;
    paint242fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path242, paint242fill);

    Path path243 = Path();
    path243.moveTo(size.width * 0.02862672, size.height * 0.2727921);
    path243.lineTo(size.width * 0.03243027, size.height * 0.2701760);
    path243.arcToPoint(Offset(size.width * 0.03303083, size.height * 0.2731885),
        radius: Radius.elliptical(
            size.width * 0.01748298, size.height * 0.02077057),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path243.lineTo(size.width * 0.02922728, size.height * 0.2758047);
    path243.arcToPoint(Offset(size.width * 0.02862672, size.height * 0.2727921),
        radius: Radius.elliptical(
            size.width * 0.02001868, size.height * 0.02378310),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path243.close();

    Paint paint243fill = Paint()..style = PaintingStyle.fill;
    paint243fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path243, paint243fill);

    Path path244 = Path();
    path244.moveTo(size.width * 0.02922728, size.height * 0.2758047);
    path244.lineTo(size.width * 0.03336447, size.height * 0.2731885);
    path244.arcToPoint(Offset(size.width * 0.03336447, size.height * 0.2759632),
        radius: Radius.elliptical(
            size.width * 0.01381289, size.height * 0.01641034),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path244.lineTo(size.width * 0.03336447, size.height * 0.2759632);
    path244.lineTo(size.width * 0.02956092, size.height * 0.2785794);
    path244.lineTo(size.width * 0.02956092, size.height * 0.2785794);
    path244.arcToPoint(Offset(size.width * 0.02956092, size.height * 0.2758047),
        radius: Radius.elliptical(
            size.width * 0.01441345, size.height * 0.01712383),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path244.close();

    Paint paint244fill = Paint()..style = PaintingStyle.fill;
    paint244fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path244, paint244fill);

    Path path245 = Path();
    path245.moveTo(size.width * 0.02942747, size.height * 0.2785794);
    path245.lineTo(size.width * 0.03336447, size.height * 0.2759632);
    path245.arcToPoint(Offset(size.width * 0.03336447, size.height * 0.2787379),
        radius: Radius.elliptical(
            size.width * 0.008608034, size.height * 0.01022673),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path245.lineTo(size.width * 0.02956092, size.height * 0.2813541);
    path245.arcToPoint(Offset(size.width * 0.02956092, size.height * 0.2785794),
        radius: Radius.elliptical(
            size.width * 0.02061924, size.height * 0.02449659),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path245.close();

    Paint paint245fill = Paint()..style = PaintingStyle.fill;
    paint245fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path245, paint245fill);

    Path path246 = Path();
    path246.moveTo(size.width * 0.02916055, size.height * 0.2813541);
    path246.lineTo(size.width * 0.03296410, size.height * 0.2787379);
    path246.arcToPoint(Offset(size.width * 0.03042840, size.height * 0.2832567),
        radius: Radius.elliptical(
            size.width * 0.005738689, size.height * 0.006817821),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path246.lineTo(size.width * 0.02669158, size.height * 0.2859521);
    path246.arcToPoint(Offset(size.width * 0.02929401, size.height * 0.2813541),
        radius: Radius.elliptical(
            size.width * 0.005738689, size.height * 0.006817821),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path246.close();

    Paint paint246fill = Paint()..style = PaintingStyle.fill;
    paint246fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path246, paint246fill);

    Path path247 = Path();
    path247.moveTo(size.width * 0.02001868, size.height * 0.2588394);
    path247.arcToPoint(Offset(size.width * 0.02962765, size.height * 0.2785794),
        radius: Radius.elliptical(
            size.width * 0.02128653, size.height * 0.02528936),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path247.cubicTo(
        size.width * 0.02962765,
        size.height * 0.2858728,
        size.width * 0.02522354,
        size.height * 0.2888061,
        size.width * 0.01995196,
        size.height * 0.2851593);
    path247.arcToPoint(Offset(size.width * 0.01034299, size.height * 0.2653401),
        radius: Radius.elliptical(
            size.width * 0.02115308, size.height * 0.02513081),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path247.cubicTo(
        size.width * 0.01014280,
        size.height * 0.2581259,
        size.width * 0.01448018,
        size.height * 0.2551134,
        size.width * 0.02001868,
        size.height * 0.2588394);
    path247.close();

    Paint paint247fill = Paint()..style = PaintingStyle.fill;
    paint247fill.color = Color(0xff252529).withOpacity(1.0);
    canvas.drawPath(path247, paint247fill);

    Path path248 = Path();
    path248.moveTo(size.width * 0.7186708, size.height * 0.4018551);
    path248.lineTo(size.width * 0.7186708, size.height * 0.5136356);
    path248.lineTo(size.width * 0.6371947, size.height * 0.5695259);
    path248.lineTo(size.width * 0.6371947, size.height * 0.4577454);
    path248.lineTo(size.width * 0.7186708, size.height * 0.4018551);
    path248.close();

    Paint paint248fill = Paint()..style = PaintingStyle.fill;
    paint248fill.color = Color(0xffa47034).withOpacity(1.0);
    canvas.drawPath(path248, paint248fill);

    Path path249 = Path();
    path249.moveTo(size.width * 0.8001468, size.height * 0.4577454);
    path249.lineTo(size.width * 0.7186708, size.height * 0.4018551);
    path249.lineTo(size.width * 0.7186708, size.height * 0.5136356);
    path249.lineTo(size.width * 0.8001468, size.height * 0.5695259);
    path249.lineTo(size.width * 0.8001468, size.height * 0.4577454);
    path249.close();

    Paint paint249fill = Paint()..style = PaintingStyle.fill;
    paint249fill.color = Color(0xffbb884f).withOpacity(1.0);
    canvas.drawPath(path249, paint249fill);

    Path path250 = Path();
    path250.moveTo(size.width * 0.8001468, size.height * 0.5695259);
    path250.lineTo(size.width * 0.8001468, size.height * 0.4577454);
    path250.lineTo(size.width * 0.7186708, size.height * 0.5136356);
    path250.lineTo(size.width * 0.7186708, size.height * 0.6254162);
    path250.lineTo(size.width * 0.8001468, size.height * 0.5695259);
    path250.close();

    Paint paint250fill = Paint()..style = PaintingStyle.fill;
    paint250fill.color = Color(0xffe0b477).withOpacity(1.0);
    canvas.drawPath(path250, paint250fill);

    Path path251 = Path();
    path251.moveTo(size.width * 0.7186708, size.height * 0.5136356);
    path251.lineTo(size.width * 0.6371947, size.height * 0.4577454);
    path251.lineTo(size.width * 0.6371947, size.height * 0.5695259);
    path251.lineTo(size.width * 0.7186708, size.height * 0.6254162);
    path251.lineTo(size.width * 0.7186708, size.height * 0.5136356);
    path251.close();

    Paint paint251fill = Paint()..style = PaintingStyle.fill;
    paint251fill.color = Color(0xffbb884f).withOpacity(1.0);
    canvas.drawPath(path251, paint251fill);

    Path path252 = Path();
    path252.moveTo(size.width * 0.7186708, size.height * 0.4018551);
    path252.lineTo(size.width * 0.6956493, size.height * 0.3531790);
    path252.lineTo(size.width * 0.6121714, size.height * 0.4105756);
    path252.lineTo(size.width * 0.6371947, size.height * 0.4577454);
    path252.lineTo(size.width * 0.7186708, size.height * 0.4018551);
    path252.close();

    Paint paint252fill = Paint()..style = PaintingStyle.fill;
    paint252fill.color = Color(0xffefcd90).withOpacity(1.0);
    canvas.drawPath(path252, paint252fill);

    Path path253 = Path();
    path253.moveTo(size.width * 0.8001468, size.height * 0.4577454);
    path253.lineTo(size.width * 0.8239690, size.height * 0.4973046);
    path253.lineTo(size.width * 0.7386227, size.height * 0.5558110);
    path253.lineTo(size.width * 0.7186708, size.height * 0.5136356);
    path253.lineTo(size.width * 0.8001468, size.height * 0.4577454);
    path253.close();

    Paint paint253fill = Paint()..style = PaintingStyle.fill;
    paint253fill.color = Color(0xffefcd90).withOpacity(1.0);
    canvas.drawPath(path253, paint253fill);

    Path path254 = Path();
    path254.moveTo(size.width * 0.2271453, size.height * 0.3099730);
    path254.lineTo(size.width * 0.2271453, size.height * 0.1981132);
    path254.lineTo(size.width * 0.3086881, size.height * 0.1421436);
    path254.lineTo(size.width * 0.3086881, size.height * 0.2540828);
    path254.lineTo(size.width * 0.2271453, size.height * 0.3099730);
    path254.close();

    Paint paint254fill = Paint()..style = PaintingStyle.fill;
    paint254fill.color = Color(0xffe0b477).withOpacity(1.0);
    canvas.drawPath(path254, paint254fill);

    Path path255 = Path();
    path255.moveTo(size.width * 0.1456026, size.height * 0.1421436);
    path255.lineTo(size.width * 0.1456026, size.height * 0.2540828);
    path255.lineTo(size.width * 0.2271453, size.height * 0.3099730);
    path255.lineTo(size.width * 0.2271453, size.height * 0.1981132);
    path255.lineTo(size.width * 0.1456026, size.height * 0.1421436);
    path255.close();

    Paint paint255fill = Paint()..style = PaintingStyle.fill;
    paint255fill.color = Color(0xffbb884f).withOpacity(1.0);
    canvas.drawPath(path255, paint255fill);

    Path path256 = Path();
    path256.moveTo(size.width * 0.1764313, size.height * 0.2751704);
    path256.lineTo(size.width * 0.1764313, size.height * 0.1633106);
    path256.lineTo(size.width * 0.1865074, size.height * 0.1702870);
    path256.lineTo(size.width * 0.1866409, size.height * 0.2821468);
    path256.lineTo(size.width * 0.1764313, size.height * 0.2751704);
    path256.close();

    Paint paint256fill = Paint()..style = PaintingStyle.fill;
    paint256fill.color = Color(0xffabacc2).withOpacity(1.0);
    canvas.drawPath(path256, paint256fill);

    Path path257 = Path();
    path257.moveTo(size.width * 0.1456026, size.height * 0.1421436);
    path257.lineTo(size.width * 0.2271453, size.height * 0.08625337);
    path257.lineTo(size.width * 0.3086881, size.height * 0.1421436);
    path257.lineTo(size.width * 0.2271453, size.height * 0.1981132);
    path257.lineTo(size.width * 0.1456026, size.height * 0.1421436);
    path257.close();

    Paint paint257fill = Paint()..style = PaintingStyle.fill;
    paint257fill.color = Color(0xffefcd90).withOpacity(1.0);
    canvas.drawPath(path257, paint257fill);

    Path path258 = Path();
    path258.moveTo(size.width * 0.1764313, size.height * 0.1633106);
    path258.lineTo(size.width * 0.2579074, size.height * 0.1073410);
    path258.lineTo(size.width * 0.2680502, size.height * 0.1143174);
    path258.lineTo(size.width * 0.1865074, size.height * 0.1702870);
    path258.lineTo(size.width * 0.1764313, size.height * 0.1633106);
    path258.close();

    Paint paint258fill = Paint()..style = PaintingStyle.fill;
    paint258fill.color = Color(0xffeaeaea).withOpacity(1.0);
    canvas.drawPath(path258, paint258fill);

    Path path259 = Path();
    path259.moveTo(size.width * 0.2655145, size.height * 0.1717932);
    path259.lineTo(size.width * 0.1839050, size.height * 0.1159030);
    path259.lineTo(size.width * 0.1940478, size.height * 0.1089266);
    path259.lineTo(size.width * 0.2755906, size.height * 0.1648961);
    path259.lineTo(size.width * 0.2655145, size.height * 0.1717932);
    path259.close();

    Paint paint259fill = Paint()..style = PaintingStyle.fill;
    paint259fill.color = Color(0xffeaeaea).withOpacity(1.0);
    canvas.drawPath(path259, paint259fill);

    Path path260 = Path();
    path260.moveTo(size.width * 0.3680769, size.height * 0.2583637);
    path260.lineTo(size.width * 0.3678767, size.height * 0.3573807);
    path260.lineTo(size.width * 0.2756573, size.height * 0.2941176);
    path260.lineTo(size.width * 0.2758575, size.height * 0.1951007);
    path260.lineTo(size.width * 0.3680769, size.height * 0.2583637);
    path260.close();

    Paint paint260fill = Paint()..style = PaintingStyle.fill;
    paint260fill.color = Color(0xff252529).withOpacity(1.0);
    canvas.drawPath(path260, paint260fill);

    Path path261 = Path();
    path261.moveTo(size.width * 0.5886160, size.height * 0.3492944);
    path261.lineTo(size.width * 0.5880155, size.height * 0.1279531);
    path261.lineTo(size.width * 0.4641666, size.height * 0.04407801);
    path261.lineTo(size.width * 0.4641666, size.height * 0.2636753);
    path261.lineTo(size.width * 0.5886160, size.height * 0.3492944);
    path261.close();

    Paint paint261fill = Paint()..style = PaintingStyle.fill;
    paint261fill.color = Color(0xffabacc2).withOpacity(1.0);
    canvas.drawPath(path261, paint261fill);

    Path path262 = Path();
    path262.moveTo(size.width * 0.5571200, size.height * 0.2030284);
    path262.lineTo(size.width * 0.5467770, size.height * 0.2101633);
    path262.arcToPoint(Offset(size.width * 0.5530495, size.height * 0.1938322),
        radius: Radius.elliptical(
            size.width * 0.01514747, size.height * 0.01799588),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path262.arcToPoint(Offset(size.width * 0.5316295, size.height * 0.1498335),
        radius: Radius.elliptical(
            size.width * 0.04711064, size.height * 0.05596956),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path262.lineTo(size.width * 0.5419725, size.height * 0.1426986);
    path262.arcToPoint(Offset(size.width * 0.5633925, size.height * 0.1866973),
        radius: Radius.elliptical(
            size.width * 0.04711064, size.height * 0.05596956),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path262.arcToPoint(Offset(size.width * 0.5571200, size.height * 0.2030284),
        radius: Radius.elliptical(
            size.width * 0.01494728, size.height * 0.01775805),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path262.close();

    Paint paint262fill = Paint()..style = PaintingStyle.fill;
    paint262fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path262, paint262fill);

    Path path263 = Path();
    path263.moveTo(size.width * 0.5316295, size.height * 0.1498335);
    path263.lineTo(size.width * 0.5419725, size.height * 0.1426986);
    path263.lineTo(size.width * 0.5419725, size.height * 0.1426986);
    path263.lineTo(size.width * 0.5315628, size.height * 0.1499128);
    path263.lineTo(size.width * 0.5315628, size.height * 0.1499128);
    path263.close();

    Paint paint263fill = Paint()..style = PaintingStyle.fill;
    paint263fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path263, paint263fill);

    Path path264 = Path();
    path264.moveTo(size.width * 0.5318297, size.height * 0.1499921);
    path264.lineTo(size.width * 0.5422394, size.height * 0.1426986);
    path264.arcToPoint(Offset(size.width * 0.5468437, size.height * 0.1466624),
        radius: Radius.elliptical(
            size.width * 0.04223942, size.height * 0.05018234),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path264.lineTo(size.width * 0.5365007, size.height * 0.1537974);
    path264.arcToPoint(Offset(size.width * 0.5318297, size.height * 0.1499128),
        radius: Radius.elliptical(
            size.width * 0.03102896, size.height * 0.03686380),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path264.close();

    Paint paint264fill = Paint()..style = PaintingStyle.fill;
    paint264fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path264, paint264fill);

    Path path265 = Path();
    path265.moveTo(size.width * 0.5365007, size.height * 0.1538766);
    path265.lineTo(size.width * 0.5468437, size.height * 0.1467417);
    path265.arcToPoint(Offset(size.width * 0.5513813, size.height * 0.1520533),
        radius: Radius.elliptical(
            size.width * 0.04097157, size.height * 0.04867607),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path265.lineTo(size.width * 0.5410383, size.height * 0.1591882);
    path265.arcToPoint(Offset(size.width * 0.5365007, size.height * 0.1538766),
        radius: Radius.elliptical(
            size.width * 0.04771120, size.height * 0.05668305),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path265.close();

    Paint paint265fill = Paint()..style = PaintingStyle.fill;
    paint265fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path265, paint265fill);

    Path path266 = Path();
    path266.moveTo(size.width * 0.5410383, size.height * 0.1591882);
    path266.lineTo(size.width * 0.5513813, size.height * 0.1520533);
    path266.arcToPoint(Offset(size.width * 0.5596557, size.height * 0.1675123),
        radius: Radius.elliptical(
            size.width * 0.05191512, size.height * 0.06167750),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path266.lineTo(size.width * 0.5493127, size.height * 0.1744094);
    path266.arcToPoint(Offset(size.width * 0.5410383, size.height * 0.1585540),
        radius: Radius.elliptical(
            size.width * 0.05111437, size.height * 0.06072618),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path266.close();

    Paint paint266fill = Paint()..style = PaintingStyle.fill;
    paint266fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path266, paint266fill);

    Path path267 = Path();
    path267.moveTo(size.width * 0.5493127, size.height * 0.1744094);
    path267.lineTo(size.width * 0.5596557, size.height * 0.1671952);
    path267.arcToPoint(Offset(size.width * 0.5616575, size.height * 0.1735373),
        radius: Radius.elliptical(
            size.width * 0.04337382, size.height * 0.05153005),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path267.lineTo(size.width * 0.5513146, size.height * 0.1806723);
    path267.arcToPoint(Offset(size.width * 0.5493127, size.height * 0.1744094),
        radius: Radius.elliptical(
            size.width * 0.04250634, size.height * 0.05049945),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path267.close();

    Paint paint267fill = Paint()..style = PaintingStyle.fill;
    paint267fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path267, paint267fill);

    Path path268 = Path();
    path268.moveTo(size.width * 0.5513146, size.height * 0.1809894);
    path268.lineTo(size.width * 0.5616575, size.height * 0.1738544);
    path268.arcToPoint(Offset(size.width * 0.5629921, size.height * 0.1805137),
        radius: Radius.elliptical(
            size.width * 0.04263980, size.height * 0.05065800),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path268.lineTo(size.width * 0.5526491, size.height * 0.1876486);
    path268.arcToPoint(Offset(size.width * 0.5513146, size.height * 0.1809894),
        radius: Radius.elliptical(
            size.width * 0.04263980, size.height * 0.05065800),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path268.close();

    Paint paint268fill = Paint()..style = PaintingStyle.fill;
    paint268fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path268, paint268fill);

    Path path269 = Path();
    path269.moveTo(size.width * 0.5526491, size.height * 0.1876486);
    path269.lineTo(size.width * 0.5629921, size.height * 0.1805137);
    path269.arcToPoint(Offset(size.width * 0.5633925, size.height * 0.1866973),
        radius: Radius.elliptical(
            size.width * 0.03416522, size.height * 0.04058982),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path269.lineTo(size.width * 0.5633925, size.height * 0.1866973);
    path269.lineTo(size.width * 0.5530495, size.height * 0.1938322);
    path269.lineTo(size.width * 0.5530495, size.height * 0.1938322);
    path269.arcToPoint(Offset(size.width * 0.5526491, size.height * 0.1876486),
        radius: Radius.elliptical(
            size.width * 0.03549980, size.height * 0.04217536),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path269.close();

    Paint paint269fill = Paint()..style = PaintingStyle.fill;
    paint269fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path269, paint269fill);

    Path path270 = Path();
    path270.moveTo(size.width * 0.5530495, size.height * 0.1939115);
    path270.lineTo(size.width * 0.5633925, size.height * 0.1867766);
    path270.arcToPoint(Offset(size.width * 0.5628587, size.height * 0.1928809),
        radius: Radius.elliptical(
            size.width * 0.02428934, size.height * 0.02885683),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path270.lineTo(size.width * 0.5524490, size.height * 0.2000159);
    path270.arcToPoint(Offset(size.width * 0.5530495, size.height * 0.1939115),
        radius: Radius.elliptical(
            size.width * 0.02048579, size.height * 0.02433804),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path270.close();

    Paint paint270fill = Paint()..style = PaintingStyle.fill;
    paint270fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path270, paint270fill);

    Path path271 = Path();
    path271.moveTo(size.width * 0.5524490, size.height * 0.2000159);
    path271.lineTo(size.width * 0.5628587, size.height * 0.1928809);
    path271.arcToPoint(Offset(size.width * 0.5571200, size.height * 0.2030284),
        radius: Radius.elliptical(
            size.width * 0.01267850, size.height * 0.01506263),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path271.lineTo(size.width * 0.5467770, size.height * 0.2101633);
    path271.arcToPoint(Offset(size.width * 0.5524490, size.height * 0.2000159),
        radius: Radius.elliptical(
            size.width * 0.01261177, size.height * 0.01498335),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path271.close();

    Paint paint271fill = Paint()..style = PaintingStyle.fill;
    paint271fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path271, paint271fill);

    Path path272 = Path();
    path272.moveTo(size.width * 0.5316295, size.height * 0.1498335);
    path272.arcToPoint(Offset(size.width * 0.5530495, size.height * 0.1938322),
        radius: Radius.elliptical(
            size.width * 0.04711064, size.height * 0.05596956),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path272.cubicTo(
        size.width * 0.5530495,
        size.height * 0.2096876,
        size.width * 0.5433738,
        size.height * 0.2165055,
        size.width * 0.5314961,
        size.height * 0.2083399);
    path272.arcToPoint(Offset(size.width * 0.5101428, size.height * 0.1644205),
        radius: Radius.elliptical(
            size.width * 0.04671026, size.height * 0.05549390),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path272.cubicTo(
        size.width * 0.5101428,
        size.height * 0.1482480,
        size.width * 0.5198185,
        size.height * 0.1416680,
        size.width * 0.5316295,
        size.height * 0.1498335);
    path272.close();

    Paint paint272fill = Paint()..style = PaintingStyle.fill;
    paint272fill.color = Color(0xff252529).withOpacity(1.0);
    canvas.drawPath(path272, paint272fill);

    Path path273 = Path();
    path273.moveTo(size.width * 0.4614307, size.height * 0.2575710);
    path273.lineTo(size.width * 0.4578273, size.height * 0.2551134);
    path273.arcToPoint(Offset(size.width * 0.4568931, size.height * 0.2525765),
        radius: Radius.elliptical(
            size.width * 0.002335513, size.height * 0.002774695),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path273.lineTo(size.width * 0.4604965, size.height * 0.2551134);
    path273.arcToPoint(Offset(size.width * 0.4614307, size.height * 0.2575710),
        radius: Radius.elliptical(
            size.width * 0.002202055, size.height * 0.002616141),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path273.close();

    Paint paint273fill = Paint()..style = PaintingStyle.fill;
    paint273fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path273, paint273fill);

    Path path274 = Path();
    path274.moveTo(size.width * 0.4614307, size.height * 0.2575710);
    path274.lineTo(size.width * 0.4578273, size.height * 0.2551134);
    path274.arcToPoint(Offset(size.width * 0.4568931, size.height * 0.2525765),
        radius: Radius.elliptical(
            size.width * 0.002335513, size.height * 0.002774695),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path274.lineTo(size.width * 0.4604965, size.height * 0.2551134);
    path274.arcToPoint(Offset(size.width * 0.4614307, size.height * 0.2575710),
        radius: Radius.elliptical(
            size.width * 0.002202055, size.height * 0.002616141),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path274.close();

    Paint paint274fill = Paint()..style = PaintingStyle.fill;
    paint274fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path274, paint274fill);

    Path path275 = Path();
    path275.moveTo(size.width * 0.4604965, size.height * 0.2551134);
    path275.lineTo(size.width * 0.4568931, size.height * 0.2525765);
    path275.lineTo(size.width * 0.4567596, size.height * 0.2026320);
    path275.lineTo(size.width * 0.4603630, size.height * 0.2050896);
    path275.lineTo(size.width * 0.4604965, size.height * 0.2551134);
    path275.close();

    Paint paint275fill = Paint()..style = PaintingStyle.fill;
    paint275fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path275, paint275fill);

    Path path276 = Path();
    path276.moveTo(size.width * 0.4623649, size.height * 0.1956556);
    path276.lineTo(size.width * 0.4659682, size.height * 0.1981132);
    path276.arcToPoint(Offset(size.width * 0.4636327, size.height * 0.1981132),
        radius: Radius.elliptical(
            size.width * 0.002335513, size.height * 0.002774695),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path276.lineTo(size.width * 0.4600294, size.height * 0.1955763);
    path276.arcToPoint(Offset(size.width * 0.4623649, size.height * 0.1956556),
        radius: Radius.elliptical(
            size.width * 0.002468971, size.height * 0.002933249),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path276.close();

    Paint paint276fill = Paint()..style = PaintingStyle.fill;
    paint276fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path276, paint276fill);

    Path path277 = Path();
    path277.moveTo(size.width * 0.4636327, size.height * 0.1981925);
    path277.lineTo(size.width * 0.4600294, size.height * 0.1956556);
    path277.lineTo(size.width * 0.4606967, size.height * 0.1956556);
    path277.lineTo(size.width * 0.4643000, size.height * 0.1981132);
    path277.lineTo(size.width * 0.4636327, size.height * 0.1985096);
    path277.close();

    Paint paint277fill = Paint()..style = PaintingStyle.fill;
    paint277fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path277, paint277fill);

    Path path278 = Path();
    path278.moveTo(size.width * 0.4643000, size.height * 0.1981925);
    path278.lineTo(size.width * 0.4604297, size.height * 0.1955763);
    path278.arcToPoint(Offset(size.width * 0.4614974, size.height * 0.1955763),
        radius: Radius.elliptical(
            size.width * 0.002068597, size.height * 0.002457587),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path278.lineTo(size.width * 0.4651008, size.height * 0.1980339);
    path278.arcToPoint(Offset(size.width * 0.4640331, size.height * 0.1980339),
        radius: Radius.elliptical(
            size.width * 0.003136261, size.height * 0.003726019),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path278.close();

    Paint paint278fill = Paint()..style = PaintingStyle.fill;
    paint278fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path278, paint278fill);

    Path path279 = Path();
    path279.moveTo(size.width * 0.4653677, size.height * 0.1981925);
    path279.lineTo(size.width * 0.4617643, size.height * 0.1957349);
    path279.arcToPoint(Offset(size.width * 0.4623649, size.height * 0.1957349),
        radius: Radius.elliptical(
            size.width * 0.001067663, size.height * 0.001268432),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path279.lineTo(size.width * 0.4659682, size.height * 0.1981925);
    path279.lineTo(size.width * 0.4653677, size.height * 0.1981925);
    path279.close();

    Paint paint279fill = Paint()..style = PaintingStyle.fill;
    paint279fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path279, paint279fill);

    Path path280 = Path();
    path280.moveTo(size.width * 0.4604297, size.height * 0.2050896);
    path280.lineTo(size.width * 0.4568264, size.height * 0.2026320);
    path280.arcToPoint(Offset(size.width * 0.4600961, size.height * 0.1958935),
        radius: Radius.elliptical(
            size.width * 0.007340184, size.height * 0.008720469),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path280.lineTo(size.width * 0.4636995, size.height * 0.1984303);
    path280.arcToPoint(Offset(size.width * 0.4604297, size.height * 0.2050896),
        radius: Radius.elliptical(
            size.width * 0.007073268, size.height * 0.008403361),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path280.close();

    Paint paint280fill = Paint()..style = PaintingStyle.fill;
    paint280fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path280, paint280fill);

    Path path281 = Path();
    path281.moveTo(size.width * 0.4604297, size.height * 0.2050896);
    path281.lineTo(size.width * 0.4568264, size.height * 0.2026320);
    path281.cubicTo(
        size.width * 0.4568264,
        size.height * 0.2026320,
        size.width * 0.4568264,
        size.height * 0.2019185,
        size.width * 0.4568264,
        size.height * 0.2015221);
    path281.lineTo(size.width * 0.4604297, size.height * 0.2039797);
    path281.arcToPoint(Offset(size.width * 0.4604297, size.height * 0.2050896),
        radius: Radius.elliptical(
            size.width * 0.004737755, size.height * 0.005628667),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path281.close();

    Paint paint281fill = Paint()..style = PaintingStyle.fill;
    paint281fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path281, paint281fill);

    Path path282 = Path();
    path282.moveTo(size.width * 0.4604297, size.height * 0.2039797);
    path282.lineTo(size.width * 0.4568264, size.height * 0.2015221);
    path282.arcToPoint(Offset(size.width * 0.4572935, size.height * 0.1998573),
        radius: Radius.elliptical(
            size.width * 0.01147738, size.height * 0.01363564),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path282.lineTo(size.width * 0.4608968, size.height * 0.2023149);
    path282.arcToPoint(Offset(size.width * 0.4604297, size.height * 0.2039797),
        radius: Radius.elliptical(
            size.width * 0.01147738, size.height * 0.01363564),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path282.close();

    Paint paint282fill = Paint()..style = PaintingStyle.fill;
    paint282fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path282, paint282fill);

    Path path283 = Path();
    path283.moveTo(size.width * 0.4608968, size.height * 0.2023149);
    path283.lineTo(size.width * 0.4572935, size.height * 0.1998573);
    path283.arcToPoint(Offset(size.width * 0.4579608, size.height * 0.1983510),
        radius: Radius.elliptical(
            size.width * 0.007607100, size.height * 0.009037577),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path283.lineTo(size.width * 0.4615641, size.height * 0.2008086);
    path283.arcToPoint(Offset(size.width * 0.4608968, size.height * 0.2023149),
        radius: Radius.elliptical(
            size.width * 0.005805418, size.height * 0.006897098),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path283.close();

    Paint paint283fill = Paint()..style = PaintingStyle.fill;
    paint283fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path283, paint283fill);

    Path path284 = Path();
    path284.moveTo(size.width * 0.4615641, size.height * 0.2008086);
    path284.lineTo(size.width * 0.4579608, size.height * 0.1981925);
    path284.arcToPoint(Offset(size.width * 0.4591619, size.height * 0.1965277),
        radius: Radius.elliptical(
            size.width * 0.006072334, size.height * 0.007214206),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path284.lineTo(size.width * 0.4627652, size.height * 0.1989853);
    path284.arcToPoint(Offset(size.width * 0.4615641, size.height * 0.2006501),
        radius: Radius.elliptical(
            size.width * 0.006072334, size.height * 0.007214206),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path284.close();

    Paint paint284fill = Paint()..style = PaintingStyle.fill;
    paint284fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path284, paint284fill);

    Path path285 = Path();
    path285.moveTo(size.width * 0.4627652, size.height * 0.1991438);
    path285.lineTo(size.width * 0.4591619, size.height * 0.1966862);
    path285.lineTo(size.width * 0.4600294, size.height * 0.1958935);
    path285.lineTo(size.width * 0.4636327, size.height * 0.1984303);
    path285.arcToPoint(Offset(size.width * 0.4627652, size.height * 0.1991438),
        radius: Radius.elliptical(
            size.width * 0.004003737, size.height * 0.004756620),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path285.close();

    Paint paint285fill = Paint()..style = PaintingStyle.fill;
    paint285fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path285, paint285fill);

    Path path286 = Path();
    path286.moveTo(size.width * 0.4636327, size.height * 0.1981925);
    path286.cubicTo(
        size.width * 0.4654344,
        size.height * 0.1969241,
        size.width * 0.4669024,
        size.height * 0.1981925,
        size.width * 0.4669024,
        size.height * 0.2004122);
    path286.lineTo(size.width * 0.4669024, size.height * 0.2503567);
    path286.arcToPoint(Offset(size.width * 0.4636327, size.height * 0.2570953),
        radius: Radius.elliptical(
            size.width * 0.007340184, size.height * 0.008720469),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path286.cubicTo(
        size.width * 0.4618310,
        size.height * 0.2582844,
        size.width * 0.4603630,
        size.height * 0.2570953,
        size.width * 0.4603630,
        size.height * 0.2548755);
    path286.lineTo(size.width * 0.4603630, size.height * 0.2048518);
    path286.arcToPoint(Offset(size.width * 0.4636327, size.height * 0.1981925),
        radius: Radius.elliptical(
            size.width * 0.007073268, size.height * 0.008403361),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path286.close();

    Paint paint286fill = Paint()..style = PaintingStyle.fill;
    paint286fill.color = Color(0xffc2c3d0).withOpacity(1.0);
    canvas.drawPath(path286, paint286fill);

    Path path287 = Path();
    path287.moveTo(size.width * 0.3892967, size.height * 0.2731092);
    path287.lineTo(size.width * 0.5300948, size.height * 0.1759156);
    path287.arcToPoint(Offset(size.width * 0.5325637, size.height * 0.1759156),
        radius: Radius.elliptical(
            size.width * 0.002602429, size.height * 0.003091803),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path287.lineTo(size.width * 0.3918324, size.height * 0.2734264);
    path287.arcToPoint(Offset(size.width * 0.3892967, size.height * 0.2731092),
        radius: Radius.elliptical(
            size.width * 0.002535700, size.height * 0.003012526),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path287.close();

    Paint paint287fill = Paint()..style = PaintingStyle.fill;
    paint287fill.color = Color(0xff252529).withOpacity(1.0);
    canvas.drawPath(path287, paint287fill);

    Path path288 = Path();
    path288.moveTo(size.width * 0.3892967, size.height * 0.2731092);
    path288.lineTo(size.width * 0.5300948, size.height * 0.1759156);
    path288.arcToPoint(Offset(size.width * 0.5311624, size.height * 0.1759156),
        radius: Radius.elliptical(
            size.width * 0.001801682, size.height * 0.002140479),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path288.lineTo(size.width * 0.3903643, size.height * 0.2728714);
    path288.arcToPoint(Offset(size.width * 0.3892967, size.height * 0.2728714),
        radius: Radius.elliptical(
            size.width * 0.001935139, size.height * 0.002299033),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path288.close();

    Paint paint288fill = Paint()..style = PaintingStyle.fill;
    paint288fill.color = Color(0xff252529).withOpacity(1.0);
    canvas.drawPath(path288, paint288fill);

    Path path289 = Path();
    path289.moveTo(size.width * 0.3903643, size.height * 0.2728714);
    path289.lineTo(size.width * 0.5311624, size.height * 0.1756778);
    path289.lineTo(size.width * 0.5318964, size.height * 0.1756778);
    path289.lineTo(size.width * 0.3911651, size.height * 0.2730300);
    path289.lineTo(size.width * 0.3903643, size.height * 0.2730300);
    path289.close();

    Paint paint289fill = Paint()..style = PaintingStyle.fill;
    paint289fill.color = Color(0xff252529).withOpacity(1.0);
    canvas.drawPath(path289, paint289fill);

    Path path290 = Path();
    path290.moveTo(size.width * 0.3911651, size.height * 0.2730300);
    path290.lineTo(size.width * 0.5318964, size.height * 0.1758364);
    path290.lineTo(size.width * 0.5325637, size.height * 0.1762328);
    path290.lineTo(size.width * 0.3918324, size.height * 0.2734264);
    path290.lineTo(size.width * 0.3911651, size.height * 0.2730300);
    path290.close();

    Paint paint290fill = Paint()..style = PaintingStyle.fill;
    paint290fill.color = Color(0xff252529).withOpacity(1.0);
    canvas.drawPath(path290, paint290fill);

    Path path291 = Path();
    path291.moveTo(size.width * 0.5350994, size.height * 0.1862217);
    path291.lineTo(size.width * 0.3943681, size.height * 0.2834153);
    path291.arcToPoint(Offset(size.width * 0.3953690, size.height * 0.2807198),
        radius: Radius.elliptical(
            size.width * 0.002602429, size.height * 0.003091803),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path291.arcToPoint(Offset(size.width * 0.3918324, size.height * 0.2734264),
        radius: Radius.elliptical(
            size.width * 0.007874016, size.height * 0.009354685),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path291.lineTo(size.width * 0.5325637, size.height * 0.1762328);
    path291.arcToPoint(Offset(size.width * 0.5361004, size.height * 0.1835262),
        radius: Radius.elliptical(
            size.width * 0.007540371, size.height * 0.008958300),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path291.arcToPoint(Offset(size.width * 0.5350994, size.height * 0.1862217),
        radius: Radius.elliptical(
            size.width * 0.002402242, size.height * 0.002853972),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path291.close();

    Paint paint291fill = Paint()..style = PaintingStyle.fill;
    paint291fill.color = Color(0xff252529).withOpacity(1.0);
    canvas.drawPath(path291, paint291fill);

    Path path292 = Path();
    path292.moveTo(size.width * 0.3918324, size.height * 0.2734264);
    path292.lineTo(size.width * 0.5325637, size.height * 0.1762328);
    path292.lineTo(size.width * 0.5326305, size.height * 0.1762328);
    path292.lineTo(size.width * 0.3918991, size.height * 0.2734264);
    path292.lineTo(size.width * 0.3918324, size.height * 0.2734264);
    path292.lineTo(size.width * 0.3918324, size.height * 0.2734264);
    path292.close();

    Paint paint292fill = Paint()..style = PaintingStyle.fill;
    paint292fill.color = Color(0xff252529).withOpacity(1.0);
    canvas.drawPath(path292, paint292fill);

    Path path293 = Path();
    path293.moveTo(size.width * 0.3918991, size.height * 0.2734264);
    path293.lineTo(size.width * 0.5326305, size.height * 0.1762328);
    path293.lineTo(size.width * 0.5334312, size.height * 0.1769463);
    path293.lineTo(size.width * 0.3926331, size.height * 0.2741398);
    path293.lineTo(size.width * 0.3918991, size.height * 0.2734264);
    path293.close();

    Paint paint293fill = Paint()..style = PaintingStyle.fill;
    paint293fill.color = Color(0xff252529).withOpacity(1.0);
    canvas.drawPath(path293, paint293fill);

    Path path294 = Path();
    path294.moveTo(size.width * 0.3926331, size.height * 0.2741398);
    path294.lineTo(size.width * 0.5334312, size.height * 0.1769463);
    path294.lineTo(size.width * 0.5341652, size.height * 0.1778183);
    path294.lineTo(size.width * 0.3937008, size.height * 0.2750119);
    path294.lineTo(size.width * 0.3929668, size.height * 0.2741398);
    path294.close();

    Paint paint294fill = Paint()..style = PaintingStyle.fill;
    paint294fill.color = Color(0xff252529).withOpacity(1.0);
    canvas.drawPath(path294, paint294fill);

    Path path295 = Path();
    path295.moveTo(size.width * 0.3937008, size.height * 0.2750119);
    path295.lineTo(size.width * 0.5344989, size.height * 0.1778183);
    path295.arcToPoint(Offset(size.width * 0.5358334, size.height * 0.1803552),
        radius: Radius.elliptical(
            size.width * 0.007740558, size.height * 0.009196131),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path295.lineTo(size.width * 0.3947685, size.height * 0.2774695);
    path295.arcToPoint(Offset(size.width * 0.3933671, size.height * 0.2749326),
        radius: Radius.elliptical(
            size.width * 0.006672895, size.height * 0.007927699),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path295.close();

    Paint paint295fill = Paint()..style = PaintingStyle.fill;
    paint295fill.color = Color(0xff252529).withOpacity(1.0);
    canvas.drawPath(path295, paint295fill);

    Path path296 = Path();
    path296.moveTo(size.width * 0.3947685, size.height * 0.2774695);
    path296.lineTo(size.width * 0.5354998, size.height * 0.1803552);
    path296.arcToPoint(Offset(size.width * 0.5354998, size.height * 0.1813858),
        radius: Radius.elliptical(
            size.width * 0.004604297, size.height * 0.005470113),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path296.lineTo(size.width * 0.3951021, size.height * 0.2785794);
    path296.cubicTo(
        size.width * 0.3951021,
        size.height * 0.2785794,
        size.width * 0.3951021,
        size.height * 0.2778659,
        size.width * 0.3947685,
        size.height * 0.2775488);
    path296.close();

    Paint paint296fill = Paint()..style = PaintingStyle.fill;
    paint296fill.color = Color(0xff252529).withOpacity(1.0);
    canvas.drawPath(path296, paint296fill);

    Path path297 = Path();
    path297.moveTo(size.width * 0.3951021, size.height * 0.2785794);
    path297.lineTo(size.width * 0.5358334, size.height * 0.1813858);
    path297.arcToPoint(Offset(size.width * 0.5358334, size.height * 0.1824956),
        radius: Radius.elliptical(
            size.width * 0.002335513, size.height * 0.002774695),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path297.lineTo(size.width * 0.3953023, size.height * 0.2796892);
    path297.lineTo(size.width * 0.3953023, size.height * 0.2785794);
    path297.close();

    Paint paint297fill = Paint()..style = PaintingStyle.fill;
    paint297fill.color = Color(0xff252529).withOpacity(1.0);
    canvas.drawPath(path297, paint297fill);

    Path path298 = Path();
    path298.moveTo(size.width * 0.3953023, size.height * 0.2796892);
    path298.lineTo(size.width * 0.5360336, size.height * 0.1823371);
    path298.arcToPoint(Offset(size.width * 0.5360336, size.height * 0.1833677),
        radius: Radius.elliptical(
            size.width * 0.003803550, size.height * 0.004518789),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path298.lineTo(size.width * 0.5360336, size.height * 0.1833677);
    path298.lineTo(size.width * 0.3953690, size.height * 0.2807198);
    path298.lineTo(size.width * 0.3953690, size.height * 0.2807198);
    path298.arcToPoint(Offset(size.width * 0.3953690, size.height * 0.2796892),
        radius: Radius.elliptical(
            size.width * 0.003803550, size.height * 0.004518789),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path298.close();

    Paint paint298fill = Paint()..style = PaintingStyle.fill;
    paint298fill.color = Color(0xff252529).withOpacity(1.0);
    canvas.drawPath(path298, paint298fill);

    Path path299 = Path();
    path299.moveTo(size.width * 0.3953690, size.height * 0.2807198);
    path299.lineTo(size.width * 0.5361004, size.height * 0.1835262);
    path299.arcToPoint(Offset(size.width * 0.5361004, size.height * 0.1845568),
        radius: Radius.elliptical(
            size.width * 0.003536634, size.height * 0.004201681),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path299.lineTo(size.width * 0.3953023, size.height * 0.2817504);
    path299.arcToPoint(Offset(size.width * 0.3953023, size.height * 0.2807198),
        radius: Radius.elliptical(
            size.width * 0.003536634, size.height * 0.004201681),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path299.close();

    Paint paint299fill = Paint()..style = PaintingStyle.fill;
    paint299fill.color = Color(0xff252529).withOpacity(1.0);
    canvas.drawPath(path299, paint299fill);

    Path path300 = Path();
    path300.moveTo(size.width * 0.3953023, size.height * 0.2817504);
    path300.lineTo(size.width * 0.5360336, size.height * 0.1845568);
    path300.arcToPoint(Offset(size.width * 0.5350994, size.height * 0.1862217),
        radius: Radius.elliptical(
            size.width * 0.002001868, size.height * 0.002378310),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path300.lineTo(size.width * 0.3943681, size.height * 0.2834153);
    path300.arcToPoint(Offset(size.width * 0.3953023, size.height * 0.2817504),
        radius: Radius.elliptical(
            size.width * 0.002735887, size.height * 0.003250357),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path300.close();

    Paint paint300fill = Paint()..style = PaintingStyle.fill;
    paint300fill.color = Color(0xff252529).withOpacity(1.0);
    canvas.drawPath(path300, paint300fill);

    Path path301 = Path();
    path301.moveTo(size.width * 0.3918324, size.height * 0.2734264);
    path301.arcToPoint(Offset(size.width * 0.3953690, size.height * 0.2807198),
        radius: Radius.elliptical(
            size.width * 0.007874016, size.height * 0.009354685),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path301.cubicTo(
        size.width * 0.3953690,
        size.height * 0.2833360,
        size.width * 0.3937675,
        size.height * 0.2844459,
        size.width * 0.3918324,
        size.height * 0.2830981);
    path301.arcToPoint(Offset(size.width * 0.3882957, size.height * 0.2758047),
        radius: Radius.elliptical(
            size.width * 0.007673829, size.height * 0.009116854),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path301.cubicTo(
        size.width * 0.3882957,
        size.height * 0.2731092,
        size.width * 0.3898972,
        size.height * 0.2720786,
        size.width * 0.3918324,
        size.height * 0.2734264);
    path301.close();

    Paint paint301fill = Paint()..style = PaintingStyle.fill;
    paint301fill.color = Color(0xff252529).withOpacity(1.0);
    canvas.drawPath(path301, paint301fill);

    Path path302 = Path();
    path302.moveTo(size.width * 0.4523555, size.height * 0.2786586);
    path302.lineTo(size.width * 0.4556920, size.height * 0.2764389);
    path302.lineTo(size.width * 0.4582277, size.height * 0.2816712);
    path302.lineTo(size.width * 0.4548912, size.height * 0.2839702);
    path302.lineTo(size.width * 0.4523555, size.height * 0.2786586);
    path302.close();

    Paint paint302fill = Paint()..style = PaintingStyle.fill;
    paint302fill.color = Color(0xff2a2a2a).withOpacity(1.0);
    canvas.drawPath(path302, paint302fill);

    Path path303 = Path();
    path303.moveTo(size.width * 0.4548912, size.height * 0.2839702);
    path303.lineTo(size.width * 0.4582277, size.height * 0.2816712);
    path303.lineTo(size.width * 0.4561591, size.height * 0.2831774);
    path303.lineTo(size.width * 0.4528226, size.height * 0.2854765);
    path303.lineTo(size.width * 0.4548912, size.height * 0.2839702);
    path303.close();

    Paint paint303fill = Paint()..style = PaintingStyle.fill;
    paint303fill.color = Color(0xff232323).withOpacity(1.0);
    canvas.drawPath(path303, paint303fill);

    Path path304 = Path();
    path304.moveTo(size.width * 0.4523555, size.height * 0.2687490);
    path304.lineTo(size.width * 0.4556920, size.height * 0.2665293);
    path304.lineTo(size.width * 0.4556920, size.height * 0.2764389);
    path304.lineTo(size.width * 0.4523555, size.height * 0.2786586);
    path304.lineTo(size.width * 0.4523555, size.height * 0.2687490);
    path304.close();

    Paint paint304fill = Paint()..style = PaintingStyle.fill;
    paint304fill.color = Color(0xff303030).withOpacity(1.0);
    canvas.drawPath(path304, paint304fill);

    Path path305 = Path();
    path305.moveTo(size.width * 0.4570933, size.height * 0.2654987);
    path305.lineTo(size.width * 0.4604297, size.height * 0.2632789);
    path305.lineTo(size.width * 0.4556920, size.height * 0.2665293);
    path305.lineTo(size.width * 0.4523555, size.height * 0.2687490);
    path305.lineTo(size.width * 0.4570933, size.height * 0.2654987);
    path305.close();

    Paint paint305fill = Paint()..style = PaintingStyle.fill;
    paint305fill.color = Color(0xff232323).withOpacity(1.0);
    canvas.drawPath(path305, paint305fill);

    Path path306 = Path();
    path306.moveTo(size.width * 0.4558254, size.height * 0.2605042);
    path306.lineTo(size.width * 0.4591619, size.height * 0.2582844);
    path306.lineTo(size.width * 0.4662352, size.height * 0.2631203);
    path306.lineTo(size.width * 0.4628987, size.height * 0.2653401);
    path306.lineTo(size.width * 0.4558254, size.height * 0.2605042);
    path306.close();

    Paint paint306fill = Paint()..style = PaintingStyle.fill;
    paint306fill.color = Color(0xff1e1e1e).withOpacity(1.0);
    canvas.drawPath(path306, paint306fill);

    Path path307 = Path();
    path307.moveTo(size.width * 0.4628987, size.height * 0.2653401);
    path307.lineTo(size.width * 0.4662352, size.height * 0.2631203);
    path307.lineTo(size.width * 0.4662352, size.height * 0.2672427);
    path307.lineTo(size.width * 0.4628987, size.height * 0.2694625);
    path307.lineTo(size.width * 0.4628987, size.height * 0.2653401);
    path307.close();

    Paint paint307fill = Paint()..style = PaintingStyle.fill;
    paint307fill.color = Color(0xff303030).withOpacity(1.0);
    canvas.drawPath(path307, paint307fill);

    Path path308 = Path();
    path308.moveTo(size.width * 0.4628987, size.height * 0.2694625);
    path308.lineTo(size.width * 0.4570933, size.height * 0.2654987);
    path308.lineTo(size.width * 0.4523555, size.height * 0.2687490);
    path308.lineTo(size.width * 0.4523555, size.height * 0.2786586);
    path308.lineTo(size.width * 0.4548912, size.height * 0.2839702);
    path308.lineTo(size.width * 0.4528226, size.height * 0.2854765);
    path308.lineTo(size.width * 0.4493527, size.height * 0.2783415);
    path308.lineTo(size.width * 0.4493527, size.height * 0.2650230);
    path308.lineTo(size.width * 0.4558254, size.height * 0.2605042);
    path308.lineTo(size.width * 0.4628987, size.height * 0.2653401);
    path308.lineTo(size.width * 0.4628987, size.height * 0.2694625);
    path308.close();

    Paint paint308fill = Paint()..style = PaintingStyle.fill;
    paint308fill.color = Color(0xff2b2b2b).withOpacity(1.0);
    canvas.drawPath(path308, paint308fill);

    Path path309 = Path();
    path309.moveTo(size.width * 0.4763780, size.height * 0.2968131);
    path309.lineTo(size.width * 0.4797144, size.height * 0.2945140);
    path309.lineTo(size.width * 0.4762445, size.height * 0.2968923);
    path309.lineTo(size.width * 0.4729080, size.height * 0.2991914);
    path309.lineTo(size.width * 0.4763780, size.height * 0.2968131);
    path309.close();

    Paint paint309fill = Paint()..style = PaintingStyle.fill;
    paint309fill.color = Color(0xff232323).withOpacity(1.0);
    canvas.drawPath(path309, paint309fill);

    Path path310 = Path();
    path310.moveTo(size.width * 0.4628987, size.height * 0.2653401);
    path310.lineTo(size.width * 0.4662352, size.height * 0.2631203);
    path310.lineTo(size.width * 0.4733084, size.height * 0.2679562);
    path310.lineTo(size.width * 0.4699720, size.height * 0.2701760);
    path310.lineTo(size.width * 0.4628987, size.height * 0.2653401);
    path310.close();

    Paint paint310fill = Paint()..style = PaintingStyle.fill;
    paint310fill.color = Color(0xff1e1e1e).withOpacity(1.0);
    canvas.drawPath(path310, paint310fill);

    Path path311 = Path();
    path311.moveTo(size.width * 0.4699720, size.height * 0.2701760);
    path311.lineTo(size.width * 0.4733084, size.height * 0.2679562);
    path311.lineTo(size.width * 0.4797144, size.height * 0.2811955);
    path311.lineTo(size.width * 0.4763780, size.height * 0.2834945);
    path311.lineTo(size.width * 0.4699720, size.height * 0.2701760);
    path311.close();

    Paint paint311fill = Paint()..style = PaintingStyle.fill;
    paint311fill.color = Color(0xff2a2a2a).withOpacity(1.0);
    canvas.drawPath(path311, paint311fill);

    Path path312 = Path();
    path312.moveTo(size.width * 0.4763780, size.height * 0.2834945);
    path312.lineTo(size.width * 0.4797144, size.height * 0.2811955);
    path312.lineTo(size.width * 0.4797144, size.height * 0.2945140);
    path312.lineTo(size.width * 0.4763780, size.height * 0.2968131);
    path312.lineTo(size.width * 0.4763780, size.height * 0.2834945);
    path312.close();

    Paint paint312fill = Paint()..style = PaintingStyle.fill;
    paint312fill.color = Color(0xff303030).withOpacity(1.0);
    canvas.drawPath(path312, paint312fill);

    Path path313 = Path();
    path313.moveTo(size.width * 0.4763780, size.height * 0.2968131);
    path313.lineTo(size.width * 0.4729080, size.height * 0.2991914);
    path313.lineTo(size.width * 0.4707727, size.height * 0.2948311);
    path313.lineTo(size.width * 0.4733752, size.height * 0.2930870);
    path313.lineTo(size.width * 0.4733752, size.height * 0.2830981);
    path313.lineTo(size.width * 0.4687041, size.height * 0.2735056);
    path313.lineTo(size.width * 0.4628987, size.height * 0.2694625);
    path313.lineTo(size.width * 0.4628987, size.height * 0.2653401);
    path313.lineTo(size.width * 0.4699720, size.height * 0.2701760);
    path313.lineTo(size.width * 0.4763780, size.height * 0.2834945);
    path313.lineTo(size.width * 0.4763780, size.height * 0.2968131);
    path313.close();

    Paint paint313fill = Paint()..style = PaintingStyle.fill;
    paint313fill.color = Color(0xff2b2b2b).withOpacity(1.0);
    canvas.drawPath(path313, paint313fill);

    Path path314 = Path();
    path314.moveTo(size.width * 0.4657013, size.height * 0.2568575);
    path314.lineTo(size.width * 0.4730415, size.height * 0.2517837);
    path314.lineTo(size.width * 0.4730415, size.height * 0.2659743);
    path314.lineTo(size.width * 0.4657013, size.height * 0.2710480);
    path314.lineTo(size.width * 0.4657013, size.height * 0.2568575);
    path314.close();

    Paint paint314fill = Paint()..style = PaintingStyle.fill;
    paint314fill.color = Color(0xffc2c3d0).withOpacity(1.0);
    canvas.drawPath(path314, paint314fill);

    Path path315 = Path();
    path315.moveTo(size.width * 0.4604297, size.height * 0.2501982);
    path315.lineTo(size.width * 0.4678366, size.height * 0.2451245);
    path315.arcToPoint(Offset(size.width * 0.4700387, size.height * 0.2451245),
        radius: Radius.elliptical(
            size.width * 0.002202055, size.height * 0.002616141),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path315.lineTo(size.width * 0.4626318, size.height * 0.2501982);
    path315.arcToPoint(Offset(size.width * 0.4604297, size.height * 0.2501982),
        radius: Radius.elliptical(
            size.width * 0.002202055, size.height * 0.002616141),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path315.close();

    Paint paint315fill = Paint()..style = PaintingStyle.fill;
    paint315fill.color = Color(0xffc2c3d0).withOpacity(1.0);
    canvas.drawPath(path315, paint315fill);

    Path path316 = Path();
    path316.moveTo(size.width * 0.4604297, size.height * 0.2501982);
    path316.lineTo(size.width * 0.4678366, size.height * 0.2451245);
    path316.arcToPoint(Offset(size.width * 0.4687709, size.height * 0.2451245),
        radius: Radius.elliptical(
            size.width * 0.001468037, size.height * 0.001744094),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path316.lineTo(size.width * 0.4614307, size.height * 0.2501982);
    path316.arcToPoint(Offset(size.width * 0.4604297, size.height * 0.2501982),
        radius: Radius.elliptical(
            size.width * 0.002202055, size.height * 0.002616141),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path316.close();

    Paint paint316fill = Paint()..style = PaintingStyle.fill;
    paint316fill.color = Color(0xffc2c3d0).withOpacity(1.0);
    canvas.drawPath(path316, paint316fill);

    Path path317 = Path();
    path317.moveTo(size.width * 0.4613639, size.height * 0.2499604);
    path317.lineTo(size.width * 0.4687041, size.height * 0.2448866);
    path317.lineTo(size.width * 0.4693714, size.height * 0.2448866);
    path317.lineTo(size.width * 0.4619645, size.height * 0.2499604);
    path317.lineTo(size.width * 0.4613639, size.height * 0.2499604);
    path317.close();

    Paint paint317fill = Paint()..style = PaintingStyle.fill;
    paint317fill.color = Color(0xffc2c3d0).withOpacity(1.0);
    canvas.drawPath(path317, paint317fill);

    Path path318 = Path();
    path318.moveTo(size.width * 0.4619645, size.height * 0.2501189);
    path318.lineTo(size.width * 0.4693714, size.height * 0.2450452);
    path318.lineTo(size.width * 0.4699720, size.height * 0.2450452);
    path318.lineTo(size.width * 0.4625651, size.height * 0.2501189);
    path318.lineTo(size.width * 0.4619645, size.height * 0.2501189);
    path318.close();

    Paint paint318fill = Paint()..style = PaintingStyle.fill;
    paint318fill.color = Color(0xffc2c3d0).withOpacity(1.0);
    canvas.drawPath(path318, paint318fill);

    Path path319 = Path();
    path319.moveTo(size.width * 0.4625651, size.height * 0.2504360);
    path319.lineTo(size.width * 0.4699720, size.height * 0.2457587);
    path319.arcToPoint(Offset(size.width * 0.4730415, size.height * 0.2521801),
        radius: Radius.elliptical(
            size.width * 0.006672895, size.height * 0.007927699),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path319.lineTo(size.width * 0.4657013, size.height * 0.2572538);
    path319.arcToPoint(Offset(size.width * 0.4625651, size.height * 0.2504360),
        radius: Radius.elliptical(
            size.width * 0.006672895, size.height * 0.007927699),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path319.close();

    Paint paint319fill = Paint()..style = PaintingStyle.fill;
    paint319fill.color = Color(0xffc2c3d0).withOpacity(1.0);
    canvas.drawPath(path319, paint319fill);

    Path path320 = Path();
    path320.moveTo(size.width * 0.4626318, size.height * 0.2504360);
    path320.lineTo(size.width * 0.4699720, size.height * 0.2453623);
    path320.lineTo(size.width * 0.4699720, size.height * 0.2453623);
    path320.lineTo(size.width * 0.4626318, size.height * 0.2504360);
    path320.lineTo(size.width * 0.4626318, size.height * 0.2504360);
    path320.lineTo(size.width * 0.4626318, size.height * 0.2504360);
    path320.close();

    Paint paint320fill = Paint()..style = PaintingStyle.fill;
    paint320fill.color = Color(0xffc2c3d0).withOpacity(1.0);
    canvas.drawPath(path320, paint320fill);

    Path path321 = Path();
    path321.moveTo(size.width * 0.4626318, size.height * 0.2505153);
    path321.lineTo(size.width * 0.4699720, size.height * 0.2453623);
    path321.arcToPoint(Offset(size.width * 0.4706393, size.height * 0.2459965),
        radius: Radius.elliptical(
            size.width * 0.002602429, size.height * 0.003091803),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path321.lineTo(size.width * 0.4632991, size.height * 0.2510702);
    path321.lineTo(size.width * 0.4626318, size.height * 0.2505153);
    path321.close();

    Paint paint321fill = Paint()..style = PaintingStyle.fill;
    paint321fill.color = Color(0xffc2c3d0).withOpacity(1.0);
    canvas.drawPath(path321, paint321fill);

    Path path322 = Path();
    path322.moveTo(size.width * 0.4632991, size.height * 0.2510702);
    path322.lineTo(size.width * 0.4706393, size.height * 0.2459965);
    path322.lineTo(size.width * 0.4713066, size.height * 0.2467100);
    path322.lineTo(size.width * 0.4639664, size.height * 0.2517837);
    path322.lineTo(size.width * 0.4632991, size.height * 0.2510702);
    path322.close();

    Paint paint322fill = Paint()..style = PaintingStyle.fill;
    paint322fill.color = Color(0xffc2c3d0).withOpacity(1.0);
    canvas.drawPath(path322, paint322fill);

    Path path323 = Path();
    path323.moveTo(size.width * 0.4639664, size.height * 0.2517837);
    path323.lineTo(size.width * 0.4713066, size.height * 0.2467100);
    path323.arcToPoint(Offset(size.width * 0.4725077, size.height * 0.2490090),
        radius: Radius.elliptical(
            size.width * 0.005872147, size.height * 0.006976375),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path323.lineTo(size.width * 0.4651675, size.height * 0.2540828);
    path323.arcToPoint(Offset(size.width * 0.4639664, size.height * 0.2517837),
        radius: Radius.elliptical(
            size.width * 0.01167757, size.height * 0.01387347),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path323.close();

    Paint paint323fill = Paint()..style = PaintingStyle.fill;
    paint323fill.color = Color(0xffc2c3d0).withOpacity(1.0);
    canvas.drawPath(path323, paint323fill);

    Path path324 = Path();
    path324.moveTo(size.width * 0.4651675, size.height * 0.2540828);
    path324.lineTo(size.width * 0.4725077, size.height * 0.2490090);
    path324.lineTo(size.width * 0.4725077, size.height * 0.2498811);
    path324.lineTo(size.width * 0.4651008, size.height * 0.2549548);
    path324.arcToPoint(Offset(size.width * 0.4651008, size.height * 0.2540828),
        radius: Radius.elliptical(
            size.width * 0.005071400, size.height * 0.006025052),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path324.close();

    Paint paint324fill = Paint()..style = PaintingStyle.fill;
    paint324fill.color = Color(0xffc2c3d0).withOpacity(1.0);
    canvas.drawPath(path324, paint324fill);

    Path path325 = Path();
    path325.moveTo(size.width * 0.4654344, size.height * 0.2549548);
    path325.lineTo(size.width * 0.4728413, size.height * 0.2498811);
    path325.lineTo(size.width * 0.4728413, size.height * 0.2508324);
    path325.lineTo(size.width * 0.4654344, size.height * 0.2559854);
    path325.arcToPoint(Offset(size.width * 0.4654344, size.height * 0.2549548),
        radius: Radius.elliptical(
            size.width * 0.002068597, size.height * 0.002457587),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path325.close();

    Paint paint325fill = Paint()..style = PaintingStyle.fill;
    paint325fill.color = Color(0xffc2c3d0).withOpacity(1.0);
    canvas.drawPath(path325, paint325fill);

    Path path326 = Path();
    path326.moveTo(size.width * 0.4656346, size.height * 0.2559854);
    path326.lineTo(size.width * 0.4730415, size.height * 0.2508324);
    path326.lineTo(size.width * 0.4730415, size.height * 0.2517837);
    path326.lineTo(size.width * 0.4657013, size.height * 0.2568575);
    path326.arcToPoint(Offset(size.width * 0.4657013, size.height * 0.2559854),
        radius: Radius.elliptical(
            size.width * 0.002468971, size.height * 0.002933249),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path326.close();

    Paint paint326fill = Paint()..style = PaintingStyle.fill;
    paint326fill.color = Color(0xffc2c3d0).withOpacity(1.0);
    canvas.drawPath(path326, paint326fill);

    Path path327 = Path();
    path327.moveTo(size.width * 0.4625651, size.height * 0.2504360);
    path327.arcToPoint(Offset(size.width * 0.4657013, size.height * 0.2568575),
        radius: Radius.elliptical(
            size.width * 0.006672895, size.height * 0.007927699),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path327.lineTo(size.width * 0.4657013, size.height * 0.2710480);
    path327.lineTo(size.width * 0.4594288, size.height * 0.2667671);
    path327.lineTo(size.width * 0.4594288, size.height * 0.2525765);
    path327.cubicTo(
        size.width * 0.4594955,
        size.height * 0.2501982,
        size.width * 0.4608968,
        size.height * 0.2492469,
        size.width * 0.4625651,
        size.height * 0.2504360);
    path327.close();

    Paint paint327fill = Paint()..style = PaintingStyle.fill;
    paint327fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path327, paint327fill);

    Path path328 = Path();
    path328.moveTo(size.width * 0.4727746, size.height * 0.2646266);
    path328.lineTo(size.width * 0.4691712, size.height * 0.2621690);
    path328.arcToPoint(Offset(size.width * 0.4681703, size.height * 0.2596322),
        radius: Radius.elliptical(
            size.width * 0.002468971, size.height * 0.002933249),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path328.lineTo(size.width * 0.4717737, size.height * 0.2621690);
    path328.arcToPoint(Offset(size.width * 0.4727746, size.height * 0.2646266),
        radius: Radius.elliptical(
            size.width * 0.002268784, size.height * 0.002695418),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path328.close();

    Paint paint328fill = Paint()..style = PaintingStyle.fill;
    paint328fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path328, paint328fill);

    Path path329 = Path();
    path329.moveTo(size.width * 0.4727746, size.height * 0.2646266);
    path329.lineTo(size.width * 0.4691712, size.height * 0.2621690);
    path329.arcToPoint(Offset(size.width * 0.4681703, size.height * 0.2596322),
        radius: Radius.elliptical(
            size.width * 0.002468971, size.height * 0.002933249),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path329.lineTo(size.width * 0.4717737, size.height * 0.2621690);
    path329.arcToPoint(Offset(size.width * 0.4727746, size.height * 0.2646266),
        radius: Radius.elliptical(
            size.width * 0.002268784, size.height * 0.002695418),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path329.close();

    Paint paint329fill = Paint()..style = PaintingStyle.fill;
    paint329fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path329, paint329fill);

    Path path330 = Path();
    path330.moveTo(size.width * 0.4717737, size.height * 0.2621690);
    path330.lineTo(size.width * 0.4682370, size.height * 0.2596322);
    path330.lineTo(size.width * 0.4681036, size.height * 0.2096876);
    path330.lineTo(size.width * 0.4717069, size.height * 0.2121452);
    path330.lineTo(size.width * 0.4717737, size.height * 0.2621690);
    path330.close();

    Paint paint330fill = Paint()..style = PaintingStyle.fill;
    paint330fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path330, paint330fill);

    Path path331 = Path();
    path331.moveTo(size.width * 0.4737755, size.height * 0.2027113);
    path331.lineTo(size.width * 0.4773789, size.height * 0.2051689);
    path331.arcToPoint(Offset(size.width * 0.4750434, size.height * 0.2051689),
        radius: Radius.elliptical(
            size.width * 0.002335513, size.height * 0.002774695),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path331.lineTo(size.width * 0.4714400, size.height * 0.2026320);
    path331.arcToPoint(Offset(size.width * 0.4737755, size.height * 0.2027113),
        radius: Radius.elliptical(
            size.width * 0.002468971, size.height * 0.002933249),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path331.close();

    Paint paint331fill = Paint()..style = PaintingStyle.fill;
    paint331fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path331, paint331fill);

    Path path332 = Path();
    path332.moveTo(size.width * 0.4749099, size.height * 0.2054860);
    path332.lineTo(size.width * 0.4713066, size.height * 0.2029491);
    path332.lineTo(size.width * 0.4720406, size.height * 0.2029491);
    path332.lineTo(size.width * 0.4756439, size.height * 0.2054067);
    path332.lineTo(size.width * 0.4749099, size.height * 0.2058031);
    path332.close();

    Paint paint332fill = Paint()..style = PaintingStyle.fill;
    paint332fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path332, paint332fill);

    Path path333 = Path();
    path333.moveTo(size.width * 0.4756439, size.height * 0.2050896);
    path333.lineTo(size.width * 0.4720406, size.height * 0.2026320);
    path333.arcToPoint(Offset(size.width * 0.4730415, size.height * 0.2026320),
        radius: Radius.elliptical(
            size.width * 0.001801682, size.height * 0.002140479),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path333.lineTo(size.width * 0.4766449, size.height * 0.2050896);
    path333.arcToPoint(Offset(size.width * 0.4756439, size.height * 0.2050896),
        radius: Radius.elliptical(
            size.width * 0.002735887, size.height * 0.003250357),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path333.close();

    Paint paint333fill = Paint()..style = PaintingStyle.fill;
    paint333fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path333, paint333fill);

    Path path334 = Path();
    path334.moveTo(size.width * 0.4766449, size.height * 0.2049310);
    path334.lineTo(size.width * 0.4730415, size.height * 0.2024734);
    path334.arcToPoint(Offset(size.width * 0.4736421, size.height * 0.2024734),
        radius: Radius.elliptical(
            size.width * 0.001267850, size.height * 0.001506263),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path334.lineTo(size.width * 0.4772454, size.height * 0.2049310);
    path334.lineTo(size.width * 0.4766449, size.height * 0.2049310);
    path334.close();

    Paint paint334fill = Paint()..style = PaintingStyle.fill;
    paint334fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path334, paint334fill);

    Path path335 = Path();
    path335.moveTo(size.width * 0.4717069, size.height * 0.2121452);
    path335.lineTo(size.width * 0.4681036, size.height * 0.2096876);
    path335.arcToPoint(Offset(size.width * 0.4713066, size.height * 0.2029491),
        radius: Radius.elliptical(
            size.width * 0.007273455, size.height * 0.008641192),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path335.lineTo(size.width * 0.4749099, size.height * 0.2054860);
    path335.arcToPoint(Offset(size.width * 0.4717069, size.height * 0.2121452),
        radius: Radius.elliptical(
            size.width * 0.007006539, size.height * 0.008324084),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path335.close();

    Paint paint335fill = Paint()..style = PaintingStyle.fill;
    paint335fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path335, paint335fill);

    Path path336 = Path();
    path336.moveTo(size.width * 0.4717069, size.height * 0.2121452);
    path336.lineTo(size.width * 0.4681036, size.height * 0.2096876);
    path336.arcToPoint(Offset(size.width * 0.4681036, size.height * 0.2085778),
        radius: Radius.elliptical(
            size.width * 0.004404111, size.height * 0.005232282),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path336.lineTo(size.width * 0.4717069, size.height * 0.2110354);
    path336.arcToPoint(Offset(size.width * 0.4717069, size.height * 0.2121452),
        radius: Radius.elliptical(
            size.width * 0.004737755, size.height * 0.005628667),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path336.close();

    Paint paint336fill = Paint()..style = PaintingStyle.fill;
    paint336fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path336, paint336fill);

    Path path337 = Path();
    path337.moveTo(size.width * 0.4717737, size.height * 0.2110354);
    path337.lineTo(size.width * 0.4681703, size.height * 0.2085778);
    path337.arcToPoint(Offset(size.width * 0.4685707, size.height * 0.2069130),
        radius: Radius.elliptical(
            size.width * 0.005538503, size.height * 0.006579990),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path337.lineTo(size.width * 0.4721740, size.height * 0.2093705);
    path337.arcToPoint(Offset(size.width * 0.4717737, size.height * 0.2110354),
        radius: Radius.elliptical(
            size.width * 0.005538503, size.height * 0.006579990),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path337.close();

    Paint paint337fill = Paint()..style = PaintingStyle.fill;
    paint337fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path337, paint337fill);

    Path path338 = Path();
    path338.moveTo(size.width * 0.4721740, size.height * 0.2093705);
    path338.lineTo(size.width * 0.4685707, size.height * 0.2069130);
    path338.arcToPoint(Offset(size.width * 0.4693047, size.height * 0.2054067),
        radius: Radius.elliptical(
            size.width * 0.007874016, size.height * 0.009354685),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path338.lineTo(size.width * 0.4729080, size.height * 0.2078643);
    path338.lineTo(size.width * 0.4721740, size.height * 0.2093705);
    path338.close();

    Paint paint338fill = Paint()..style = PaintingStyle.fill;
    paint338fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path338, paint338fill);

    Path path339 = Path();
    path339.moveTo(size.width * 0.4729080, size.height * 0.2078643);
    path339.lineTo(size.width * 0.4693047, size.height * 0.2054067);
    path339.arcToPoint(Offset(size.width * 0.4704391, size.height * 0.2037419),
        radius: Radius.elliptical(
            size.width * 0.008007474, size.height * 0.009513239),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path339.lineTo(size.width * 0.4737755, size.height * 0.2061202);
    path339.arcToPoint(Offset(size.width * 0.4726411, size.height * 0.2077850),
        radius: Radius.elliptical(
            size.width * 0.008007474, size.height * 0.009513239),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path339.close();

    Paint paint339fill = Paint()..style = PaintingStyle.fill;
    paint339fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path339, paint339fill);

    Path path340 = Path();
    path340.moveTo(size.width * 0.4737755, size.height * 0.2061202);
    path340.lineTo(size.width * 0.4701722, size.height * 0.2036626);
    path340.lineTo(size.width * 0.4710396, size.height * 0.2028698);
    path340.lineTo(size.width * 0.4746430, size.height * 0.2054067);
    path340.lineTo(size.width * 0.4737755, size.height * 0.2061202);
    path340.close();

    Paint paint340fill = Paint()..style = PaintingStyle.fill;
    paint340fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path340, paint340fill);

    Path path341 = Path();
    path341.moveTo(size.width * 0.4749099, size.height * 0.2054860);
    path341.cubicTo(
        size.width * 0.4767116,
        size.height * 0.2042175,
        size.width * 0.4781796,
        size.height * 0.2054860,
        size.width * 0.4781796,
        size.height * 0.2077057);
    path341.lineTo(size.width * 0.4781796, size.height * 0.2576502);
    path341.arcToPoint(Offset(size.width * 0.4749766, size.height * 0.2643888),
        radius: Radius.elliptical(
            size.width * 0.007273455, size.height * 0.008641192),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path341.cubicTo(
        size.width * 0.4731750,
        size.height * 0.2655779,
        size.width * 0.4717069,
        size.height * 0.2643888,
        size.width * 0.4716402,
        size.height * 0.2621690);
    path341.lineTo(size.width * 0.4716402, size.height * 0.2121452);
    path341.arcToPoint(Offset(size.width * 0.4749099, size.height * 0.2054860),
        radius: Radius.elliptical(
            size.width * 0.007006539, size.height * 0.008324084),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path341.close();

    Paint paint341fill = Paint()..style = PaintingStyle.fill;
    paint341fill.color = Color(0xffc2c3d0).withOpacity(1.0);
    canvas.drawPath(path341, paint341fill);

    Path path342 = Path();
    path342.moveTo(size.width * 0.4761778, size.height * 0.2562232);
    path342.lineTo(size.width * 0.4769785, size.height * 0.2567782);
    path342.arcToPoint(Offset(size.width * 0.4755772, size.height * 0.2567782),
        radius: Radius.elliptical(
            size.width * 0.001534766, size.height * 0.001823371),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path342.lineTo(size.width * 0.4747765, size.height * 0.2562232);
    path342.arcToPoint(Offset(size.width * 0.4761778, size.height * 0.2562232),
        radius: Radius.elliptical(
            size.width * 0.001534766, size.height * 0.001823371),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path342.close();

    Paint paint342fill = Paint()..style = PaintingStyle.fill;
    paint342fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path342, paint342fill);

    Path path343 = Path();
    path343.moveTo(size.width * 0.4755772, size.height * 0.2569367);
    path343.lineTo(size.width * 0.4747765, size.height * 0.2563818);
    path343.arcToPoint(Offset(size.width * 0.4759109, size.height * 0.2563818),
        radius: Radius.elliptical(
            size.width * 0.001801682, size.height * 0.002140479),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path343.lineTo(size.width * 0.4767116, size.height * 0.2569367);
    path343.arcToPoint(Offset(size.width * 0.4755772, size.height * 0.2569367),
        radius: Radius.elliptical(
            size.width * 0.001801682, size.height * 0.002140479),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path343.close();

    Paint paint343fill = Paint()..style = PaintingStyle.fill;
    paint343fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path343, paint343fill);

    Path path344 = Path();
    path344.moveTo(size.width * 0.4767116, size.height * 0.2566989);
    path344.lineTo(size.width * 0.4759109, size.height * 0.2561440);
    path344.lineTo(size.width * 0.4759109, size.height * 0.2561440);
    path344.lineTo(size.width * 0.4767116, size.height * 0.2566989);
    path344.close();

    Paint paint344fill = Paint()..style = PaintingStyle.fill;
    paint344fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path344, paint344fill);

    Path path345 = Path();
    path345.moveTo(size.width * 0.4742426, size.height * 0.2624861);
    path345.lineTo(size.width * 0.4733752, size.height * 0.2616141);
    path345.arcToPoint(Offset(size.width * 0.4728413, size.height * 0.2601078),
        radius: Radius.elliptical(
            size.width * 0.001534766, size.height * 0.001823371),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path345.arcToPoint(Offset(size.width * 0.4747765, size.height * 0.2560647),
        radius: Radius.elliptical(
            size.width * 0.004404111, size.height * 0.005232282),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path345.lineTo(size.width * 0.4755772, size.height * 0.2566196);
    path345.arcToPoint(Offset(size.width * 0.4736421, size.height * 0.2606628),
        radius: Radius.elliptical(
            size.width * 0.004404111, size.height * 0.005232282),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path345.arcToPoint(Offset(size.width * 0.4742426, size.height * 0.2624861),
        radius: Radius.elliptical(
            size.width * 0.001401308, size.height * 0.001664817),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path345.close();

    Paint paint345fill = Paint()..style = PaintingStyle.fill;
    paint345fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path345, paint345fill);

    Path path346 = Path();
    path346.moveTo(size.width * 0.4742426, size.height * 0.2624861);
    path346.lineTo(size.width * 0.4733752, size.height * 0.2616141);
    path346.arcToPoint(Offset(size.width * 0.4728413, size.height * 0.2601078),
        radius: Radius.elliptical(
            size.width * 0.001534766, size.height * 0.001823371),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path346.arcToPoint(Offset(size.width * 0.4733752, size.height * 0.2579673),
        radius: Radius.elliptical(
            size.width * 0.003536634, size.height * 0.004201681),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path346.lineTo(size.width * 0.4741759, size.height * 0.2585223);
    path346.arcToPoint(Offset(size.width * 0.4736421, size.height * 0.2606628),
        radius: Radius.elliptical(
            size.width * 0.003536634, size.height * 0.004201681),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path346.arcToPoint(Offset(size.width * 0.4742426, size.height * 0.2621690),
        radius: Radius.elliptical(
            size.width * 0.001401308, size.height * 0.001664817),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path346.close();

    Paint paint346fill = Paint()..style = PaintingStyle.fill;
    paint346fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path346, paint346fill);

    Path path347 = Path();
    path347.moveTo(size.width * 0.4741759, size.height * 0.2588394);
    path347.lineTo(size.width * 0.4733752, size.height * 0.2582844);
    path347.arcToPoint(Offset(size.width * 0.4747765, size.height * 0.2563818),
        radius: Radius.elliptical(
            size.width * 0.004137195, size.height * 0.004915174),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path347.lineTo(size.width * 0.4755772, size.height * 0.2569367);
    path347.arcToPoint(Offset(size.width * 0.4741759, size.height * 0.2588394),
        radius: Radius.elliptical(
            size.width * 0.004137195, size.height * 0.004915174),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path347.close();

    Paint paint347fill = Paint()..style = PaintingStyle.fill;
    paint347fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path347, paint347fill);

    Path path348 = Path();
    path348.moveTo(size.width * 0.4755772, size.height * 0.2569367);
    path348.arcToPoint(Offset(size.width * 0.4775123, size.height * 0.2582844),
        radius: Radius.elliptical(
            size.width * 0.001201121, size.height * 0.001426986),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path348.arcToPoint(Offset(size.width * 0.4755772, size.height * 0.2622483),
        radius: Radius.elliptical(
            size.width * 0.004203924, size.height * 0.004994451),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path348.cubicTo(
        size.width * 0.4745095,
        size.height * 0.2630411,
        size.width * 0.4736421,
        size.height * 0.2622483,
        size.width * 0.4736421,
        size.height * 0.2609799);
    path348.arcToPoint(Offset(size.width * 0.4755772, size.height * 0.2569367),
        radius: Radius.elliptical(
            size.width * 0.004404111, size.height * 0.005232282),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path348.close();

    Paint paint348fill = Paint()..style = PaintingStyle.fill;
    paint348fill.color = Color(0xff252529).withOpacity(1.0);
    canvas.drawPath(path348, paint348fill);

    Path path349 = Path();
    path349.moveTo(size.width * 0.5880155, size.height * 0.1279531);
    path349.lineTo(size.width * 0.6071667, size.height * 0.09362613);
    path349.lineTo(size.width * 0.6071667, size.height * 0.3364516);
    path349.lineTo(size.width * 0.5886160, size.height * 0.3491359);
    path349.lineTo(size.width * 0.5880155, size.height * 0.1279531);
    path349.close();

    Paint paint349fill = Paint()..style = PaintingStyle.fill;
    paint349fill.color = Color(0xffc2c3d0).withOpacity(1.0);
    canvas.drawPath(path349, paint349fill);

    Path path350 = Path();
    path350.moveTo(size.width * 0.3955025, size.height * 0.2387823);
    path350.lineTo(size.width * 0.4140531, size.height * 0.2472649);
    path350.lineTo(size.width * 0.4140531, size.height * 0.4689234);
    path350.lineTo(size.width * 0.3955025, size.height * 0.4816077);
    path350.lineTo(size.width * 0.3955025, size.height * 0.2387823);
    path350.close();

    Paint paint350fill = Paint()..style = PaintingStyle.fill;
    paint350fill.color = Color(0xffc2c3d0).withOpacity(1.0);
    canvas.drawPath(path350, paint350fill);

    Path path351 = Path();
    path351.moveTo(size.width * 0.3955025, size.height * 0.2600285);
    path351.lineTo(size.width * 0.3955025, size.height * 0.2387823);
    path351.lineTo(size.width * 0.6071667, size.height * 0.09362613);
    path351.lineTo(size.width * 0.6071667, size.height * 0.1147931);
    path351.lineTo(size.width * 0.3955025, size.height * 0.2600285);
    path351.close();

    Paint paint351fill = Paint()..style = PaintingStyle.fill;
    paint351fill.color = Color(0xffc2c3d0).withOpacity(1.0);
    canvas.drawPath(path351, paint351fill);

    Path path352 = Path();
    path352.moveTo(size.width * 0.2589083, size.height * 0.3882987);
    path352.lineTo(size.width * 0.2589083, size.height * 0.1453147);
    path352.lineTo(size.width * 0.3955025, size.height * 0.2387823);
    path352.lineTo(size.width * 0.3955025, size.height * 0.4816077);
    path352.lineTo(size.width * 0.2589083, size.height * 0.3882987);
    path352.close();

    Paint paint352fill = Paint()..style = PaintingStyle.fill;
    paint352fill.color = Color(0xffe0e2ea).withOpacity(1.0);
    canvas.drawPath(path352, paint352fill);

    Path path353 = Path();
    path353.moveTo(size.width * 0.3955025, size.height * 0.2387823);
    path353.lineTo(size.width * 0.2589083, size.height * 0.1453147);
    path353.lineTo(size.width * 0.4707060, 0);
    path353.lineTo(size.width * 0.6071667, size.height * 0.09362613);
    path353.lineTo(size.width * 0.3955025, size.height * 0.2387823);
    path353.close();

    Paint paint353fill = Paint()..style = PaintingStyle.fill;
    paint353fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path353, paint353fill);

    Path path354 = Path();
    path354.moveTo(size.width * 0.3680769, size.height * 0.2583637);
    path354.lineTo(size.width * 0.3766849, size.height * 0.2524972);
    path354.lineTo(size.width * 0.3764180, size.height * 0.3515142);
    path354.lineTo(size.width * 0.3678767, size.height * 0.3573807);
    path354.lineTo(size.width * 0.3680769, size.height * 0.2583637);
    path354.close();

    Paint paint354fill = Paint()..style = PaintingStyle.fill;
    paint354fill.color = Color(0xff424242).withOpacity(1.0);
    canvas.drawPath(path354, paint354fill);

    Path path355 = Path();
    path355.moveTo(size.width * 0.2758575, size.height * 0.1951007);
    path355.lineTo(size.width * 0.2844655, size.height * 0.1892342);
    path355.lineTo(size.width * 0.3766849, size.height * 0.2524972);
    path355.lineTo(size.width * 0.3680769, size.height * 0.2583637);
    path355.lineTo(size.width * 0.2758575, size.height * 0.1951007);
    path355.close();

    Paint paint355fill = Paint()..style = PaintingStyle.fill;
    paint355fill.color = Color(0xff494949).withOpacity(1.0);
    canvas.drawPath(path355, paint355fill);

    Path path356 = Path();
    path356.moveTo(size.width * 0.3618711, size.height * 0.2620897);
    path356.lineTo(size.width * 0.3616709, size.height * 0.3444585);
    path356.lineTo(size.width * 0.2815294, size.height * 0.2895196);
    path356.lineTo(size.width * 0.2817296, size.height * 0.2071508);
    path356.lineTo(size.width * 0.3618711, size.height * 0.2620897);
    path356.close();

    Paint paint356fill = Paint()..style = PaintingStyle.fill;
    paint356fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path356, paint356fill);

    Path path357 = Path();
    path357.moveTo(size.width * 0.3211664, size.height * 0.2412399);
    path357.lineTo(size.width * 0.3210997, size.height * 0.2806406);
    path357.lineTo(size.width * 0.2867343, size.height * 0.2570953);
    path357.lineTo(size.width * 0.2868677, size.height * 0.2176153);
    path357.lineTo(size.width * 0.3211664, size.height * 0.2412399);
    path357.close();

    Paint paint357fill = Paint()..style = PaintingStyle.fill;
    paint357fill.color = Color(0xff117488).withOpacity(1.0);
    canvas.drawPath(path357, paint357fill);

    Path path358 = Path();
    path358.moveTo(size.width * 0.3336447, size.height * 0.2480577);
    path358.arcToPoint(Offset(size.width * 0.3393167, size.height * 0.2597907),
        radius: Radius.elliptical(
            size.width * 0.01254504, size.height * 0.01490407),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path358.cubicTo(
        size.width * 0.3393167,
        size.height * 0.2640717,
        size.width * 0.3367810,
        size.height * 0.2658158,
        size.width * 0.3336447,
        size.height * 0.2636753);
    path358.arcToPoint(Offset(size.width * 0.3279060, size.height * 0.2519423),
        radius: Radius.elliptical(
            size.width * 0.01254504, size.height * 0.01490407),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path358.cubicTo(
        size.width * 0.3277059,
        size.height * 0.2476613,
        size.width * 0.3303083,
        size.height * 0.2457587,
        size.width * 0.3336447,
        size.height * 0.2480577);
    path358.close();

    Paint paint358fill = Paint()..style = PaintingStyle.fill;
    paint358fill.color = Color(0xffffd100).withOpacity(1.0);
    canvas.drawPath(path358, paint358fill);

    Path path359 = Path();
    path359.moveTo(size.width * 0.3509275, size.height * 0.2594736);
    path359.arcToPoint(Offset(size.width * 0.3565995, size.height * 0.2711273),
        radius: Radius.elliptical(
            size.width * 0.01247831, size.height * 0.01482480),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path359.cubicTo(
        size.width * 0.3565995,
        size.height * 0.2754876,
        size.width * 0.3539971,
        size.height * 0.2772316,
        size.width * 0.3508608,
        size.height * 0.2750119);
    path359.arcToPoint(Offset(size.width * 0.3451888, size.height * 0.2633582),
        radius: Radius.elliptical(
            size.width * 0.01247831, size.height * 0.01482480),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path359.cubicTo(
        size.width * 0.3451888,
        size.height * 0.2589979,
        size.width * 0.3477913,
        size.height * 0.2572538,
        size.width * 0.3509275,
        size.height * 0.2594736);
    path359.close();

    Paint paint359fill = Paint()..style = PaintingStyle.fill;
    paint359fill.color = Color(0xffffd100).withOpacity(1.0);
    canvas.drawPath(path359, paint359fill);

    Path path360 = Path();
    path360.moveTo(size.width * 0.3335113, size.height * 0.2712066);
    path360.lineTo(size.width * 0.3335113, size.height * 0.2835738);
    path360.lineTo(size.width * 0.3244361, size.height * 0.2773109);
    path360.lineTo(size.width * 0.3244361, size.height * 0.2649437);
    path360.lineTo(size.width * 0.3335113, size.height * 0.2712066);
    path360.close();

    Paint paint360fill = Paint()..style = PaintingStyle.fill;
    paint360fill.color = Color(0xff252529).withOpacity(1.0);
    canvas.drawPath(path360, paint360fill);

    Path path361 = Path();
    path361.moveTo(size.width * 0.3450554, size.height * 0.2787379);
    path361.lineTo(size.width * 0.3450554, size.height * 0.2911051);
    path361.lineTo(size.width * 0.3359802, size.height * 0.2849215);
    path361.lineTo(size.width * 0.3359802, size.height * 0.2725543);
    path361.lineTo(size.width * 0.3450554, size.height * 0.2787379);
    path361.close();

    Paint paint361fill = Paint()..style = PaintingStyle.fill;
    paint361fill.color = Color(0xff252529).withOpacity(1.0);
    canvas.drawPath(path361, paint361fill);

    Path path362 = Path();
    path362.moveTo(size.width * 0.3573335, size.height * 0.2868242);
    path362.lineTo(size.width * 0.3572668, size.height * 0.2991914);
    path362.lineTo(size.width * 0.3482584, size.height * 0.2930078);
    path362.lineTo(size.width * 0.3482584, size.height * 0.2806406);
    path362.lineTo(size.width * 0.3573335, size.height * 0.2868242);
    path362.close();

    Paint paint362fill = Paint()..style = PaintingStyle.fill;
    paint362fill.color = Color(0xff252529).withOpacity(1.0);
    canvas.drawPath(path362, paint362fill);

    Path path363 = Path();
    path363.moveTo(size.width * 0.2960763, size.height * 0.2749326);
    path363.lineTo(size.width * 0.2960096, size.height * 0.2872998);
    path363.lineTo(size.width * 0.2870012, size.height * 0.2810369);
    path363.lineTo(size.width * 0.2870012, size.height * 0.2687490);
    path363.lineTo(size.width * 0.2960763, size.height * 0.2749326);
    path363.close();

    Paint paint363fill = Paint()..style = PaintingStyle.fill;
    paint363fill.color = Color(0xff252529).withOpacity(1.0);
    canvas.drawPath(path363, paint363fill);

    Path path364 = Path();
    path364.moveTo(size.width * 0.3076204, size.height * 0.2824639);
    path364.lineTo(size.width * 0.3075537, size.height * 0.2948311);
    path364.lineTo(size.width * 0.2985453, size.height * 0.2886475);
    path364.lineTo(size.width * 0.2985453, size.height * 0.2762803);
    path364.lineTo(size.width * 0.3076204, size.height * 0.2824639);
    path364.close();

    Paint paint364fill = Paint()..style = PaintingStyle.fill;
    paint364fill.color = Color(0xff252529).withOpacity(1.0);
    canvas.drawPath(path364, paint364fill);

    Path path365 = Path();
    path365.moveTo(size.width * 0.3198318, size.height * 0.2905502);
    path365.lineTo(size.width * 0.3198318, size.height * 0.3029174);
    path365.lineTo(size.width * 0.3107567, size.height * 0.2967338);
    path365.lineTo(size.width * 0.3108234, size.height * 0.2843666);
    path365.lineTo(size.width * 0.3198318, size.height * 0.2905502);
    path365.close();

    Paint paint365fill = Paint()..style = PaintingStyle.fill;
    paint365fill.color = Color(0xff252529).withOpacity(1.0);
    canvas.drawPath(path365, paint365fill);

    Path path366 = Path();
    path366.moveTo(size.width * 0.3315761, size.height * 0.2986364);
    path366.lineTo(size.width * 0.3315761, size.height * 0.3110036);
    path366.lineTo(size.width * 0.3225010, size.height * 0.3047408);
    path366.lineTo(size.width * 0.3225677, size.height * 0.2923736);
    path366.lineTo(size.width * 0.3315761, size.height * 0.2986364);
    path366.close();

    Paint paint366fill = Paint()..style = PaintingStyle.fill;
    paint366fill.color = Color(0xff252529).withOpacity(1.0);
    canvas.drawPath(path366, paint366fill);

    Path path367 = Path();
    path367.moveTo(size.width * 0.3431202, size.height * 0.3061678);
    path367.lineTo(size.width * 0.3431202, size.height * 0.3185350);
    path367.lineTo(size.width * 0.3340451, size.height * 0.3123514);
    path367.lineTo(size.width * 0.3341118, size.height * 0.2999841);
    path367.lineTo(size.width * 0.3431202, size.height * 0.3061678);
    path367.close();

    Paint paint367fill = Paint()..style = PaintingStyle.fill;
    paint367fill.color = Color(0xff252529).withOpacity(1.0);
    canvas.drawPath(path367, paint367fill);

    Path path368 = Path();
    path368.moveTo(size.width * 0.3553984, size.height * 0.3142540);
    path368.lineTo(size.width * 0.3553316, size.height * 0.3266212);
    path368.lineTo(size.width * 0.3463232, size.height * 0.3203583);
    path368.lineTo(size.width * 0.3463232, size.height * 0.3079911);
    path368.lineTo(size.width * 0.3553984, size.height * 0.3142540);
    path368.close();

    Paint paint368fill = Paint()..style = PaintingStyle.fill;
    paint368fill.color = Color(0xff252529).withOpacity(1.0);
    canvas.drawPath(path368, paint368fill);

    Path path369 = Path();
    path369.moveTo(size.width * 0.3219672, size.height * 0.3584906);
    path369.lineTo(size.width * 0.3409182, size.height * 0.4166006);
    path369.arcToPoint(Offset(size.width * 0.3359135, size.height * 0.4216743),
        radius: Radius.elliptical(
            size.width * 0.003469905, size.height * 0.004122404),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path369.lineTo(size.width * 0.2980115, size.height * 0.3956715);
    path369.arcToPoint(Offset(size.width * 0.2968771, size.height * 0.3896464),
        radius: Radius.elliptical(
            size.width * 0.003469905, size.height * 0.004122404),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path369.lineTo(size.width * 0.3158281, size.height * 0.3579356);
    path369.arcToPoint(Offset(size.width * 0.3219672, size.height * 0.3584906),
        radius: Radius.elliptical(
            size.width * 0.003536634, size.height * 0.004201681),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path369.close();

    Paint paint369fill = Paint()..style = PaintingStyle.fill;
    paint369fill.color = Color(0xffffd100).withOpacity(1.0);
    canvas.drawPath(path369, paint369fill);

    Path path370 = Path();
    path370.moveTo(size.width * 0.3376485, size.height * 0.4234184);
    path370.arcToPoint(Offset(size.width * 0.3354464, size.height * 0.4227049),
        radius: Radius.elliptical(
            size.width * 0.004404111, size.height * 0.005232282),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path370.lineTo(size.width * 0.2974776, size.height * 0.3963850);
    path370.arcToPoint(Offset(size.width * 0.2953423, size.height * 0.3928968),
        radius: Radius.elliptical(
            size.width * 0.004737755, size.height * 0.005628667),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path370.arcToPoint(Offset(size.width * 0.2960763, size.height * 0.3886951),
        radius: Radius.elliptical(
            size.width * 0.004470839, size.height * 0.005311559),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path370.lineTo(size.width * 0.3150274, size.height * 0.3569843);
    path370.arcToPoint(Offset(size.width * 0.3192313, size.height * 0.3547645),
        radius: Radius.elliptical(
            size.width * 0.004270653, size.height * 0.005073728),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path370.arcToPoint(Offset(size.width * 0.3229014, size.height * 0.3580942),
        radius: Radius.elliptical(
            size.width * 0.004337382, size.height * 0.005153005),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path370.lineTo(size.width * 0.3418524, size.height * 0.4161249);
    path370.arcToPoint(Offset(size.width * 0.3405845, size.height * 0.4221500),
        radius: Radius.elliptical(
            size.width * 0.004537568, size.height * 0.005390836),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path370.arcToPoint(Offset(size.width * 0.3376485, size.height * 0.4234184),
        radius: Radius.elliptical(
            size.width * 0.004404111, size.height * 0.005232282),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path370.close();
    path370.moveTo(size.width * 0.3186975, size.height * 0.3567465);
    path370.arcToPoint(Offset(size.width * 0.3166289, size.height * 0.3580149),
        radius: Radius.elliptical(
            size.width * 0.002535700, size.height * 0.003012526),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path370.lineTo(size.width * 0.2976778, size.height * 0.3901221);
    path370.arcToPoint(Offset(size.width * 0.2972775, size.height * 0.3925004),
        radius: Radius.elliptical(
            size.width * 0.002402242, size.height * 0.002853972),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path370.arcToPoint(Offset(size.width * 0.2984786, size.height * 0.3944030),
        radius: Radius.elliptical(
            size.width * 0.002402242, size.height * 0.002853972),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path370.lineTo(size.width * 0.3363806, size.height * 0.4204852);
    path370.arcToPoint(Offset(size.width * 0.3403176, size.height * 0.4169970),
        radius: Radius.elliptical(
            size.width * 0.002535700, size.height * 0.003012526),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path370.lineTo(size.width * 0.3213666, size.height * 0.3588870);
    path370.arcToPoint(Offset(size.width * 0.3192980, size.height * 0.3570636),
        radius: Radius.elliptical(
            size.width * 0.002468971, size.height * 0.002933249),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path370.close();

    Paint paint370fill = Paint()..style = PaintingStyle.fill;
    paint370fill.color = Color(0xff1a191d).withOpacity(1.0);
    canvas.drawPath(path370, paint370fill);

    Path path371 = Path();
    path371.moveTo(size.width * 0.3225677, size.height * 0.3747423);
    path371.lineTo(size.width * 0.3220339, size.height * 0.3981291);
    path371.lineTo(size.width * 0.3172961, size.height * 0.3948787);
    path371.lineTo(size.width * 0.3166289, size.height * 0.3706992);
    path371.close();
    path371.moveTo(size.width * 0.3225677, size.height * 0.4059775);
    path371.cubicTo(
        size.width * 0.3225677,
        size.height * 0.4066117,
        size.width * 0.3225677,
        size.height * 0.4067703,
        size.width * 0.3218337,
        size.height * 0.4064531);
    path371.lineTo(size.width * 0.3178300, size.height * 0.4043127);
    path371.arcToPoint(Offset(size.width * 0.3170960, size.height * 0.4028064),
        radius: Radius.elliptical(
            size.width * 0.001401308, size.height * 0.001664817),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path371.lineTo(size.width * 0.3170960, size.height * 0.3971777);
    path371.cubicTo(
        size.width * 0.3170960,
        size.height * 0.3965435,
        size.width * 0.3170960,
        size.height * 0.3962264,
        size.width * 0.3178300,
        size.height * 0.3966228);
    path371.lineTo(size.width * 0.3215668, size.height * 0.3991597);
    path371.arcToPoint(Offset(size.width * 0.3223008, size.height * 0.4008245),
        radius: Radius.elliptical(
            size.width * 0.001601495, size.height * 0.001902648),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path371.close();

    Paint paint371fill = Paint()..style = PaintingStyle.fill;
    paint371fill.color = Color(0xff252529).withOpacity(1.0);
    canvas.drawPath(path371, paint371fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
