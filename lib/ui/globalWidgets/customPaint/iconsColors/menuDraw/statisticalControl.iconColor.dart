import 'package:flutter/material.dart';

Widget statisticalControlIconColor({@required double xwidth}) {
  return CustomPaint(
    size: Size(xwidth, (xwidth * 2.018512707875745).toDouble()),
    painter: StatisticalControlIconColor(),
  );
}

class StatisticalControlIconColor extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.5000000, size.height * 0.1842273);
    path0.lineTo(size.width * 0.1959171, size.height * 0.4289591);
    path0.lineTo(size.width * 0.3278489, size.height * 0.7793742);
    path0.lineTo(size.width * 0.6165448, size.height * 0.6893359);
    path0.lineTo(size.width * 0.7410116, size.height * 0.4426884);
    path0.lineTo(size.width * 0.5000000, size.height * 0.1842273);
    path0.close();

    Paint paint0fill = Paint()..style = PaintingStyle.fill;
    paint0fill.color = Color(0xffe55d4c).withOpacity(1.0);
    canvas.drawPath(path0, paint0fill);

    Path path1 = Path();
    path1.moveTo(size.width * 0.8089580, size.height);
    path1.lineTo(size.width * 0.1908897, size.height);
    path1.lineTo(0, size.height * 0.3818646);
    path1.lineTo(size.width * 0.003960999, size.height * 0.3788314);
    path1.lineTo(size.width * 0.5000000, 0);
    path1.lineTo(size.width, size.height * 0.3818646);
    path1.close();
    path1.moveTo(size.width * 0.2009445, size.height * 0.9856322);
    path1.lineTo(size.width * 0.7990555, size.height * 0.9856322);
    path1.lineTo(size.width * 0.9838513, size.height * 0.3874521);
    path1.lineTo(size.width * 0.5000000, size.height * 0.01772031);
    path1.lineTo(size.width * 0.01599634, size.height * 0.3874521);
    path1.close();

    Paint paint1fill = Paint()..style = PaintingStyle.fill;
    paint1fill.color = Color(0xff545454).withOpacity(1.0);
    canvas.drawPath(path1, paint1fill);

    Path path2 = Path();
    path2.moveTo(size.width * 0.5015235, size.height * 0.5078225);
    path2.lineTo(size.width * 0.4984765, size.height * 0.4937739);
    path2.lineTo(size.width * 0.9904022, size.height * 0.3777139);
    path2.lineTo(size.width * 0.9934491, size.height * 0.3917625);
    path2.lineTo(size.width * 0.5015235, size.height * 0.5078225);
    path2.close();

    Paint paint2fill = Paint()..style = PaintingStyle.fill;
    paint2fill.color = Color(0xff545454).withOpacity(1.0);
    canvas.drawPath(path2, paint2fill);

    Paint paint3fill = Paint()..style = PaintingStyle.fill;
    paint3fill.color = Color(0xff545454).withOpacity(1.0);
    canvas.drawRect(
        Rect.fromLTWH(size.width * 0.4931444, size.height * 0.008939974,
            size.width * 0.01371115, size.height * 0.4918582),
        paint3fill);

    Path path4 = Path();
    path4.moveTo(size.width * 0.4984765, size.height * 0.5078225);
    path4.lineTo(size.width * 0.006550884, size.height * 0.3917625);
    path4.lineTo(size.width * 0.009597806, size.height * 0.3777139);
    path4.lineTo(size.width * 0.5015235, size.height * 0.4937739);
    path4.lineTo(size.width * 0.4984765, size.height * 0.5078225);
    path4.close();

    Paint paint4fill = Paint()..style = PaintingStyle.fill;
    paint4fill.color = Color(0xff545454).withOpacity(1.0);
    canvas.drawPath(path4, paint4fill);

    Path path5 = Path();
    path5.moveTo(size.width * 0.2017063, size.height * 0.9966475);
    path5.lineTo(size.width * 0.1901280, size.height * 0.9888250);
    path5.lineTo(size.width * 0.4942108, size.height * 0.4969668);
    path5.lineTo(size.width * 0.5056368, size.height * 0.5047893);
    path5.lineTo(size.width * 0.2017063, size.height * 0.9966475);
    path5.close();

    Paint paint5fill = Paint()..style = PaintingStyle.fill;
    paint5fill.color = Color(0xff545454).withOpacity(1.0);
    canvas.drawPath(path5, paint5fill);

    Path path6 = Path();
    path6.moveTo(size.width * 0.7982937, size.height * 0.9966475);
    path6.lineTo(size.width * 0.4942108, size.height * 0.5047893);
    path6.lineTo(size.width * 0.5056368, size.height * 0.4969668);
    path6.lineTo(size.width * 0.8097197, size.height * 0.9888250);
    path6.lineTo(size.width * 0.7982937, size.height * 0.9966475);
    path6.close();

    Paint paint6fill = Paint()..style = PaintingStyle.fill;
    paint6fill.color = Color(0xff545454).withOpacity(1.0);
    canvas.drawPath(path6, paint6fill);

    Path path7 = Path();
    path7.moveTo(size.width * 0.2749848, size.height * 0.8663793);
    path7.lineTo(size.width * 0.1301036, size.height * 0.4110792);
    path7.lineTo(size.width * 0.5012188, size.height * 0.2796935);
    path7.lineTo(size.width * 0.7081048, size.height * 0.4503512);
    path7.lineTo(size.width * 0.6579829, size.height * 0.7523946);
    path7.close();
    path7.moveTo(size.width * 0.1474711, size.height * 0.4193806);
    path7.lineTo(size.width * 0.2845826, size.height * 0.8481801);
    path7.lineTo(size.width * 0.6459476, size.height * 0.7410600);
    path7.lineTo(size.width * 0.6933272, size.height * 0.4564176);
    path7.lineTo(size.width * 0.4986289, size.height * 0.2958174);
    path7.close();

    Paint paint7fill = Paint()..style = PaintingStyle.fill;
    paint7fill.color = Colors.lime.withOpacity(1.0);
    canvas.drawPath(path7, paint7fill);

    Path path8 = Path();
    path8.moveTo(size.width * 0.7087142, size.height * 0.8333333);
    path8.lineTo(size.width * 0.3089580, size.height * 0.8077905);
    path8.lineTo(size.width * 0.2311091, size.height * 0.4340677);
    path8.lineTo(size.width * 0.5010664, size.height * 0.3577586);
    path8.lineTo(size.width * 0.6582876, size.height * 0.4605683);
    path8.close();
    path8.moveTo(size.width * 0.3199269, size.height * 0.7940613);
    path8.lineTo(size.width * 0.6925655, size.height * 0.8178480);
    path8.lineTo(size.width * 0.6456429, size.height * 0.4691890);
    path8.lineTo(size.width * 0.4989336, size.height * 0.3734036);
    path8.lineTo(size.width * 0.2472578, size.height * 0.4444444);
    path8.close();

    Paint paint8fill = Paint()..style = PaintingStyle.fill;
    paint8fill.color = Color(0xfff7931e).withOpacity(1.0);
    canvas.drawPath(path8, paint8fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
