import 'package:flutter/material.dart';

Widget usersIconColor({@required double xwidth}) {
  return CustomPaint(
    size: Size(xwidth, (xwidth * 1.1953504119173908).toDouble()),
    painter: UsersIconColor(),
  );
}

class UsersIconColor extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path0 = Path();
    path0.moveTo(size.width, size.height * 0.9288142);
    path0.lineTo(size.width * 0.5278185, size.height * 0.9992447);
    path0.lineTo(0, size.height * 0.9288142);
    path0.cubicTo(
        0,
        size.height * 0.9288142,
        size.width * 0.1739081,
        size.height * 0.8194864,
        size.width * 0.2197269,
        size.height * 0.7862538);
    path0.cubicTo(
        size.width * 0.2655456,
        size.height * 0.7530211,
        size.width * 0.3112516,
        size.height * 0.7246035,
        size.width * 0.3313396,
        size.height * 0.6958082);
    path0.cubicTo(
        size.width * 0.3364180,
        size.height * 0.6886329,
        size.width * 0.3409322,
        size.height * 0.6819298,
        size.width * 0.3447692,
        size.height * 0.6753210);
    path0.lineTo(size.width * 0.3447692, size.height * 0.6753210);
    path0.arcToPoint(Offset(size.width * 0.3571832, size.height * 0.6136707),
        radius:
            Radius.elliptical(size.width * 0.1145469, size.height * 0.09582704),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path0.arcToPoint(Offset(size.width * 0.3498476, size.height * 0.5947885),
        radius: Radius.elliptical(
            size.width * 0.08114208, size.height * 0.06788142),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path0.cubicTo(
        size.width * 0.3291954,
        size.height * 0.5585347,
        size.width * 0.2732197,
        size.height * 0.5216201,
        size.width * 0.2482790,
        size.height * 0.4541163);
    path0.cubicTo(
        size.width * 0.2384607,
        size.height * 0.4281533,
        size.width * 0.2271753,
        size.height * 0.3430891,
        size.width * 0.2271753,
        size.height * 0.3430891);
    path0.lineTo(size.width * 0.4617989, size.height * 0.2998489);
    path0.lineTo(size.width * 0.7335515, size.height * 0.2495279);
    path0.cubicTo(
        size.width * 0.7335515,
        size.height * 0.2495279,
        size.width * 0.7767746,
        size.height * 0.2967334,
        size.width * 0.7794831,
        size.height * 0.3124056);
    path0.cubicTo(
        size.width * 0.7821916,
        size.height * 0.3280778,
        size.width * 0.7626679,
        size.height * 0.3361971,
        size.width * 0.7665049,
        size.height * 0.3517749);
    path0.cubicTo(
        size.width * 0.7694391,
        size.height * 0.3638595,
        size.width * 0.8188692,
        size.height * 0.4111594,
        size.width * 0.8407629,
        size.height * 0.4316465);
    path0.arcToPoint(Offset(size.width * 0.8439228, size.height * 0.4403323),
        radius: Radius.elliptical(
            size.width * 0.01252680, size.height * 0.01047961),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path0.arcToPoint(Offset(size.width * 0.8379415, size.height * 0.4480740),
        radius: Radius.elliptical(
            size.width * 0.01309107, size.height * 0.01095166),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path0.lineTo(size.width * 0.7978783, size.height * 0.4687500);
    path0.lineTo(size.width * 0.8037468, size.height * 0.5040597);
    path0.lineTo(size.width * 0.7885115, size.height * 0.5179381);
    path0.lineTo(size.width * 0.7943799, size.height * 0.5345544);
    path0.lineTo(size.width * 0.7830945, size.height * 0.5534366);
    path0.cubicTo(
        size.width * 0.7923485,
        size.height * 0.5711858,
        size.width * 0.8037468,
        size.height * 0.5983761,
        size.width * 0.7943799,
        size.height * 0.6164086);
    path0.cubicTo(
        size.width * 0.7679720,
        size.height * 0.6699396,
        size.width * 0.6907798,
        size.height * 0.6215068,
        size.width * 0.6732874,
        size.height * 0.6979796);
    path0.cubicTo(
        size.width * 0.6700147,
        size.height * 0.7125189,
        size.width * 0.6834443,
        size.height * 0.7437689,
        size.width * 0.7071437,
        size.height * 0.7694486);
    path0.arcToPoint(Offset(size.width * 0.7355829, size.height * 0.7930514),
        radius:
            Radius.elliptical(size.width * 0.1481774, size.height * 0.1239615),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path0.cubicTo(
        size.width * 0.7758718,
        size.height * 0.8183535,
        size.width * 0.8923372,
        size.height * 0.8230740,
        size.width,
        size.height * 0.9288142);
    path0.close();

    Paint paint0fill = Paint()..style = PaintingStyle.fill;
    paint0fill.color = Color(0xfff7bc9a).withOpacity(1.0);
    canvas.drawPath(path0, paint0fill);

    Path path1 = Path();
    path1.moveTo(size.width * 0.5822142, size.height * 0.3908610);
    path1.cubicTo(
        size.width * 0.5889854,
        size.height * 0.3655589,
        size.width * 0.6160704,
        size.height * 0.3424282,
        size.width * 0.6386412,
        size.height * 0.3236405);
    path1.lineTo(size.width * 0.4614603, size.height * 0.2996601);
    path1.lineTo(size.width * 0.2268367, size.height * 0.3429003);
    path1.cubicTo(
        size.width * 0.2268367,
        size.height * 0.3429003,
        size.width * 0.2381221,
        size.height * 0.4278701,
        size.width * 0.2479404,
        size.height * 0.4539275);
    path1.cubicTo(
        size.width * 0.2722040,
        size.height * 0.5186934,
        size.width * 0.3156529,
        size.height * 0.5533421,
        size.width * 0.3375466,
        size.height * 0.5882742);
    path1.cubicTo(
        size.width * 0.3391265,
        size.height * 0.5910121,
        size.width * 0.3468006,
        size.height * 0.5954494,
        size.width * 0.3500734,
        size.height * 0.5943165);
    path1.arcToPoint(Offset(size.width * 0.3918294, size.height * 0.5537198),
        radius: Radius.elliptical(
            size.width * 0.06850243, size.height * 0.05730740),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path1.cubicTo(
        size.width * 0.3945379,
        size.height * 0.5379532,
        size.width * 0.3975849,
        size.height * 0.5185045,
        size.width * 0.3995034,
        size.height * 0.5006609);
    path1.cubicTo(
        size.width * 0.3976978,
        size.height * 0.4987727,
        size.width * 0.3960050,
        size.height * 0.4968844,
        size.width * 0.3943122,
        size.height * 0.4949018);
    path1.cubicTo(
        size.width * 0.3654215,
        size.height * 0.4594977,
        size.width * 0.3674529,
        size.height * 0.4160687,
        size.width * 0.3989392,
        size.height * 0.3980363);
    path1.cubicTo(
        size.width * 0.4304255,
        size.height * 0.3800038,
        size.width * 0.4700372,
        size.height * 0.3965257,
        size.width * 0.5044577,
        size.height * 0.4248489);
    path1.cubicTo(
        size.width * 0.5263514,
        size.height * 0.4427870,
        size.width * 0.5465523,
        size.height * 0.4601586,
        size.width * 0.5465523,
        size.height * 0.4601586);
    path1.lineTo(size.width * 0.5888726, size.height * 0.4531722);
    path1.cubicTo(
        size.width * 0.5888726,
        size.height * 0.4531722,
        size.width * 0.5755558,
        size.height * 0.4165408,
        size.width * 0.5822142,
        size.height * 0.3908610);
    path1.close();

    Paint paint1fill = Paint()..style = PaintingStyle.fill;
    paint1fill.color = Color(0xff363636).withOpacity(1.0);
    canvas.drawPath(path1, paint1fill);

    Path path2 = Path();
    path2.moveTo(size.width, size.height * 0.9288142);
    path2.lineTo(size.width * 0.5278185, size.height * 0.9992447);
    path2.lineTo(0, size.height * 0.9288142);
    path2.cubicTo(
        0,
        size.height * 0.9288142,
        size.width * 0.1739081,
        size.height * 0.8194864,
        size.width * 0.2197269,
        size.height * 0.7862538);
    path2.cubicTo(
        size.width * 0.2655456,
        size.height * 0.7530211,
        size.width * 0.3112516,
        size.height * 0.7246035,
        size.width * 0.3313396,
        size.height * 0.6958082);
    path2.cubicTo(
        size.width * 0.3364180,
        size.height * 0.6886329,
        size.width * 0.3409322,
        size.height * 0.6819298,
        size.width * 0.3447692,
        size.height * 0.6753210);
    path2.lineTo(size.width * 0.3447692, size.height * 0.6753210);
    path2.cubicTo(
        size.width * 0.4130459,
        size.height * 0.7689766,
        size.width * 0.6269044,
        size.height * 0.8349698,
        size.width * 0.7059023,
        size.height * 0.7689766);
    path2.lineTo(size.width * 0.7072565, size.height * 0.7689766);
    path2.arcToPoint(Offset(size.width * 0.7355829, size.height * 0.7930514),
        radius:
            Radius.elliptical(size.width * 0.1481774, size.height * 0.1239615),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path2.cubicTo(
        size.width * 0.7758718,
        size.height * 0.8183535,
        size.width * 0.8923372,
        size.height * 0.8230740,
        size.width,
        size.height * 0.9288142);
    path2.close();

    Paint paint2fill = Paint()..style = PaintingStyle.fill;
    paint2fill.color = Color(0xffaabcf2).withOpacity(1.0);
    canvas.drawPath(path2, paint2fill);

    Path path3 = Path();
    path3.moveTo(size.width * 0.5269157, size.height);
    path3.lineTo(size.width * 0.4374224, size.height * 0.9875378);
    path3.cubicTo(
        size.width * 0.4374224,
        size.height * 0.9875378,
        size.width * 0.3435278,
        size.height * 0.8375189,
        size.width * 0.1936576,
        size.height * 0.8041918);
    path3.cubicTo(
        size.width * 0.1909491,
        size.height * 0.8036254,
        size.width * 0.1919648,
        size.height * 0.7960725,
        size.width * 0.1936576,
        size.height * 0.7947508);
    path3.cubicTo(
        size.width * 0.2011060,
        size.height * 0.7890861,
        size.width * 0.2253696,
        size.height * 0.7715257,
        size.width * 0.2350750,
        size.height * 0.7647281);
    path3.arcToPoint(Offset(size.width * 0.2497461, size.height * 0.7610461),
        radius: Radius.elliptical(
            size.width * 0.02573073, size.height * 0.02152568),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path3.lineTo(size.width * 0.2548245, size.height * 0.7610461);
    path3.cubicTo(
        size.width * 0.3541361,
        size.height * 0.7458459,
        size.width * 0.5018621,
        size.height * 0.9147470,
        size.width * 0.5269157,
        size.height);
    path3.close();

    Paint paint3fill = Paint()..style = PaintingStyle.fill;
    paint3fill.color = Color(0xff2d497d).withOpacity(1.0);
    canvas.drawPath(path3, paint3fill);

    Path path4 = Path();
    path4.moveTo(size.width * 0.5479066, size.height * 0.3474320);
    path4.lineTo(size.width * 0.9117481, size.height * 0.2937122);
    path4.arcToPoint(Offset(size.width * 0.9421059, size.height * 0.2578361),
        radius: Radius.elliptical(
            size.width * 0.03735470, size.height * 0.03125000),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path4.arcToPoint(Offset(size.width * 0.9042997, size.height * 0.1962802),
        radius:
            Radius.elliptical(size.width * 0.1272994, size.height * 0.1064955),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path4.arcToPoint(Offset(size.width * 0.8781176, size.height * 0.1888218),
        radius: Radius.elliptical(
            size.width * 0.03791897, size.height * 0.03172205),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path4.lineTo(size.width * 0.5169845, size.height * 0.2013784);
    path4.cubicTo(
        size.width * 0.2242411,
        size.height * 0.2528323,
        size.width * 0.1292179,
        size.height * 0.2887085,
        size.width * 0.1383591,
        size.height * 0.3327039);
    path4.cubicTo(
        size.width * 0.1490802,
        size.height * 0.3827417,
        size.width * 0.3536847,
        size.height * 0.3817032,
        size.width * 0.5479066,
        size.height * 0.3474320);
    path4.close();

    Paint paint4fill = Paint()..style = PaintingStyle.fill;
    paint4fill.color = Color(0xffeb4e27).withOpacity(1.0);
    canvas.drawPath(path4, paint4fill);

    Path path5 = Path();
    path5.moveTo(size.width * 0.7733890, size.height * 0.2043051);
    path5.lineTo(size.width * 0.8785690, size.height * 0.2007175);
    path5.arcToPoint(Offset(size.width * 0.8862431, size.height * 0.2034554),
        radius: Radius.elliptical(
            size.width * 0.009818305, size.height * 0.008213746),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path5.arcToPoint(Offset(size.width * 0.9191965, size.height * 0.2608573),
        radius:
            Radius.elliptical(size.width * 0.1593500, size.height * 0.1333082),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path5.arcToPoint(Offset(size.width * 0.9111838, size.height * 0.2702983),
        radius: Radius.elliptical(
            size.width * 0.009705451, size.height * 0.008119335),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path5.lineTo(size.width * 0.4768085, size.height * 0.3344033);
    path5.close();

    Paint paint5fill = Paint()..style = PaintingStyle.fill;
    paint5fill.color = Color(0xffffb29f).withOpacity(1.0);
    canvas.drawPath(path5, paint5fill);

    Path path6 = Path();
    path6.moveTo(size.width * 0.1692811, size.height * 0.3148603);
    path6.cubicTo(
        size.width * 0.1869992,
        size.height * 0.3987915,
        size.width * 0.8053267,
        size.height * 0.3075906,
        size.width * 0.7876086,
        size.height * 0.2235650);
    path6.cubicTo(
        size.width * 0.7573637,
        size.height * 0.08072130,
        size.width * 0.6079449,
        size.height * -0.02294184,
        size.width * 0.4224128,
        size.height * 0.004437311);
    path6.cubicTo(
        size.width * 0.2368807,
        size.height * 0.03181647,
        size.width * 0.1389234,
        size.height * 0.1720166,
        size.width * 0.1692811,
        size.height * 0.3148603);
    path6.close();

    Paint paint6fill = Paint()..style = PaintingStyle.fill;
    paint6fill.color = Color(0xffeb4e27).withOpacity(1.0);
    canvas.drawPath(path6, paint6fill);

    Path path7 = Path();
    path7.moveTo(size.width * 0.7754204, size.height * 0.2592523);
    path7.arcToPoint(Offset(size.width * 0.7624422, size.height * 0.2517938),
        radius: Radius.elliptical(
            size.width * 0.01128541, size.height * 0.009441088),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path7.cubicTo(
        size.width * 0.7289245,
        size.height * 0.1038520,
        size.width * 0.5922582,
        size.height * 0.01661631,
        size.width * 0.4300869,
        size.height * 0.04059668);
    path7.arcToPoint(Offset(size.width * 0.4175601, size.height * 0.03294940),
        radius: Radius.elliptical(
            size.width * 0.01128541, size.height * 0.009441088),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path7.arcToPoint(Offset(size.width * 0.4267013, size.height * 0.02209215),
        radius: Radius.elliptical(
            size.width * 0.01128541, size.height * 0.009441088),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path7.cubicTo(
        size.width * 0.6011737,
        size.height * -0.003776435,
        size.width * 0.7485611,
        size.height * 0.08931269,
        size.width * 0.7845616,
        size.height * 0.2483006);
    path7.arcToPoint(Offset(size.width * 0.7756461, size.height * 0.2592523),
        radius: Radius.elliptical(
            size.width * 0.01128541, size.height * 0.009441088),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path7.close();

    Paint paint7fill = Paint()..style = PaintingStyle.fill;
    paint7fill.color = Color(0xffffb29f).withOpacity(1.0);
    canvas.drawPath(path7, paint7fill);

    Path path8 = Path();
    path8.moveTo(size.width * 0.2196140, size.height * 0.2962613);
    path8.lineTo(size.width * 0.2178084, size.height * 0.2962613);
    path8.arcToPoint(Offset(size.width * 0.2065230, size.height * 0.2868202),
        radius: Radius.elliptical(
            size.width * 0.01128541, size.height * 0.009441088),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path8.cubicTo(
        size.width * 0.2037016,
        size.height * 0.1677681,
        size.width * 0.2890193,
        size.height * 0.08364804,
        size.width * 0.4346011,
        size.height * 0.06221677);
    path8.cubicTo(
        size.width * 0.5397811,
        size.height * 0.04663897,
        size.width * 0.6302900,
        size.height * 0.07061934,
        size.width * 0.6893127,
        size.height * 0.1296261);
    path8.arcToPoint(Offset(size.width * 0.6721589, size.height * 0.1416163),
        radius: Radius.elliptical(
            size.width * 0.01128541, size.height * 0.009441088),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path8.cubicTo(
        size.width * 0.6184404,
        size.height * 0.08808535,
        size.width * 0.5354926,
        size.height * 0.06608761,
        size.width * 0.4385510,
        size.height * 0.08072130);
    path8.cubicTo(
        size.width * 0.3031261,
        size.height * 0.1007364,
        size.width * 0.2262724,
        size.height * 0.1758875,
        size.width * 0.2288681,
        size.height * 0.2869147);
    path8.arcToPoint(Offset(size.width * 0.2196140, size.height * 0.2962613),
        radius: Radius.elliptical(
            size.width * 0.01128541, size.height * 0.009441088),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path8.close();

    Paint paint8fill = Paint()..style = PaintingStyle.fill;
    paint8fill.color = Color(0xffbf3317).withOpacity(1.0);
    canvas.drawPath(path8, paint8fill);

    Path path9 = Path();
    path9.moveTo(size.width * 0.2451191, size.height * 0.3152379);
    path9.cubicTo(
        size.width * 0.2595644,
        size.height * 0.3841579,
        size.width * 0.7303916,
        size.height * 0.3152379,
        size.width * 0.7161720,
        size.height * 0.2457515);
    path9.cubicTo(
        size.width * 0.6914569,
        size.height * 0.1285876,
        size.width * 0.5727345,
        size.height * 0.09129532,
        size.width * 0.4447579,
        size.height * 0.1101775);
    path9.cubicTo(
        size.width * 0.3167814,
        size.height * 0.1290597,
        size.width * 0.2204040,
        size.height * 0.1982628,
        size.width * 0.2451191,
        size.height * 0.3152379);
    path9.close();

    Paint paint9fill = Paint()..style = PaintingStyle.fill;
    paint9fill.color = Color(0xffbf3317).withOpacity(1.0);
    canvas.drawPath(path9, paint9fill);

    Path path10 = Path();
    path10.moveTo(size.width * 0.7167363, size.height * 0.2793618);
    path10.lineTo(size.width * 0.6947297, size.height * 0.2220544);
    path10.lineTo(size.width * 0.6397698, size.height * 0.2439577);
    path10.lineTo(size.width * 0.6559079, size.height * 0.2988104);
    path10.lineTo(size.width * 0.7167363, size.height * 0.2793618);
    path10.close();

    Paint paint10fill = Paint()..style = PaintingStyle.fill;
    paint10fill.color = Color(0xffeb4e27).withOpacity(1.0);
    canvas.drawPath(path10, paint10fill);

    Path path11 = Path();
    path11.moveTo(size.width * 0.2583230, size.height * 0.3469600);
    path11.lineTo(size.width * 0.2555016, size.height * 0.2868202);
    path11.lineTo(size.width * 0.3161043, size.height * 0.2916352);
    path11.lineTo(size.width * 0.3236655, size.height * 0.3493202);
    path11.lineTo(size.width * 0.2583230, size.height * 0.3469600);
    path11.close();

    Paint paint11fill = Paint()..style = PaintingStyle.fill;
    paint11fill.color = Color(0xffeb4e27).withOpacity(1.0);
    canvas.drawPath(path11, paint11fill);

    Path path12 = Path();
    path12.moveTo(size.width * 0.4541248, size.height * 0.3403512);
    path12.lineTo(size.width * 0.4456608, size.height * 0.2817221);
    path12.lineTo(size.width * 0.4798555, size.height * 0.2767183);
    path12.lineTo(size.width * 0.5140503, size.height * 0.2716201);
    path12.lineTo(size.width * 0.5299628, size.height * 0.3291163);
    path12.lineTo(size.width * 0.4541248, size.height * 0.3403512);
    path12.close();

    Paint paint12fill = Paint()..style = PaintingStyle.fill;
    paint12fill.color = Color(0xffeb4e27).withOpacity(1.0);
    canvas.drawPath(path12, paint12fill);

    Path path13 = Path();
    path13.moveTo(size.width * 0.4420494, size.height * 0.1699396);
    path13.arcToPoint(Offset(size.width * 0.4541248, size.height * 0.1554003),
        radius: Radius.elliptical(
            size.width * 0.01500959, size.height * 0.01255665),
        rotation: 0,
        largeArc: true,
        clockwise: false);
    path13.arcToPoint(Offset(size.width * 0.4420494, size.height * 0.1699396),
        radius: Radius.elliptical(
            size.width * 0.01500959, size.height * 0.01255665),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path13.close();

    Paint paint13fill = Paint()..style = PaintingStyle.fill;
    paint13fill.color = Color(0xffeb4e27).withOpacity(1.0);
    canvas.drawPath(path13, paint13fill);

    Path path14 = Path();
    path14.moveTo(size.width * 0.4965580, size.height * 0.1678625);
    path14.arcToPoint(Offset(size.width * 0.5138246, size.height * 0.1780589),
        radius: Radius.elliptical(
            size.width * 0.01489674, size.height * 0.01246224),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path14.arcToPoint(Offset(size.width * 0.4965580, size.height * 0.1678625),
        radius: Radius.elliptical(
            size.width * 0.01500959, size.height * 0.01255665),
        rotation: 0,
        largeArc: true,
        clockwise: false);
    path14.close();

    Paint paint14fill = Paint()..style = PaintingStyle.fill;
    paint14fill.color = Color(0xffeb4e27).withOpacity(1.0);
    canvas.drawPath(path14, paint14fill);

    Path path15 = Path();
    path15.moveTo(size.width * 0.4210586, size.height * 0.1793807);
    path15.arcToPoint(Offset(size.width * 0.3901366, size.height * 0.1839124),
        radius: Radius.elliptical(
            size.width * 0.01568672, size.height * 0.01312311),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path15.arcToPoint(Offset(size.width * 0.4210586, size.height * 0.1793807),
        radius: Radius.elliptical(
            size.width * 0.01568672, size.height * 0.01312311),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path15.close();

    Paint paint15fill = Paint()..style = PaintingStyle.fill;
    paint15fill.color = Color(0xffeb4e27).withOpacity(1.0);
    canvas.drawPath(path15, paint15fill);

    Path path16 = Path();
    path16.moveTo(size.width * 0.4409209, size.height * 0.1642749);
    path16.arcToPoint(Offset(size.width * 0.4703758, size.height * 0.1599320),
        radius: Radius.elliptical(
            size.width * 0.01500959, size.height * 0.01255665),
        rotation: 0,
        largeArc: true,
        clockwise: false);
    path16.arcToPoint(Offset(size.width * 0.4409209, size.height * 0.1642749),
        radius: Radius.elliptical(
            size.width * 0.01500959, size.height * 0.01255665),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path16.close();

    Paint paint16fill = Paint()..style = PaintingStyle.fill;
    paint16fill.color = Color(0xff452800).withOpacity(1.0);
    canvas.drawPath(path16, paint16fill);

    Path path17 = Path();
    path17.moveTo(size.width * 0.4948651, size.height * 0.1626699);
    path17.arcToPoint(Offset(size.width * 0.5070534, size.height * 0.1482251),
        radius: Radius.elliptical(
            size.width * 0.01500959, size.height * 0.01255665),
        rotation: 0,
        largeArc: true,
        clockwise: false);
    path17.arcToPoint(Offset(size.width * 0.4948651, size.height * 0.1626699),
        radius: Radius.elliptical(
            size.width * 0.01489674, size.height * 0.01246224),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path17.close();

    Paint paint17fill = Paint()..style = PaintingStyle.fill;
    paint17fill.color = Color(0xff452800).withOpacity(1.0);
    canvas.drawPath(path17, paint17fill);

    Path path18 = Path();
    path18.moveTo(size.width * 0.4191401, size.height * 0.1739048);
    path18.arcToPoint(Offset(size.width * 0.4017605, size.height * 0.1637085),
        radius: Radius.elliptical(
            size.width * 0.01500959, size.height * 0.01255665),
        rotation: 0,
        largeArc: true,
        clockwise: true);
    path18.arcToPoint(Offset(size.width * 0.4191401, size.height * 0.1739048),
        radius: Radius.elliptical(
            size.width * 0.01512245, size.height * 0.01265106),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path18.close();

    Paint paint18fill = Paint()..style = PaintingStyle.fill;
    paint18fill.color = Color(0xff452800).withOpacity(1.0);
    canvas.drawPath(path18, paint18fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
