import 'package:flutter/material.dart';

Widget inventoryIconColor({@required double xwidth}) {
  return CustomPaint(
    size: Size(xwidth, (xwidth * 0.9274732101257959).toDouble()),
    painter: InventoryIconColor(),
  );
}

class InventoryIconColor extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.5590930, size.height * 0.5073677);
    path0.lineTo(size.width * 0.5590930, size.height * 0.5847287);
    path0.cubicTo(size.width * 0.5590930, size.height * 0.6486939, size.width * 0.6578661, size.height * 0.7007703, size.width * 0.7797795, size.height * 0.7007703);
    path0.cubicTo(size.width * 0.9016928, size.height * 0.7007703, size.width * 1.000311, size.height * 0.6486939, size.width * 1.000311, size.height * 0.5847287);
    path0.lineTo(size.width * 1.000311, size.height * 0.5073677);
    path0.close();

    Paint paint0fill = Paint()..style = PaintingStyle.fill;
    paint0fill.color = Color(0xfffa7564).withOpacity(1.0);
    canvas.drawPath(path0, paint0fill);

    Path path1 = Path();
    path1.moveTo(size.width, size.height * 0.5073677);
    path1.cubicTo(size.width, size.height * 0.5713329, size.width * 0.9012269, size.height * 0.6234092, size.width * 0.7794689, size.height * 0.6234092);
    path1.cubicTo(size.width * 0.6577108, size.height * 0.6234092, size.width * 0.5590930, size.height * 0.5713329, size.width * 0.5590930, size.height * 0.5073677);
    path1.cubicTo(size.width * 0.5590930, size.height * 0.4434025, size.width * 0.6578661, size.height * 0.3913262, size.width * 0.7797795, size.height * 0.3913262);
    path1.cubicTo(size.width * 0.9016928, size.height * 0.3913262, size.width, size.height * 0.4432351, size.width, size.height * 0.5073677);
    path1.close();

    Paint paint1fill = Paint()..style = PaintingStyle.fill;
    paint1fill.color = Color(0xffe55d4c).withOpacity(1.0);
    canvas.drawPath(path1, paint1fill);

    Path path2 = Path();
    path2.moveTo(size.width * 0.5590930, size.height * 0.4135968);
    path2.lineTo(size.width * 0.5590930, size.height * 0.4909578);
    path2.cubicTo(size.width * 0.5590930, size.height * 0.5549230, size.width * 0.6578661, size.height * 0.6069993, size.width * 0.7797795, size.height * 0.6069993);
    path2.cubicTo(size.width * 0.9016928, size.height * 0.6069993, size.width * 1.000311, size.height * 0.5549230, size.width * 1.000311, size.height * 0.4909578);
    path2.lineTo(size.width * 1.000311, size.height * 0.4135968);
    path2.close();

    Paint paint2fill = Paint()..style = PaintingStyle.fill;
    paint2fill.color = Color(0xfffa7564).withOpacity(1.0);
    canvas.drawPath(path2, paint2fill);

    Path path3 = Path();
    path3.moveTo(size.width, size.height * 0.4135968);
    path3.cubicTo(size.width, size.height * 0.4777294, size.width * 0.9012269, size.height * 0.5296383, size.width * 0.7794689, size.height * 0.5296383);
    path3.cubicTo(size.width * 0.6577108, size.height * 0.5296383, size.width * 0.5590930, size.height * 0.4777294, size.width * 0.5590930, size.height * 0.4135968);
    path3.cubicTo(size.width * 0.5590930, size.height * 0.3494642, size.width * 0.6578661, size.height * 0.2975553, size.width * 0.7797795, size.height * 0.2975553);
    path3.cubicTo(size.width * 0.9016928, size.height * 0.2975553, size.width, size.height * 0.3494642, size.width, size.height * 0.4135968);
    path3.close();

    Paint paint3fill = Paint()..style = PaintingStyle.fill;
    paint3fill.color = Color(0xffe55d4c).withOpacity(1.0);
    canvas.drawPath(path3, paint3fill);

    Path path4 = Path();
    path4.moveTo(size.width * 0.5590930, size.height * 0.3198259);
    path4.lineTo(size.width * 0.5590930, size.height * 0.3971869);
    path4.cubicTo(size.width * 0.5590930, size.height * 0.4613195, size.width * 0.6578661, size.height * 0.5132284, size.width * 0.7797795, size.height * 0.5132284);
    path4.cubicTo(size.width * 0.9016928, size.height * 0.5132284, size.width * 1.000311, size.height * 0.4613195, size.width * 1.000311, size.height * 0.3971869);
    path4.lineTo(size.width * 1.000311, size.height * 0.3198259);
    path4.close();

    Paint paint4fill = Paint()..style = PaintingStyle.fill;
    paint4fill.color = Color(0xfffa7564).withOpacity(1.0);
    canvas.drawPath(path4, paint4fill);

    Path path5 = Path();
    path5.moveTo(size.width, size.height * 0.3198259);
    path5.cubicTo(size.width, size.height * 0.3839585, size.width * 0.9007610, size.height * 0.4353650, size.width * 0.7794689, size.height * 0.4353650);
    path5.cubicTo(size.width * 0.6581767, size.height * 0.4353650, size.width * 0.5590930, size.height * 0.3839585, size.width * 0.5590930, size.height * 0.3198259);
    path5.cubicTo(size.width * 0.5590930, size.height * 0.2556932, size.width * 0.6578661, size.height * 0.2037843, size.width * 0.7797795, size.height * 0.2037843);
    path5.cubicTo(size.width * 0.9016928, size.height * 0.2037843, size.width, size.height * 0.2558607, size.width, size.height * 0.3198259);
    path5.close();

    Paint paint5fill = Paint()..style = PaintingStyle.fill;
    paint5fill.color = Color(0xffe55d4c).withOpacity(1.0);
    canvas.drawPath(path5, paint5fill);

    Path path6 = Path();
    path6.moveTo(size.width * 0.5590930, size.height * 0.2260549);
    path6.lineTo(size.width * 0.5590930, size.height * 0.3035834);
    path6.cubicTo(size.width * 0.5590930, size.height * 0.3675486, size.width * 0.6578661, size.height * 0.4194575, size.width * 0.7797795, size.height * 0.4194575);
    path6.cubicTo(size.width * 0.9016928, size.height * 0.4194575, size.width * 1.000311, size.height * 0.3675486, size.width * 1.000311, size.height * 0.3035834);
    path6.lineTo(size.width * 1.000311, size.height * 0.2260549);
    path6.close();

    Paint paint6fill = Paint()..style = PaintingStyle.fill;
    paint6fill.color = Color(0xfffa7564).withOpacity(1.0);
    canvas.drawPath(path6, paint6fill);

    Path path7 = Path();
    path7.moveTo(size.width, size.height * 0.2260549);
    path7.cubicTo(size.width, size.height * 0.2901875, size.width * 0.9012269, size.height * 0.3420965, size.width * 0.7794689, size.height * 0.3420965);
    path7.cubicTo(size.width * 0.6577108, size.height * 0.3420965, size.width * 0.5590930, size.height * 0.2901875, size.width * 0.5590930, size.height * 0.2260549);
    path7.cubicTo(size.width * 0.5590930, size.height * 0.1619223, size.width * 0.6578661, size.height * 0.1100134, size.width * 0.7797795, size.height * 0.1100134);
    path7.cubicTo(size.width * 0.9016928, size.height * 0.1100134, size.width, size.height * 0.1620898, size.width, size.height * 0.2260549);
    path7.close();

    Paint paint7fill = Paint()..style = PaintingStyle.fill;
    paint7fill.color = Color(0xffe55d4c).withOpacity(1.0);
    canvas.drawPath(path7, paint7fill);

    Path path8 = Path();
    path8.moveTo(size.width * 0.5590930, size.height * 0.1324514);
    path8.lineTo(size.width * 0.5590930, size.height * 0.2098125);
    path8.cubicTo(size.width * 0.5590930, size.height * 0.2737776, size.width * 0.6578661, size.height * 0.3258540, size.width * 0.7797795, size.height * 0.3258540);
    path8.cubicTo(size.width * 0.9016928, size.height * 0.3258540, size.width * 1.000311, size.height * 0.2737776, size.width * 1.000311, size.height * 0.2098125);
    path8.lineTo(size.width * 1.000311, size.height * 0.1324514);
    path8.close();

    Paint paint8fill = Paint()..style = PaintingStyle.fill;
    paint8fill.color = Color(0xfffa7564).withOpacity(1.0);
    canvas.drawPath(path8, paint8fill);

    Path path9 = Path();
    path9.moveTo(size.width, size.height * 0.1324514);
    path9.cubicTo(size.width, size.height * 0.1965841, size.width * 0.9012269, size.height * 0.2484930, size.width * 0.7794689, size.height * 0.2484930);
    path9.cubicTo(size.width * 0.6577108, size.height * 0.2484930, size.width * 0.5590930, size.height * 0.1965841, size.width * 0.5590930, size.height * 0.1324514);
    path9.cubicTo(size.width * 0.5590930, size.height * 0.06831882, size.width * 0.6575555, size.height * 0.01674481, size.width * 0.7794689, size.height * 0.01674481);
    path9.cubicTo(size.width * 0.9013822, size.height * 0.01674481, size.width, size.height * 0.06831882, size.width, size.height * 0.1324514);
    path9.close();

    Paint paint9fill = Paint()..style = PaintingStyle.fill;
    paint9fill.color = Color(0xffe55d4c).withOpacity(1.0);
    canvas.drawPath(path9, paint9fill);

    Path path10 = Path();
    path10.moveTo(0, size.height * 0.4909578);
    path10.lineTo(0, size.height * 0.5683188);
    path10.cubicTo(0, size.height * 0.6322840, size.width * 0.09877310, size.height * 0.6843603, size.width * 0.2206864, size.height * 0.6843603);
    path10.cubicTo(size.width * 0.3425998, size.height * 0.6843603, size.width * 0.4412176, size.height * 0.6322840, size.width * 0.4412176, size.height * 0.5683188);
    path10.lineTo(size.width * 0.4412176, size.height * 0.4909578);
    path10.close();

    Paint paint10fill = Paint()..style = PaintingStyle.fill;
    paint10fill.color = Color(0xff55d6d2).withOpacity(1.0);
    canvas.drawPath(path10, paint10fill);

    Path path11 = Path();
    path11.moveTo(size.width * 0.4412176, size.height * 0.4909578);
    path11.cubicTo(size.width * 0.4412176, size.height * 0.5550904, size.width * 0.3424445, size.height * 0.6069993, size.width * 0.2206864, size.height * 0.6069993);
    path11.cubicTo(size.width * 0.09892841, size.height * 0.6069993, 0, size.height * 0.5550904, 0, size.height * 0.4909578);
    path11.cubicTo(0, size.height * 0.4268252, size.width * 0.09877310, size.height * 0.3749163, size.width * 0.2206864, size.height * 0.3749163);
    path11.cubicTo(size.width * 0.3425998, size.height * 0.3749163, size.width * 0.4412176, size.height * 0.4268252, size.width * 0.4412176, size.height * 0.4909578);
    path11.close();

    Paint paint11fill = Paint()..style = PaintingStyle.fill;
    paint11fill.color = Color(0xff3f9e9c).withOpacity(1.0);
    canvas.drawPath(path11, paint11fill);

    Path path12 = Path();
    path12.moveTo(0, size.height * 0.3971869);
    path12.lineTo(0, size.height * 0.4745479);
    path12.cubicTo(0, size.height * 0.5386805, size.width * 0.09877310, size.height * 0.5905894, size.width * 0.2206864, size.height * 0.5905894);
    path12.cubicTo(size.width * 0.3425998, size.height * 0.5905894, size.width * 0.4412176, size.height * 0.5386805, size.width * 0.4412176, size.height * 0.4745479);
    path12.lineTo(size.width * 0.4412176, size.height * 0.3971869);
    path12.close();

    Paint paint12fill = Paint()..style = PaintingStyle.fill;
    paint12fill.color = Color(0xff55d6d2).withOpacity(1.0);
    canvas.drawPath(path12, paint12fill);

    Path path13 = Path();
    path13.moveTo(size.width * 0.4412176, size.height * 0.3971869);
    path13.cubicTo(size.width * 0.4412176, size.height * 0.4613195, size.width * 0.3424445, size.height * 0.5132284, size.width * 0.2206864, size.height * 0.5132284);
    path13.cubicTo(size.width * 0.09892841, size.height * 0.5132284, 0, size.height * 0.4613195, 0, size.height * 0.3971869);
    path13.cubicTo(0, size.height * 0.3330543, size.width * 0.09877310, size.height * 0.2811453, size.width * 0.2206864, size.height * 0.2811453);
    path13.cubicTo(size.width * 0.3425998, size.height * 0.2811453, size.width * 0.4412176, size.height * 0.3330543, size.width * 0.4412176, size.height * 0.3971869);
    path13.close();

    Paint paint13fill = Paint()..style = PaintingStyle.fill;
    paint13fill.color = Color(0xff3f9e9c).withOpacity(1.0);
    canvas.drawPath(path13, paint13fill);

    Path path14 = Path();
    path14.moveTo(0, size.height * 0.3034159);
    path14.lineTo(0, size.height * 0.3809444);
    path14.cubicTo(0, size.height * 0.4449096, size.width * 0.09877310, size.height * 0.4968185, size.width * 0.2206864, size.height * 0.4968185);
    path14.cubicTo(size.width * 0.3425998, size.height * 0.4968185, size.width * 0.4412176, size.height * 0.4449096, size.width * 0.4412176, size.height * 0.3809444);
    path14.lineTo(size.width * 0.4412176, size.height * 0.3034159);
    path14.close();

    Paint paint14fill = Paint()..style = PaintingStyle.fill;
    paint14fill.color = Color(0xff55d6d2).withOpacity(1.0);
    canvas.drawPath(path14, paint14fill);

    Path path15 = Path();
    path15.moveTo(size.width * 0.4412176, size.height * 0.3034159);
    path15.cubicTo(size.width * 0.4412176, size.height * 0.3675486, size.width * 0.3424445, size.height * 0.4194575, size.width * 0.2206864, size.height * 0.4194575);
    path15.cubicTo(size.width * 0.09892841, size.height * 0.4194575, 0, size.height * 0.3683858, 0, size.height * 0.3034159);
    path15.cubicTo(0, size.height * 0.2384461, size.width * 0.09877310, size.height * 0.1873744, size.width * 0.2206864, size.height * 0.1873744);
    path15.cubicTo(size.width * 0.3425998, size.height * 0.1873744, size.width * 0.4412176, size.height * 0.2394508, size.width * 0.4412176, size.height * 0.3034159);
    path15.close();

    Paint paint15fill = Paint()..style = PaintingStyle.fill;
    paint15fill.color = Color(0xff3f9e9c).withOpacity(1.0);
    canvas.drawPath(path15, paint15fill);

    Path path16 = Path();
    path16.moveTo(0, size.height * 0.2098125);
    path16.lineTo(0, size.height * 0.2871735);
    path16.cubicTo(0, size.height * 0.3516410, size.width * 0.09877310, size.height * 0.4032150, size.width * 0.2206864, size.height * 0.4032150);
    path16.cubicTo(size.width * 0.3425998, size.height * 0.4032150, size.width * 0.4412176, size.height * 0.3511386, size.width * 0.4412176, size.height * 0.2871735);
    path16.lineTo(size.width * 0.4412176, size.height * 0.2098125);
    path16.close();

    Paint paint16fill = Paint()..style = PaintingStyle.fill;
    paint16fill.color = Color(0xff55d6d2).withOpacity(1.0);
    canvas.drawPath(path16, paint16fill);

    Path path17 = Path();
    path17.moveTo(size.width * 0.4412176, size.height * 0.2098125);
    path17.cubicTo(size.width * 0.4412176, size.height * 0.2737776, size.width * 0.3424445, size.height * 0.3258540, size.width * 0.2206864, size.height * 0.3258540);
    path17.cubicTo(size.width * 0.09892841, size.height * 0.3258540, 0, size.height * 0.2737776, 0, size.height * 0.2098125);
    path17.cubicTo(0, size.height * 0.1458473, size.width * 0.09877310, size.height * 0.09377093, size.width * 0.2206864, size.height * 0.09377093);
    path17.cubicTo(size.width * 0.3425998, size.height * 0.09377093, size.width * 0.4412176, size.height * 0.1456798, size.width * 0.4412176, size.height * 0.2098125);
    path17.close();

    Paint paint17fill = Paint()..style = PaintingStyle.fill;
    paint17fill.color = Color(0xff3f9e9c).withOpacity(1.0);
    canvas.drawPath(path17, paint17fill);

    Path path18 = Path();
    path18.moveTo(0, size.height * 0.1160415);
    path18.lineTo(0, size.height * 0.1934025);
    path18.cubicTo(0, size.height * 0.2575352, size.width * 0.09877310, size.height * 0.3094441, size.width * 0.2206864, size.height * 0.3094441);
    path18.cubicTo(size.width * 0.3425998, size.height * 0.3094441, size.width * 0.4412176, size.height * 0.2575352, size.width * 0.4412176, size.height * 0.1934025);
    path18.lineTo(size.width * 0.4412176, size.height * 0.1160415);
    path18.close();

    Paint paint18fill = Paint()..style = PaintingStyle.fill;
    paint18fill.color = Color(0xff55d6d2).withOpacity(1.0);
    canvas.drawPath(path18, paint18fill);

    Path path19 = Path();
    path19.moveTo(size.width * 0.4412176, size.height * 0.1160415);
    path19.cubicTo(size.width * 0.4412176, size.height * 0.1801741, size.width * 0.3424445, size.height * 0.2320831, size.width * 0.2206864, size.height * 0.2320831);
    path19.cubicTo(size.width * 0.09892841, size.height * 0.2320831, 0, size.height * 0.1801741, 0, size.height * 0.1160415);
    path19.cubicTo(0, size.height * 0.05190891, size.width * 0.09877310, 0, size.width * 0.2206864, 0);
    path19.cubicTo(size.width * 0.3425998, 0, size.width * 0.4412176, size.height * 0.05190891, size.width * 0.4412176, size.height * 0.1160415);
    path19.close();

    Paint paint19fill = Paint()..style = PaintingStyle.fill;
    paint19fill.color = Color(0xff3f9e9c).withOpacity(1.0);
    canvas.drawPath(path19, paint19fill);

    Path path20 = Path();
    path20.moveTo(size.width * 0.2826526, size.height * 0.8069324);
    path20.lineTo(size.width * 0.2826526, size.height * 0.8841259);
    path20.cubicTo(size.width * 0.2826526, size.height * 0.9480911, size.width * 0.3812704, size.height, size.width * 0.5028731, size.height);
    path20.cubicTo(size.width * 0.6244759, size.height, size.width * 0.7230936, size.height * 0.9480911, size.width * 0.7230936, size.height * 0.8841259);
    path20.lineTo(size.width * 0.7230936, size.height * 0.8069324);
    path20.close();

    Paint paint20fill = Paint()..style = PaintingStyle.fill;
    paint20fill.color = Color(0xff679cb4).withOpacity(1.0);
    canvas.drawPath(path20, paint20fill);

    Path path21 = Path();
    path21.moveTo(size.width * 0.7230936, size.height * 0.8069324);
    path21.cubicTo(size.width * 0.7230936, size.height * 0.8708975, size.width * 0.6246312, size.height * 0.9228064, size.width * 0.5028731, size.height * 0.9228064);
    path21.cubicTo(size.width * 0.3811151, size.height * 0.9228064, size.width * 0.2826526, size.height * 0.8707301, size.width * 0.2826526, size.height * 0.8069324);
    path21.cubicTo(size.width * 0.2826526, size.height * 0.7431346, size.width * 0.3812704, size.height * 0.6910583, size.width * 0.5028731, size.height * 0.6910583);
    path21.cubicTo(size.width * 0.6244759, size.height * 0.6910583, size.width * 0.7230936, size.height * 0.7429672, size.width * 0.7230936, size.height * 0.8069324);
    path21.close();

    Paint paint21fill = Paint()..style = PaintingStyle.fill;
    paint21fill.color = Color(0xff105982).withOpacity(1.0);
    canvas.drawPath(path21, paint21fill);

    Path path22 = Path();
    path22.moveTo(size.width * 0.2826526, size.height * 0.7133289);
    path22.lineTo(size.width * 0.2826526, size.height * 0.7906899);
    path22.cubicTo(size.width * 0.2826526, size.height * 0.8544876, size.width * 0.3812704, size.height * 0.9063965, size.width * 0.5028731, size.height * 0.9063965);
    path22.cubicTo(size.width * 0.6244759, size.height * 0.9063965, size.width * 0.7230936, size.height * 0.8539853, size.width * 0.7230936, size.height * 0.7906899);
    path22.lineTo(size.width * 0.7230936, size.height * 0.7133289);
    path22.close();

    Paint paint22fill = Paint()..style = PaintingStyle.fill;
    paint22fill.color = Color(0xff679cb4).withOpacity(1.0);
    canvas.drawPath(path22, paint22fill);

    Path path23 = Path();
    path23.moveTo(size.width * 0.7230936, size.height * 0.7133289);
    path23.cubicTo(size.width * 0.7230936, size.height * 0.7772940, size.width * 0.6246312, size.height * 0.8292029, size.width * 0.5028731, size.height * 0.8292029);
    path23.cubicTo(size.width * 0.3811151, size.height * 0.8292029, size.width * 0.2826526, size.height * 0.7772940, size.width * 0.2826526, size.height * 0.7133289);
    path23.cubicTo(size.width * 0.2826526, size.height * 0.6493637, size.width * 0.3812704, size.height * 0.5976222, size.width * 0.5028731, size.height * 0.5976222);
    path23.cubicTo(size.width * 0.6244759, size.height * 0.5976222, size.width * 0.7230936, size.height * 0.6493637, size.width * 0.7230936, size.height * 0.7133289);
    path23.close();

    Paint paint23fill = Paint()..style = PaintingStyle.fill;
    paint23fill.color = Color(0xff105982).withOpacity(1.0);
    canvas.drawPath(path23, paint23fill);

    Path path24 = Path();
    path24.moveTo(size.width * 0.2826526, size.height * 0.6195579);
    path24.lineTo(size.width * 0.2826526, size.height * 0.6967515);
    path24.cubicTo(size.width * 0.2826526, size.height * 0.7607167, size.width * 0.3812704, size.height * 0.8126256, size.width * 0.5028731, size.height * 0.8126256);
    path24.cubicTo(size.width * 0.6244759, size.height * 0.8126256, size.width * 0.7230936, size.height * 0.7607167, size.width * 0.7230936, size.height * 0.6967515);
    path24.lineTo(size.width * 0.7230936, size.height * 0.6195579);
    path24.close();

    Paint paint24fill = Paint()..style = PaintingStyle.fill;
    paint24fill.color = Color(0xff679cb4).withOpacity(1.0);
    canvas.drawPath(path24, paint24fill);

    Path path25 = Path();
    path25.moveTo(size.width * 0.7230936, size.height * 0.6195579);
    path25.cubicTo(size.width * 0.7230936, size.height * 0.6835231, size.width * 0.6246312, size.height * 0.7352646, size.width * 0.5028731, size.height * 0.7352646);
    path25.cubicTo(size.width * 0.3811151, size.height * 0.7352646, size.width * 0.2826526, size.height * 0.6838580, size.width * 0.2826526, size.height * 0.6195579);
    path25.cubicTo(size.width * 0.2826526, size.height * 0.5552579, size.width * 0.3812704, size.height * 0.5036839, size.width * 0.5028731, size.height * 0.5036839);
    path25.cubicTo(size.width * 0.6244759, size.height * 0.5036839, size.width * 0.7230936, size.height * 0.5559277, size.width * 0.7230936, size.height * 0.6195579);
    path25.close();

    Paint paint25fill = Paint()..style = PaintingStyle.fill;
    paint25fill.color = Color(0xff105982).withOpacity(1.0);
    canvas.drawPath(path25, paint25fill);

    Path path26 = Path();
    path26.moveTo(size.width * 0.2826526, size.height * 0.5262894);
    path26.lineTo(size.width * 0.2826526, size.height * 0.6028131);
    path26.cubicTo(size.width * 0.2826526, size.height * 0.6667783, size.width * 0.3812704, size.height * 0.7186872, size.width * 0.5028731, size.height * 0.7186872);
    path26.cubicTo(size.width * 0.6244759, size.height * 0.7186872, size.width * 0.7230936, size.height * 0.6674481, size.width * 0.7230936, size.height * 0.6028131);
    path26.lineTo(size.width * 0.7230936, size.height * 0.5262894);
    path26.close();

    Paint paint26fill = Paint()..style = PaintingStyle.fill;
    paint26fill.color = Color(0xff679cb4).withOpacity(1.0);
    canvas.drawPath(path26, paint26fill);

    Path path27 = Path();
    path27.moveTo(size.width * 0.7230936, size.height * 0.5262894);
    path27.cubicTo(size.width * 0.7230936, size.height * 0.5902545, size.width * 0.6246312, size.height * 0.6421634, size.width * 0.5028731, size.height * 0.6421634);
    path27.cubicTo(size.width * 0.3811151, size.height * 0.6421634, size.width * 0.2826526, size.height * 0.5902545, size.width * 0.2826526, size.height * 0.5262894);
    path27.cubicTo(size.width * 0.2826526, size.height * 0.4623242, size.width * 0.3812704, size.height * 0.4104153, size.width * 0.5028731, size.height * 0.4104153);
    path27.cubicTo(size.width * 0.6244759, size.height * 0.4104153, size.width * 0.7230936, size.height * 0.4623242, size.width * 0.7230936, size.height * 0.5262894);
    path27.close();

    Paint paint27fill = Paint()..style = PaintingStyle.fill;
    paint27fill.color = Color(0xff105982).withOpacity(1.0);
    canvas.drawPath(path27, paint27fill);

    Path path28 = Path();
    path28.moveTo(size.width * 0.2826526, size.height * 0.4326859);
    path28.lineTo(size.width * 0.2826526, size.height * 0.5100469);
    path28.cubicTo(size.width * 0.2826526, size.height * 0.5738446, size.width * 0.3812704, size.height * 0.6257535, size.width * 0.5028731, size.height * 0.6257535);
    path28.cubicTo(size.width * 0.6244759, size.height * 0.6257535, size.width * 0.7230936, size.height * 0.5738446, size.width * 0.7230936, size.height * 0.5100469);
    path28.lineTo(size.width * 0.7230936, size.height * 0.4326859);
    path28.close();

    Paint paint28fill = Paint()..style = PaintingStyle.fill;
    paint28fill.color = Color(0xff679cb4).withOpacity(1.0);
    canvas.drawPath(path28, paint28fill);

    Path path29 = Path();
    path29.moveTo(size.width * 0.7230936, size.height * 0.4326859);
    path29.cubicTo(size.width * 0.7230936, size.height * 0.4966510, size.width * 0.6246312, size.height * 0.5485599, size.width * 0.5028731, size.height * 0.5485599);
    path29.cubicTo(size.width * 0.3811151, size.height * 0.5485599, size.width * 0.2826526, size.height * 0.4966510, size.width * 0.2826526, size.height * 0.4326859);
    path29.cubicTo(size.width * 0.2826526, size.height * 0.3687207, size.width * 0.3812704, size.height * 0.3169792, size.width * 0.5028731, size.height * 0.3169792);
    path29.cubicTo(size.width * 0.6244759, size.height * 0.3169792, size.width * 0.7230936, size.height * 0.3683858, size.width * 0.7230936, size.height * 0.4326859);
    path29.close();

    Paint paint29fill = Paint()..style = PaintingStyle.fill;
    paint29fill.color = Color(0xff105982).withOpacity(1.0);
    canvas.drawPath(path29, paint29fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
