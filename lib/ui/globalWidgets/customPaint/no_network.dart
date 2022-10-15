import 'dart:ui' as ui;
import 'package:flutter/material.dart';

class NoNetworkPainter extends CustomPainter {
  BuildContext context;

  NoNetworkPainter({@required this.context});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0fill = Paint()..style = PaintingStyle.fill;
    paint0fill.color = Color(0xffCCCCCC).withOpacity(1.0);
    canvas.drawOval(Rect.fromCenter(center: Offset(size.width * 0.3230469, size.height * 0.9382872), width: size.width * 0.1429688, height: size.height * 0.06297229), paint0fill);

    Paint paint1fill = Paint()..style = PaintingStyle.fill;
    paint1fill.color = Color(0xffCCCCCC).withOpacity(1.0);
    canvas.drawOval(Rect.fromCenter(center: Offset(size.width * 0.7175781, size.height * 0.9382872), width: size.width * 0.1429688, height: size.height * 0.06297229), paint1fill);

    Path path2 = Path();
    path2.moveTo(size.width * 0.6989844, size.height * 0.1171285);
    path2.cubicTo(size.width * 0.6989844, size.height * 0.1171285, size.width * 0.6949219, size.height * 0.1017632, size.width * 0.6994531, size.height * 0.07909320);
    path2.cubicTo(size.width * 0.7025781, size.height * 0.06397985, size.width * 0.7058594, size.height * 0.07027708, size.width * 0.7057031, size.height * 0.07783375);
    path2.cubicTo(size.width * 0.7056250, size.height * 0.08513854, size.width * 0.7028125, size.height * 0.1065491, size.width * 0.6989844, size.height * 0.1171285);
    path2.close();

    Paint paint2fill = Paint()..style = PaintingStyle.fill;
    paint2fill.color = Color(0xff0C232B).withOpacity(1.0);
    canvas.drawPath(path2, paint2fill);

    Path path3 = Path();
    path3.moveTo(size.width * 0.3761719, size.height * 0.2410579);
    path3.cubicTo(size.width * 0.3761719, size.height * 0.2410579, size.width * 0.3723438, size.height * 0.2448363, size.width * 0.3719531, size.height * 0.2463476);
    path3.cubicTo(size.width * 0.3717969, size.height * 0.2468514, size.width * 0.3706250, size.height * 0.2488665, size.width * 0.3714844, size.height * 0.2566751);
    path3.cubicTo(size.width * 0.3717969, size.height * 0.2594458, size.width * 0.3724219, size.height * 0.2624685, size.width * 0.3733594, size.height * 0.2627204);
    path3.cubicTo(size.width * 0.3739062, size.height * 0.2629723, size.width * 0.3756250, size.height * 0.2602015, size.width * 0.3768750, size.height * 0.2586902);
    path3.cubicTo(size.width * 0.3772656, size.height * 0.2604534, size.width * 0.3775781, size.height * 0.2609572, size.width * 0.3779687, size.height * 0.2614610);
    path3.cubicTo(size.width * 0.3791406, size.height * 0.2627204, size.width * 0.3799219, size.height * 0.2629723, size.width * 0.3816406, size.height * 0.2619647);
    path3.cubicTo(size.width * 0.3833594, size.height * 0.2609572, size.width * 0.3857812, size.height * 0.2602015, size.width * 0.3871094, size.height * 0.2566751);
    path3.cubicTo(size.width * 0.3885156, size.height * 0.2531486, size.width * 0.3876562, size.height * 0.2511335, size.width * 0.3876562, size.height * 0.2511335);
    path3.cubicTo(size.width * 0.3876562, size.height * 0.2511335, size.width * 0.3883594, size.height * 0.2503778, size.width * 0.3884375, size.height * 0.2481108);
    path3.cubicTo(size.width * 0.3885156, size.height * 0.2458438, size.width * 0.3880469, size.height * 0.2438287, size.width * 0.3880469, size.height * 0.2438287);
    path3.cubicTo(size.width * 0.3880469, size.height * 0.2438287, size.width * 0.3886719, size.height * 0.2418136, size.width * 0.3887500, size.height * 0.2397985);
    path3.cubicTo(size.width * 0.3888281, size.height * 0.2377834, size.width * 0.3882812, size.height * 0.2357683, size.width * 0.3882812, size.height * 0.2357683);
    path3.cubicTo(size.width * 0.3882812, size.height * 0.2357683, size.width * 0.3892969, size.height * 0.2345088, size.width * 0.3891406, size.height * 0.2314861);
    path3.cubicTo(size.width * 0.3889844, size.height * 0.2287154, size.width * 0.3871875, size.height * 0.2277078, size.width * 0.3866406, size.height * 0.2277078);
    path3.cubicTo(size.width * 0.3860937, size.height * 0.2277078, size.width * 0.3850781, size.height * 0.2279597, size.width * 0.3850781, size.height * 0.2279597);
    path3.cubicTo(size.width * 0.3850781, size.height * 0.2279597, size.width * 0.3857031, size.height * 0.2224181, size.width * 0.3850000, size.height * 0.2221662);
    path3.cubicTo(size.width * 0.3846094, size.height * 0.2219144, size.width * 0.3828125, size.height * 0.2251889, size.width * 0.3812500, size.height * 0.2246851);
    path3.cubicTo(size.width * 0.3793750, size.height * 0.2244332, size.width * 0.3781250, size.height * 0.2292191, size.width * 0.3777344, size.height * 0.2309824);
    path3.cubicTo(size.width * 0.3768750, size.height * 0.2352645, size.width * 0.3761719, size.height * 0.2410579, size.width * 0.3761719, size.height * 0.2410579);
    path3.close();

    Paint paint3fill = Paint()..style = PaintingStyle.fill;
    paint3fill.color = Color(0xffF0A5A6).withOpacity(1.0);
    canvas.drawPath(path3, paint3fill);

    Path path4 = Path();
    path4.moveTo(size.width * 0.3228906, size.height * 0.8765743);
    path4.lineTo(size.width * 0.3192187, size.height * 0.9206549);
    path4.cubicTo(size.width * 0.3192187, size.height * 0.9206549, size.width * 0.3232813, size.height * 0.9297229, size.width * 0.3271094, size.height * 0.9224181);
    path4.lineTo(size.width * 0.3296875, size.height * 0.8831234);
    path4.cubicTo(size.width * 0.3296875, size.height * 0.8828715, size.width * 0.3226562, size.height * 0.8755668, size.width * 0.3228906, size.height * 0.8765743);
    path4.close();

    Paint paint4fill = Paint()..style = PaintingStyle.fill;
    paint4fill.color = Color(0xff231F20).withOpacity(1.0);
    canvas.drawPath(path4, paint4fill);

    Path path5 = Path();
    path5.moveTo(size.width * 0.3266406, size.height * 0.9002519);
    path5.cubicTo(size.width * 0.3266406, size.height * 0.9002519, size.width * 0.3253125, size.height * 0.9123426, size.width * 0.3273437, size.height * 0.9168766);
    path5.cubicTo(size.width * 0.3292969, size.height * 0.9211587, size.width * 0.3314844, size.height * 0.9201511, size.width * 0.3348437, size.height * 0.9186398);
    path5.cubicTo(size.width * 0.3392188, size.height * 0.9166247, size.width * 0.3459375, size.height * 0.9362720, size.width * 0.3374219, size.height * 0.9345088);
    path5.cubicTo(size.width * 0.3361719, size.height * 0.9342569, size.width * 0.3292188, size.height * 0.9324937, size.width * 0.3259375, size.height * 0.9239295);
    path5.cubicTo(size.width * 0.3243750, size.height * 0.9196474, size.width * 0.3246094, size.height * 0.9098237, size.width * 0.3250781, size.height * 0.9068010);
    path5.lineTo(size.width * 0.3266406, size.height * 0.9002519);
    path5.close();

    Paint paint5fill = Paint()..style = PaintingStyle.fill;
    paint5fill.color = Color(0xff231F20).withOpacity(1.0);
    canvas.drawPath(path5, paint5fill);

    Path path6 = Path();
    path6.moveTo(size.width * 0.3358594, size.height * 0.4254408);
    path6.cubicTo(size.width * 0.3271094, size.height * 0.3977330, size.width * 0.3173437, size.height * 0.3831234, size.width * 0.3084375, size.height * 0.4065491);
    path6.cubicTo(size.width * 0.3084375, size.height * 0.4065491, size.width * 0.3058594, size.height * 0.4130982, size.width * 0.3058594, size.height * 0.4130982);
    path6.cubicTo(size.width * 0.2928125, size.height * 0.4471033, size.width * 0.3286719, size.height * 0.6204030, size.width * 0.3357812, size.height * 0.6503778);
    path6.cubicTo(size.width * 0.3448438, size.height * 0.6886650, size.width * 0.3621875, size.height * 0.7415617, size.width * 0.3673437, size.height * 0.7156171);
    path6.cubicTo(size.width * 0.3732812, size.height * 0.6856423, size.width * 0.3714844, size.height * 0.6556675, size.width * 0.3714844, size.height * 0.6503778);
    path6.cubicTo(size.width * 0.3714844, size.height * 0.6078086, size.width * 0.3656250, size.height * 0.5695214, size.width * 0.3596875, size.height * 0.5350126);
    path6.cubicTo(size.width * 0.3547656, size.height * 0.5062972, size.width * 0.3459375, size.height * 0.4571788, size.width * 0.3358594, size.height * 0.4254408);
    path6.close();

    Paint paint6fill = Paint()..style = PaintingStyle.fill;
    paint6fill.color = Color(0xff0C232B).withOpacity(1.0);
    canvas.drawPath(path6, paint6fill);

    Path path7 = Path();
    path7.moveTo(size.width * 0.3289063, size.height * 0.9040302);
    path7.cubicTo(size.width * 0.3357031, size.height * 0.8801008, size.width * 0.3492188, size.height * 0.8254408, size.width * 0.3571875, size.height * 0.7768262);
    path7.cubicTo(size.width * 0.3571875, size.height * 0.7768262, size.width * 0.3572656, size.height * 0.7765743, size.width * 0.3572656, size.height * 0.7765743);
    path7.lineTo(size.width * 0.3677344, size.height * 0.7163728);
    path7.cubicTo(size.width * 0.3715625, size.height * 0.6866499, size.width * 0.3683594, size.height * 0.6715365, size.width * 0.3635937, size.height * 0.6634761);
    path7.cubicTo(size.width * 0.3635937, size.height * 0.6634761, size.width * 0.3453125, size.height * 0.6826196, size.width * 0.3453125, size.height * 0.6826196);
    path7.cubicTo(size.width * 0.3370313, size.height * 0.7309824, size.width * 0.3235156, size.height * 0.8564232, size.width * 0.3210156, size.height * 0.8876574);
    path7.cubicTo(size.width * 0.3210156, size.height * 0.8876574, size.width * 0.3257813, size.height * 0.9042821, size.width * 0.3289063, size.height * 0.9040302);
    path7.close();

    Paint paint7fill = Paint()..style = PaintingStyle.fill;
    paint7fill.color = Color(0xff0C232B).withOpacity(1.0);
    canvas.drawPath(path7, paint7fill);

    Path path8 = Path();
    path8.moveTo(size.width * 0.2916406, size.height * 0.8828715);
    path8.lineTo(size.width * 0.2862500, size.height * 0.9249370);
    path8.cubicTo(size.width * 0.2862500, size.height * 0.9249370, size.width * 0.2899219, size.height * 0.9355164, size.width * 0.2939844, size.height * 0.9297229);
    path8.lineTo(size.width * 0.2981250, size.height * 0.8919395);
    path8.cubicTo(size.width * 0.2981250, size.height * 0.8919395, size.width * 0.2914844, size.height * 0.8816121, size.width * 0.2916406, size.height * 0.8828715);
    path8.close();

    Paint paint8fill = Paint()..style = PaintingStyle.fill;
    paint8fill.color = Color(0xff231F20).withOpacity(1.0);
    canvas.drawPath(path8, paint8fill);

    Path path9 = Path();
    path9.moveTo(size.width * 0.2935937, size.height * 0.9060453);
    path9.cubicTo(size.width * 0.2935937, size.height * 0.9060453, size.width * 0.2925000, size.height * 0.9183879, size.width * 0.2946094, size.height * 0.9224181);
    path9.cubicTo(size.width * 0.2966406, size.height * 0.9264484, size.width * 0.2987500, size.height * 0.9249370, size.width * 0.3021094, size.height * 0.9229219);
    path9.cubicTo(size.width * 0.3064063, size.height * 0.9201511, size.width * 0.3135156, size.height * 0.9382872, size.width * 0.3050000, size.height * 0.9382872);
    path9.cubicTo(size.width * 0.3037500, size.height * 0.9382872, size.width * 0.2967188, size.height * 0.9377834, size.width * 0.2933594, size.height * 0.9299748);
    path9.cubicTo(size.width * 0.2917188, size.height * 0.9261965, size.width * 0.2917188, size.height * 0.9161209, size.width * 0.2921875, size.height * 0.9130982);
    path9.lineTo(size.width * 0.2935937, size.height * 0.9060453);
    path9.close();

    Paint paint9fill = Paint()..style = PaintingStyle.fill;
    paint9fill.color = Color(0xff231F20).withOpacity(1.0);
    canvas.drawPath(path9, paint9fill);

    Path path10 = Path();
    path10.moveTo(size.width * 0.2960937, size.height * 0.9166247);
    path10.cubicTo(size.width * 0.3039844, size.height * 0.8896725, size.width * 0.3198437, size.height * 0.8284635, size.width * 0.3299219, size.height * 0.7743073);
    path10.cubicTo(size.width * 0.3299219, size.height * 0.7740554, size.width * 0.3300000, size.height * 0.7740554, size.width * 0.3300000, size.height * 0.7738035);
    path10.lineTo(size.width * 0.3347656, size.height * 0.7486146);
    path10.cubicTo(size.width * 0.3403125, size.height * 0.7193955, size.width * 0.3410938, size.height * 0.6886650, size.width * 0.3366406, size.height * 0.6801008);
    path10.lineTo(size.width * 0.3351563, size.height * 0.6770781);
    path10.cubicTo(size.width * 0.3307031, size.height * 0.6682620, size.width * 0.3185938, size.height * 0.6727960, size.width * 0.3185156, size.height * 0.6730479);
    path10.cubicTo(size.width * 0.2975781, size.height * 0.7826196, size.width * 0.2925781, size.height * 0.8639798, size.width * 0.2888281, size.height * 0.8987406);
    path10.cubicTo(size.width * 0.2888281, size.height * 0.8989924, size.width * 0.2928906, size.height * 0.9171285, size.width * 0.2960937, size.height * 0.9166247);
    path10.close();

    Paint paint10fill = Paint()..style = PaintingStyle.fill;
    paint10fill.color = Color(0xff184656).withOpacity(1.0);
    canvas.drawPath(path10, paint10fill);

    Path path11 = Path();
    path11.moveTo(size.width * 0.3293750, size.height * 0.4035264);
    path11.cubicTo(size.width * 0.3237500, size.height * 0.3682620, size.width * 0.3103125, size.height * 0.3765743, size.width * 0.2995313, size.height * 0.3896725);
    path11.cubicTo(size.width * 0.2995313, size.height * 0.3896725, size.width * 0.2964844, size.height * 0.3934509, size.width * 0.2964844, size.height * 0.3934509);
    path11.cubicTo(size.width * 0.2807813, size.height * 0.4123426, size.width * 0.2867188, size.height * 0.4758186, size.width * 0.2928125, size.height * 0.5224181);
    path11.cubicTo(size.width * 0.2974219, size.height * 0.5576826, size.width * 0.3160938, size.height * 0.7005038, size.width * 0.3234375, size.height * 0.7196474);
    path11.cubicTo(size.width * 0.3263281, size.height * 0.7272040, size.width * 0.3346094, size.height * 0.7274559, size.width * 0.3360938, size.height * 0.7254408);
    path11.cubicTo(size.width * 0.3376563, size.height * 0.7236776, size.width * 0.3389063, size.height * 0.7171285, size.width * 0.3395313, size.height * 0.7050378);
    path11.cubicTo(size.width * 0.3415625, size.height * 0.6677582, size.width * 0.3407031, size.height * 0.6020151, size.width * 0.3394531, size.height * 0.5627204);
    path11.cubicTo(size.width * 0.3384375, size.height * 0.5302267, size.width * 0.3358594, size.height * 0.4440806, size.width * 0.3293750, size.height * 0.4035264);
    path11.close();

    Paint paint11fill = Paint()..style = PaintingStyle.fill;
    paint11fill.color = Color(0xff184656).withOpacity(1.0);
    canvas.drawPath(path11, paint11fill);

    Path path12 = Path();
    path12.moveTo(size.width * 0.3197656, size.height * 0.08362720);
    path12.cubicTo(size.width * 0.3228906, size.height * 0.1010076, size.width * 0.3225781, size.height * 0.1335013, size.width * 0.3205469, size.height * 0.1365239);
    path12.cubicTo(size.width * 0.3161719, size.height * 0.1430730, size.width * 0.3067969, size.height * 0.1309824, size.width * 0.3036719, size.height * 0.1136020);
    path12.cubicTo(size.width * 0.3005469, size.height * 0.09622166, size.width * 0.3016406, size.height * 0.07531486, size.width * 0.3060937, size.height * 0.06700252);
    path12.cubicTo(size.width * 0.3104687, size.height * 0.05894207, size.width * 0.3166406, size.height * 0.06624685, size.width * 0.3197656, size.height * 0.08362720);
    path12.close();

    Paint paint12fill = Paint()..style = PaintingStyle.fill;
    paint12fill.color = Color(0xffF0A5A6).withOpacity(1.0);
    canvas.drawPath(path12, paint12fill);

    Path path13 = Path();
    path13.moveTo(size.width * 0.3146094, size.height * 0.1612091);
    path13.lineTo(size.width * 0.3061719, size.height * 0.1612091);
    path13.lineTo(size.width * 0.3061719, size.height * 0.1201511);
    path13.lineTo(size.width * 0.3158594, size.height * 0.1219144);
    path13.cubicTo(size.width * 0.3159375, size.height * 0.1219144, size.width * 0.3134375, size.height * 0.1433249, size.width * 0.3146094, size.height * 0.1612091);
    path13.close();

    Paint paint13fill = Paint()..style = PaintingStyle.fill;
    paint13fill.color = Color(0xffF0A5A6).withOpacity(1.0);
    canvas.drawPath(path13, paint13fill);

    Path path14 = Path();
    path14.moveTo(size.width * 0.3183594, size.height * 0.08614610);
    path14.cubicTo(size.width * 0.3183594, size.height * 0.08614610, size.width * 0.3221875, size.height * 0.09219144, size.width * 0.3234375, size.height * 0.09269521);
    path14.cubicTo(size.width * 0.3246875, size.height * 0.09319899, size.width * 0.3253125, size.height * 0.09471033, size.width * 0.3241406, size.height * 0.09924433);
    path14.cubicTo(size.width * 0.3230469, size.height * 0.1037783, size.width * 0.3210938, size.height * 0.1055416, size.width * 0.3210938, size.height * 0.1055416);
    path14.lineTo(size.width * 0.3183594, size.height * 0.08614610);
    path14.close();

    Paint paint14fill = Paint()..style = PaintingStyle.fill;
    paint14fill.color = Color(0xffF0A5A6).withOpacity(1.0);
    canvas.drawPath(path14, paint14fill);

    Path path15 = Path();
    path15.moveTo(size.width * 0.3750000, size.height * 0.2463476);
    path15.cubicTo(size.width * 0.3748438, size.height * 0.2438287, size.width * 0.3740625, size.height * 0.2420655, size.width * 0.3732031, size.height * 0.2423174);
    path15.cubicTo(size.width * 0.3680469, size.height * 0.2445844, size.width * 0.3537500, size.height * 0.2528967, size.width * 0.3523438, size.height * 0.2551637);
    path15.cubicTo(size.width * 0.3510156, size.height * 0.2571788, size.width * 0.3344531, size.height * 0.2209068, size.width * 0.3335156, size.height * 0.2168766);
    path15.cubicTo(size.width * 0.3271875, size.height * 0.2115869, size.width * 0.3335156, size.height * 0.2554156, size.width * 0.3308594, size.height * 0.2672544);
    path15.cubicTo(size.width * 0.3328906, size.height * 0.2785894, size.width * 0.3451562, size.height * 0.2901763, size.width * 0.3451562, size.height * 0.2901763);
    path15.cubicTo(size.width * 0.3525781, size.height * 0.2959698, size.width * 0.3696094, size.height * 0.2715365, size.width * 0.3749219, size.height * 0.2622166);
    path15.cubicTo(size.width * 0.3755469, size.height * 0.2612091, size.width * 0.3759375, size.height * 0.2586902, size.width * 0.3757031, size.height * 0.2564232);
    path15.lineTo(size.width * 0.3750000, size.height * 0.2463476);
    path15.close();

    Paint paint15fill = Paint()..style = PaintingStyle.fill;
    paint15fill.color = Color(0xff399AAA).withOpacity(1.0);
    canvas.drawPath(path15, paint15fill);

    Path path16 = Path();
    path16.moveTo(size.width * 0.3376562, size.height * 0.2607053);
    path16.cubicTo(size.width * 0.3364062, size.height * 0.2649874, size.width * 0.3348437, size.height * 0.2705290, size.width * 0.3335156, size.height * 0.2748111);
    path16.cubicTo(size.width * 0.3267969, size.height * 0.2637280, size.width * 0.3228906, size.height * 0.2607053, size.width * 0.3149219, size.height * 0.2387909);
    path16.cubicTo(size.width * 0.3076562, size.height * 0.2166247, size.width * 0.3007031, size.height * 0.2098237, size.width * 0.3021875, size.height * 0.1848866);
    path16.cubicTo(size.width * 0.3037500, size.height * 0.1659950, size.width * 0.3121094, size.height * 0.1602015, size.width * 0.3121875, size.height * 0.1602015);
    path16.cubicTo(size.width * 0.3207031, size.height * 0.1722922, size.width * 0.3339844, size.height * 0.2156171, size.width * 0.3421875, size.height * 0.2455919);
    path16.cubicTo(size.width * 0.3409375, size.height * 0.2513854, size.width * 0.3391406, size.height * 0.2554156, size.width * 0.3376562, size.height * 0.2607053);
    path16.close();

    Paint paint16fill = Paint()..style = PaintingStyle.fill;
    paint16fill.color = Color(0xff399AAA).withOpacity(1.0);
    canvas.drawPath(path16, paint16fill);

    Path path17 = Path();
    path17.moveTo(size.width * 0.3035156, size.height * 0.1496222);
    path17.cubicTo(size.width * 0.3047656, size.height * 0.1471033, size.width * 0.3036719, size.height * 0.1438287, size.width * 0.3047656, size.height * 0.1438287);
    path17.lineTo(size.width * 0.3138281, size.height * 0.1471033);
    path17.cubicTo(size.width * 0.3166406, size.height * 0.1468514, size.width * 0.3152344, size.height * 0.1516373, size.width * 0.3157031, size.height * 0.1528967);
    path17.cubicTo(size.width * 0.3280469, size.height * 0.1874055, size.width * 0.3294531, size.height * 0.2911839, size.width * 0.3339844, size.height * 0.3788413);
    path17.cubicTo(size.width * 0.3340625, size.height * 0.3806045, size.width * 0.3341406, size.height * 0.3821159, size.width * 0.3341406, size.height * 0.3838791);
    path17.cubicTo(size.width * 0.3345313, size.height * 0.3866499, size.width * 0.3346875, size.height * 0.3896725, size.width * 0.3346094, size.height * 0.3926952);
    path17.cubicTo(size.width * 0.3339063, size.height * 0.4110831, size.width * 0.3232031, size.height * 0.4279597, size.width * 0.3099219, size.height * 0.4304786);
    path17.cubicTo(size.width * 0.2980469, size.height * 0.4327456, size.width * 0.2878906, size.height * 0.4229219, size.width * 0.2852344, size.height * 0.4073048);
    path17.cubicTo(size.width * 0.2852344, size.height * 0.4073048, size.width * 0.2852344, size.height * 0.4073048, size.width * 0.2852344, size.height * 0.4070529);
    path17.cubicTo(size.width * 0.2851562, size.height * 0.4068010, size.width * 0.2851562, size.height * 0.4062972, size.width * 0.2850781, size.height * 0.4060453);
    path17.cubicTo(size.width * 0.2844531, size.height * 0.4020151, size.width * 0.2842187, size.height * 0.3969773, size.width * 0.2842187, size.height * 0.3916877);
    path17.cubicTo(size.width * 0.2844531, size.height * 0.3574307, size.width * 0.2839844, size.height * 0.3249370, size.width * 0.2853906, size.height * 0.2962217);
    path17.cubicTo(size.width * 0.2896094, size.height * 0.1639798, size.width * 0.3030469, size.height * 0.1493703, size.width * 0.3035156, size.height * 0.1496222);
    path17.close();

    Paint paint17fill = Paint()..style = PaintingStyle.fill;
    paint17fill.color = Color(0xffE95F5C).withOpacity(1.0);
    canvas.drawPath(path17, paint17fill);

    Path path18 = Path();
    path18.moveTo(size.width * 0.3057031, size.height * 0.1178841);
    path18.cubicTo(size.width * 0.3057031, size.height * 0.1178841, size.width * 0.3069531, size.height * 0.1173804, size.width * 0.3069531, size.height * 0.1100756);
    path18.cubicTo(size.width * 0.3069531, size.height * 0.1047859, size.width * 0.3082813, size.height * 0.09974811, size.width * 0.3089844, size.height * 0.09924433);
    path18.cubicTo(size.width * 0.3097656, size.height * 0.09874055, size.width * 0.3118750, size.height * 0.09722922, size.width * 0.3123438, size.height * 0.08715365);
    path18.cubicTo(size.width * 0.3125000, size.height * 0.08362720, size.width * 0.3121094, size.height * 0.07808564, size.width * 0.3128906, size.height * 0.07506297);
    path18.cubicTo(size.width * 0.3131250, size.height * 0.07405542, size.width * 0.3135156, size.height * 0.07355164, size.width * 0.3138281, size.height * 0.07329975);
    path18.cubicTo(size.width * 0.3163281, size.height * 0.07052897, size.width * 0.3192187, size.height * 0.07279597, size.width * 0.3214844, size.height * 0.06775819);
    path18.cubicTo(size.width * 0.3236719, size.height * 0.06297229, size.width * 0.3232813, size.height * 0.05163728, size.width * 0.3209375, size.height * 0.04911839);
    path18.cubicTo(size.width * 0.3185156, size.height * 0.04659950, size.width * 0.3155469, size.height * 0.06020151, size.width * 0.3133594, size.height * 0.05843829);
    path18.cubicTo(size.width * 0.3122656, size.height * 0.05768262, size.width * 0.3116406, size.height * 0.05440806, size.width * 0.3107813, size.height * 0.05239295);
    path18.cubicTo(size.width * 0.3096875, size.height * 0.05012594, size.width * 0.3082813, size.height * 0.04937028, size.width * 0.3070313, size.height * 0.04937028);
    path18.cubicTo(size.width * 0.3042969, size.height * 0.04962217, size.width * 0.3017188, size.height * 0.05314861, size.width * 0.3003906, size.height * 0.06120907);
    path18.cubicTo(size.width * 0.2996094, size.height * 0.06599496, size.width * 0.2989063, size.height * 0.07128463, size.width * 0.2971875, size.height * 0.07304786);
    path18.cubicTo(size.width * 0.2962500, size.height * 0.07405542, size.width * 0.2953125, size.height * 0.07430730, size.width * 0.2943750, size.height * 0.07506297);
    path18.cubicTo(size.width * 0.2927344, size.height * 0.07657431, size.width * 0.2912500, size.height * 0.07984887, size.width * 0.2903906, size.height * 0.08438287);
    path18.cubicTo(size.width * 0.2884375, size.height * 0.09496222, size.width * 0.2909375, size.height * 0.1070529, size.width * 0.2939844, size.height * 0.1120907);
    path18.cubicTo(size.width * 0.2965625, size.height * 0.1161209, size.width * 0.2962500, size.height * 0.1219144, size.width * 0.2960937, size.height * 0.1264484);
    path18.cubicTo(size.width * 0.2959375, size.height * 0.1350126, size.width * 0.2992187, size.height * 0.1463476, size.width * 0.3035937, size.height * 0.1372796);
    path18.cubicTo(size.width * 0.3045313, size.height * 0.1403023, size.width * 0.3060937, size.height * 0.1390428, size.width * 0.3060937, size.height * 0.1390428);
    path18.lineTo(size.width * 0.3071094, size.height * 0.1297229);
    path18.cubicTo(size.width * 0.3072656, size.height * 0.1299748, size.width * 0.3057813, size.height * 0.1231738, size.width * 0.3057031, size.height * 0.1178841);
    path18.close();

    Paint paint18fill = Paint()..style = PaintingStyle.fill;
    paint18fill.color = Color(0xff0C232B).withOpacity(1.0);
    canvas.drawPath(path18, paint18fill);

    Path path19 = Path();
    path19.moveTo(size.width * 0.3059375, size.height * 0.1045340);
    path19.cubicTo(size.width * 0.3065625, size.height * 0.1100756, size.width * 0.3078125, size.height * 0.1136020, size.width * 0.3087500, size.height * 0.1125945);
    path19.cubicTo(size.width * 0.3096875, size.height * 0.1115869, size.width * 0.3100000, size.height * 0.1060453, size.width * 0.3093750, size.height * 0.1005038);
    path19.cubicTo(size.width * 0.3087500, size.height * 0.09496222, size.width * 0.3075000, size.height * 0.09143577, size.width * 0.3065625, size.height * 0.09244332);
    path19.cubicTo(size.width * 0.3056250, size.height * 0.09370277, size.width * 0.3053125, size.height * 0.09899244, size.width * 0.3059375, size.height * 0.1045340);
    path19.close();

    Paint paint19fill = Paint()..style = PaintingStyle.fill;
    paint19fill.color = Color(0xffF0A5A6).withOpacity(1.0);
    canvas.drawPath(path19, paint19fill);

    Path path20 = Path();
    path20.moveTo(size.width * 0.7640625, size.height * 0.8518892);
    path20.lineTo(size.width * 0.7689844, size.height * 0.8861461);
    path20.cubicTo(size.width * 0.7689844, size.height * 0.8861461, size.width * 0.7673437, size.height * 0.9007557, size.width * 0.7630469, size.height * 0.9020151);
    path20.lineTo(size.width * 0.7589063, size.height * 0.8677582);
    path20.cubicTo(size.width * 0.7588281, size.height * 0.8677582, size.width * 0.7639844, size.height * 0.8506297, size.width * 0.7640625, size.height * 0.8518892);
    path20.close();

    Paint paint20fill = Paint()..style = PaintingStyle.fill;
    paint20fill.color = Color(0xff231F20).withOpacity(1.0);
    canvas.drawPath(path20, paint20fill);

    Path path21 = Path();
    path21.moveTo(size.width * 0.7604688, size.height * 0.8798489);
    path21.cubicTo(size.width * 0.7604688, size.height * 0.8798489, size.width * 0.7626562, size.height * 0.8911839, size.width * 0.7618750, size.height * 0.8982368);
    path21.cubicTo(size.width * 0.7610937, size.height * 0.9052897, size.width * 0.7592187, size.height * 0.9085642, size.width * 0.7562500, size.height * 0.9136020);
    path21.cubicTo(size.width * 0.7524219, size.height * 0.9201511, size.width * 0.7505469, size.height * 0.9481108, size.width * 0.7570312, size.height * 0.9309824);
    path21.cubicTo(size.width * 0.7579687, size.height * 0.9284635, size.width * 0.7632031, size.height * 0.9141058, size.width * 0.7642969, size.height * 0.9012594);
    path21.cubicTo(size.width * 0.7648437, size.height * 0.8949622, size.width * 0.7628125, size.height * 0.8874055, size.width * 0.7619531, size.height * 0.8861461);
    path21.lineTo(size.width * 0.7604688, size.height * 0.8798489);
    path21.close();

    Paint paint21fill = Paint()..style = PaintingStyle.fill;
    paint21fill.color = Color(0xff231F20).withOpacity(1.0);
    canvas.drawPath(path21, paint21fill);

    Path path22 = Path();
    path22.moveTo(size.width * 0.7578906, size.height * 0.8863980);
    path22.cubicTo(size.width * 0.7497656, size.height * 0.8649874, size.width * 0.7179688, size.height * 0.7365239, size.width * 0.7179688, size.height * 0.7365239);
    path22.cubicTo(size.width * 0.7118750, size.height * 0.7123426, size.width * 0.7114844, size.height * 0.6926952, size.width * 0.7152344, size.height * 0.6828715);
    path22.lineTo(size.width * 0.7164844, size.height * 0.6795970);
    path22.cubicTo(size.width * 0.7202344, size.height * 0.6700252, size.width * 0.7313281, size.height * 0.6692695, size.width * 0.7314063, size.height * 0.6695214);
    path22.cubicTo(size.width * 0.7531250, size.height * 0.7556675, size.width * 0.7626563, size.height * 0.8211587, size.width * 0.7676563, size.height * 0.8534005);
    path22.cubicTo(size.width * 0.7682031, size.height * 0.8569270, size.width * 0.7681250, size.height * 0.8609572, size.width * 0.7675000, size.height * 0.8644836);
    path22.cubicTo(size.width * 0.7658594, size.height * 0.8727960, size.width * 0.7623437, size.height * 0.8874055, size.width * 0.7578906, size.height * 0.8863980);
    path22.close();

    Paint paint22fill = Paint()..style = PaintingStyle.fill;
    paint22fill.color = Color(0xff134E75).withOpacity(1.0);
    canvas.drawPath(path22, paint22fill);

    Path path23 = Path();
    path23.moveTo(size.width * 0.6889062, size.height * 0.8876574);
    path23.lineTo(size.width * 0.6875000, size.height * 0.9251889);
    path23.cubicTo(size.width * 0.6875000, size.height * 0.9251889, size.width * 0.6837500, size.height * 0.9350126, size.width * 0.6798438, size.height * 0.9287154);
    path23.lineTo(size.width * 0.6818750, size.height * 0.8924433);
    path23.cubicTo(size.width * 0.6818750, size.height * 0.8924433, size.width * 0.6890625, size.height * 0.8863980, size.width * 0.6889062, size.height * 0.8876574);
    path23.close();

    Paint paint23fill = Paint()..style = PaintingStyle.fill;
    paint23fill.color = Color(0xff231F20).withOpacity(1.0);
    canvas.drawPath(path23, paint23fill);

    Path path24 = Path();
    path24.moveTo(size.width * 0.6813281, size.height * 0.9052897);
    path24.cubicTo(size.width * 0.6813281, size.height * 0.9052897, size.width * 0.6813281, size.height * 0.9186398, size.width * 0.6795313, size.height * 0.9234257);
    path24.cubicTo(size.width * 0.6776563, size.height * 0.9282116, size.width * 0.6755469, size.height * 0.9277078, size.width * 0.6722656, size.height * 0.9269521);
    path24.cubicTo(size.width * 0.6679688, size.height * 0.9259446, size.width * 0.6617969, size.height * 0.9465995, size.width * 0.6700781, size.height * 0.9430730);
    path24.cubicTo(size.width * 0.6713281, size.height * 0.9425693, size.width * 0.6780469, size.height * 0.9392947, size.width * 0.6810938, size.height * 0.9299748);
    path24.cubicTo(size.width * 0.6825781, size.height * 0.9254408, size.width * 0.6821094, size.height * 0.9158690, size.width * 0.6815625, size.height * 0.9130982);
    path24.lineTo(size.width * 0.6813281, size.height * 0.9052897);
    path24.close();

    Paint paint24fill = Paint()..style = PaintingStyle.fill;
    paint24fill.color = Color(0xff231F20).withOpacity(1.0);
    canvas.drawPath(path24, paint24fill);

    Path path25 = Path();
    path25.moveTo(size.width * 0.6797656, size.height * 0.9010076);
    path25.cubicTo(size.width * 0.6731250, size.height * 0.8528967, size.width * 0.6713281, size.height * 0.7105793, size.width * 0.6725781, size.height * 0.6833753);
    path25.cubicTo(size.width * 0.6725781, size.height * 0.6833753, size.width * 0.6960937, size.height * 0.6783375, size.width * 0.6960937, size.height * 0.6783375);
    path25.cubicTo(size.width * 0.6961719, size.height * 0.7254408, size.width * 0.6939063, size.height * 0.8483627, size.width * 0.6914844, size.height * 0.8889169);
    path25.cubicTo(size.width * 0.6912500, size.height * 0.8934509, size.width * 0.6901563, size.height * 0.8972292, size.width * 0.6887500, size.height * 0.8984887);
    path25.cubicTo(size.width * 0.6860938, size.height * 0.9010076, size.width * 0.6814844, size.height * 0.9042821, size.width * 0.6797656, size.height * 0.9010076);
    path25.close();

    Paint paint25fill = Paint()..style = PaintingStyle.fill;
    paint25fill.color = Color(0xff134E75).withOpacity(1.0);
    canvas.drawPath(path25, paint25fill);

    Path path26 = Path();
    path26.moveTo(size.width * 0.6151562, size.height * 0.2735516);
    path26.cubicTo(size.width * 0.6151562, size.height * 0.2735516, size.width * 0.6191406, size.height * 0.2712846, size.width * 0.6196094, size.height * 0.2717884);
    path26.cubicTo(size.width * 0.6197656, size.height * 0.2720403, size.width * 0.6211719, size.height * 0.2720403, size.width * 0.6214844, size.height * 0.2801008);
    path26.cubicTo(size.width * 0.6216406, size.height * 0.2831234, size.width * 0.6214844, size.height * 0.2866499, size.width * 0.6207031, size.height * 0.2884131);
    path26.cubicTo(size.width * 0.6202344, size.height * 0.2894207, size.width * 0.6182813, size.height * 0.2896725, size.width * 0.6170312, size.height * 0.2901763);
    path26.cubicTo(size.width * 0.6169531, size.height * 0.2921914, size.width * 0.6167187, size.height * 0.2931990, size.width * 0.6164063, size.height * 0.2942065);
    path26.cubicTo(size.width * 0.6155469, size.height * 0.2969773, size.width * 0.6149219, size.height * 0.2984887, size.width * 0.6132813, size.height * 0.3002519);
    path26.cubicTo(size.width * 0.6116406, size.height * 0.3020151, size.width * 0.6093750, size.height * 0.3047859, size.width * 0.6076563, size.height * 0.3037783);
    path26.cubicTo(size.width * 0.6059375, size.height * 0.3027708, size.width * 0.6063281, size.height * 0.2994962, size.width * 0.6063281, size.height * 0.2994962);
    path26.cubicTo(size.width * 0.6063281, size.height * 0.2994962, size.width * 0.6056250, size.height * 0.2997481, size.width * 0.6051562, size.height * 0.2979849);
    path26.cubicTo(size.width * 0.6046875, size.height * 0.2959698, size.width * 0.6049219, size.height * 0.2937028, size.width * 0.6049219, size.height * 0.2937028);
    path26.cubicTo(size.width * 0.6049219, size.height * 0.2937028, size.width * 0.6040625, size.height * 0.2929471, size.width * 0.6037500, size.height * 0.2911839);
    path26.cubicTo(size.width * 0.6034375, size.height * 0.2894207, size.width * 0.6035937, size.height * 0.2869018, size.width * 0.6035937, size.height * 0.2869018);
    path26.cubicTo(size.width * 0.6035937, size.height * 0.2869018, size.width * 0.6025000, size.height * 0.2871537, size.width * 0.6022656, size.height * 0.2843829);
    path26.cubicTo(size.width * 0.6020312, size.height * 0.2816121, size.width * 0.6034375, size.height * 0.2780856, size.width * 0.6039062, size.height * 0.2773300);
    path26.cubicTo(size.width * 0.6043750, size.height * 0.2765743, size.width * 0.6053125, size.height * 0.2753149, size.width * 0.6053125, size.height * 0.2753149);
    path26.cubicTo(size.width * 0.6053125, size.height * 0.2753149, size.width * 0.6039844, size.height * 0.2712846, size.width * 0.6045312, size.height * 0.2700252);
    path26.cubicTo(size.width * 0.6048437, size.height * 0.2692695, size.width * 0.6068750, size.height * 0.2692695, size.width * 0.6082812, size.height * 0.2667506);
    path26.cubicTo(size.width * 0.6098437, size.height * 0.2637280, size.width * 0.6117187, size.height * 0.2659950, size.width * 0.6123437, size.height * 0.2670025);
    path26.cubicTo(size.width * 0.6138281, size.height * 0.2695214, size.width * 0.6151562, size.height * 0.2735516, size.width * 0.6151562, size.height * 0.2735516);
    path26.close();

    Paint paint26fill = Paint()..style = PaintingStyle.fill;
    paint26fill.color = Color(0xffF0A5A6).withOpacity(1.0);
    canvas.drawPath(path26, paint26fill);

    Path path27 = Path();
    path27.moveTo(size.width * 0.7258594, size.height * 0.1025189);
    path27.cubicTo(size.width * 0.7244531, size.height * 0.09143577, size.width * 0.7210156, size.height * 0.09571788, size.width * 0.7210156, size.height * 0.09571788);
    path27.cubicTo(size.width * 0.7210156, size.height * 0.09571788, size.width * 0.7231250, size.height * 0.08161209, size.width * 0.7200000, size.height * 0.07581864);
    path27.cubicTo(size.width * 0.7167969, size.height * 0.07002519, size.width * 0.7154688, size.height * 0.07984887, size.width * 0.7137500, size.height * 0.07808564);
    path27.cubicTo(size.width * 0.7123438, size.height * 0.07657431, size.width * 0.7124219, size.height * 0.07304786, size.width * 0.7117187, size.height * 0.07103275);
    path27.cubicTo(size.width * 0.7114063, size.height * 0.07279597, size.width * 0.7110156, size.height * 0.07455919, size.width * 0.7103906, size.height * 0.07607053);
    path27.cubicTo(size.width * 0.7078906, size.height * 0.08136020, size.width * 0.7050000, size.height * 0.08438287, size.width * 0.7026562, size.height * 0.09017632);
    path27.cubicTo(size.width * 0.7021875, size.height * 0.09143577, size.width * 0.7015625, size.height * 0.09193955, size.width * 0.7010156, size.height * 0.09193955);
    path27.cubicTo(size.width * 0.7010156, size.height * 0.09193955, size.width * 0.7010156, size.height * 0.09193955, size.width * 0.7010156, size.height * 0.09193955);
    path27.cubicTo(size.width * 0.7004687, size.height * 0.09294710, size.width * 0.6999219, size.height * 0.09345088, size.width * 0.6992969, size.height * 0.09345088);
    path27.cubicTo(size.width * 0.7004687, size.height * 0.09848866, size.width * 0.7023437, size.height * 0.1010076, size.width * 0.7058594, size.height * 0.09874055);
    path27.cubicTo(size.width * 0.7095312, size.height * 0.09622166, size.width * 0.7105469, size.height * 0.1012594, size.width * 0.7106250, size.height * 0.1100756);
    path27.cubicTo(size.width * 0.7107031, size.height * 0.1188917, size.width * 0.7117969, size.height * 0.1221662, size.width * 0.7117969, size.height * 0.1221662);
    path27.cubicTo(size.width * 0.7117969, size.height * 0.1221662, size.width * 0.7142969, size.height * 0.1171285, size.width * 0.7147656, size.height * 0.1269521);
    path27.cubicTo(size.width * 0.7152344, size.height * 0.1367758, size.width * 0.7127344, size.height * 0.1403023, size.width * 0.7127344, size.height * 0.1403023);
    path27.cubicTo(size.width * 0.7127344, size.height * 0.1403023, size.width * 0.7127344, size.height * 0.1440806, size.width * 0.7123437, size.height * 0.1516373);
    path27.cubicTo(size.width * 0.7119531, size.height * 0.1594458, size.width * 0.7121875, size.height * 0.1602015, size.width * 0.7142187, size.height * 0.1584383);
    path27.cubicTo(size.width * 0.7168750, size.height * 0.1559194, size.width * 0.7190625, size.height * 0.1521411, size.width * 0.7205469, size.height * 0.1453401);
    path27.cubicTo(size.width * 0.7220312, size.height * 0.1387909, size.width * 0.7221094, size.height * 0.1317380, size.width * 0.7209375, size.height * 0.1299748);
    path27.cubicTo(size.width * 0.7207813, size.height * 0.1294710, size.width * 0.7271875, size.height * 0.1125945, size.width * 0.7258594, size.height * 0.1025189);
    path27.close();

    Paint paint27fill = Paint()..style = PaintingStyle.fill;
    paint27fill.color = Color(0xff0C232B).withOpacity(1.0);
    canvas.drawPath(path27, paint27fill);

    Path path28 = Path();
    path28.moveTo(size.width * 0.7039062, size.height * 0.4161209);
    path28.cubicTo(size.width * 0.7062500, size.height * 0.3770781, size.width * 0.7478125, size.height * 0.3377834, size.width * 0.7410937, size.height * 0.5035264);
    path28.cubicTo(size.width * 0.7395312, size.height * 0.5415617, size.width * 0.7335156, size.height * 0.6848866, size.width * 0.7284375, size.height * 0.7105793);
    path28.cubicTo(size.width * 0.7264062, size.height * 0.7206549, size.width * 0.7169531, size.height * 0.7322418, size.width * 0.7160937, size.height * 0.7284635);
    path28.cubicTo(size.width * 0.7153125, size.height * 0.7249370, size.width * 0.7136719, size.height * 0.7181360, size.width * 0.7121875, size.height * 0.7075567);
    path28.cubicTo(size.width * 0.7076563, size.height * 0.6740554, size.width * 0.7085156, size.height * 0.6158690, size.width * 0.7067188, size.height * 0.5775819);
    path28.cubicTo(size.width * 0.7052344, size.height * 0.5455919, size.width * 0.7011719, size.height * 0.4609572, size.width * 0.7039062, size.height * 0.4161209);
    path28.close();

    Paint paint28fill = Paint()..style = PaintingStyle.fill;
    paint28fill.color = Color(0xff134E75).withOpacity(1.0);
    canvas.drawPath(path28, paint28fill);

    Path path29 = Path();
    path29.moveTo(size.width * 0.6782031, size.height * 0.4773300);
    path29.cubicTo(size.width * 0.6812500, size.height * 0.4390428, size.width * 0.6828906, size.height * 0.4085642, size.width * 0.6895313, size.height * 0.3919395);
    path29.cubicTo(size.width * 0.6895313, size.height * 0.3919395, size.width * 0.7262500, size.height * 0.4100756, size.width * 0.7262500, size.height * 0.4100756);
    path29.cubicTo(size.width * 0.7297656, size.height * 0.4589421, size.width * 0.7154688, size.height * 0.4982368, size.width * 0.7052344, size.height * 0.5853904);
    path29.cubicTo(size.width * 0.7034375, size.height * 0.6005038, size.width * 0.6987500, size.height * 0.6624685, size.width * 0.6960937, size.height * 0.6967254);
    path29.cubicTo(size.width * 0.6935156, size.height * 0.7302267, size.width * 0.6844531, size.height * 0.7400504, size.width * 0.6800781, size.height * 0.7345088);
    path29.cubicTo(size.width * 0.6728906, size.height * 0.7256927, size.width * 0.6726562, size.height * 0.7005038, size.width * 0.6725000, size.height * 0.6957179);
    path29.cubicTo(size.width * 0.6710156, size.height * 0.6458438, size.width * 0.6755469, size.height * 0.5108312, size.width * 0.6782031, size.height * 0.4773300);
    path29.close();

    Paint paint29fill = Paint()..style = PaintingStyle.fill;
    paint29fill.color = Color(0xff134E75).withOpacity(1.0);
    canvas.drawPath(path29, paint29fill);

    Path path30 = Path();
    path30.moveTo(size.width * 0.7216406, size.height * 0.2390428);
    path30.cubicTo(size.width * 0.7179688, size.height * 0.2198992, size.width * 0.7210937, size.height * 0.1697733, size.width * 0.7210937, size.height * 0.1697733);
    path30.cubicTo(size.width * 0.7300781, size.height * 0.1544081, size.width * 0.7409375, size.height * 0.1957179, size.width * 0.7447656, size.height * 0.2226700);
    path30.cubicTo(size.width * 0.7532031, size.height * 0.2659950, size.width * 0.7569531, size.height * 0.3070529, size.width * 0.7577344, size.height * 0.3198992);
    path30.cubicTo(size.width * 0.7585156, size.height * 0.3335013, size.width * 0.7553125, size.height * 0.3617128, size.width * 0.7532812, size.height * 0.3584383);
    path30.cubicTo(size.width * 0.7496094, size.height * 0.3526448, size.width * 0.7331250, size.height * 0.2821159, size.width * 0.7232812, size.height * 0.2710327);
    path30.cubicTo(size.width * 0.7232812, size.height * 0.2707809, size.width * 0.7216406, size.height * 0.2390428, size.width * 0.7216406, size.height * 0.2390428);
    path30.close();

    Paint paint30fill = Paint()..style = PaintingStyle.fill;
    paint30fill.color = Color(0xffE95F5C).withOpacity(1.0);
    canvas.drawPath(path30, paint30fill);

    Path path31 = Path();
    path31.moveTo(size.width * 0.6951562, size.height * 0.1685139);
    path31.cubicTo(size.width * 0.6951562, size.height * 0.1685139, size.width * 0.7165625, size.height * 0.1934509, size.width * 0.7115625, size.height * 0.2073048);
    path31.lineTo(size.width * 0.6973437, size.height * 0.2428212);
    path31.cubicTo(size.width * 0.6973437, size.height * 0.2428212, size.width * 0.6972656, size.height * 0.2428212, size.width * 0.6972656, size.height * 0.2430730);
    path31.cubicTo(size.width * 0.6860156, size.height * 0.2748111, size.width * 0.6661719, size.height * 0.2982368, size.width * 0.6622656, size.height * 0.2994962);
    path31.cubicTo(size.width * 0.6601562, size.height * 0.3002519, size.width * 0.6557812, size.height * 0.2692695, size.width * 0.6618750, size.height * 0.2551637);
    path31.cubicTo(size.width * 0.6677344, size.height * 0.2428212, size.width * 0.6868750, size.height * 0.1863980, size.width * 0.6951562, size.height * 0.1685139);
    path31.close();

    Paint paint31fill = Paint()..style = PaintingStyle.fill;
    paint31fill.color = Color(0xffE95F5C).withOpacity(1.0);
    canvas.drawPath(path31, paint31fill);

    Path path32 = Path();
    path32.moveTo(size.width * 0.7075000, size.height * 0.1811083);
    path32.cubicTo(size.width * 0.7096094, size.height * 0.1798489, size.width * 0.7116406, size.height * 0.1760705, size.width * 0.7134375, size.height * 0.1707809);
    path32.lineTo(size.width * 0.7132812, size.height * 0.1768262);
    path32.lineTo(size.width * 0.7091406, size.height * 0.2027708);
    path32.lineTo(size.width * 0.7054687, size.height * 0.1816121);
    path32.cubicTo(size.width * 0.7061719, size.height * 0.1816121, size.width * 0.7067969, size.height * 0.1813602, size.width * 0.7075000, size.height * 0.1811083);
    path32.close();

    Paint paint32fill = Paint()..style = PaintingStyle.fill;
    paint32fill.color = Color(0xffC080B1).withOpacity(1.0);
    canvas.drawPath(path32, paint32fill);

    Path path33 = Path();
    path33.moveTo(size.width * 0.6186719, size.height * 0.2816121);
    path33.lineTo(size.width * 0.6187500, size.height * 0.2743073);
    path33.cubicTo(size.width * 0.6188281, size.height * 0.2670025, size.width * 0.6209375, size.height * 0.2612091, size.width * 0.6233594, size.height * 0.2614610);
    path33.cubicTo(size.width * 0.6526562, size.height * 0.2647355, size.width * 0.6617969, size.height * 0.2541562, size.width * 0.6617969, size.height * 0.2541562);
    path33.cubicTo(size.width * 0.6801563, size.height * 0.2455919, size.width * 0.6686719, size.height * 0.3037783, size.width * 0.6587500, size.height * 0.3012594);
    path33.cubicTo(size.width * 0.6587500, size.height * 0.3012594, size.width * 0.6265625, size.height * 0.2982368, size.width * 0.6220313, size.height * 0.2952141);
    path33.cubicTo(size.width * 0.6200000, size.height * 0.2939547, size.width * 0.6185156, size.height * 0.2881612, size.width * 0.6186719, size.height * 0.2816121);
    path33.close();

    Paint paint33fill = Paint()..style = PaintingStyle.fill;
    paint33fill.color = Color(0xffE95F5C).withOpacity(1.0);
    canvas.drawPath(path33, paint33fill);

    Path path34 = Path();
    path34.moveTo(size.width * 0.7047656, size.height * 0.1596977);
    path34.cubicTo(size.width * 0.7028906, size.height * 0.1596977, size.width * 0.6953906, size.height * 0.1795970, size.width * 0.6914063, size.height * 0.2188917);
    path34.cubicTo(size.width * 0.6879688, size.height * 0.2526448, size.width * 0.6855469, size.height * 0.3408060, size.width * 0.6848437, size.height * 0.4022670);
    path34.cubicTo(size.width * 0.6846875, size.height * 0.4186398, size.width * 0.6962500, size.height * 0.4193955, size.width * 0.7092969, size.height * 0.4191436);
    path34.cubicTo(size.width * 0.7215625, size.height * 0.4188917, size.width * 0.7403125, size.height * 0.4171285, size.width * 0.7405469, size.height * 0.4025189);
    path34.cubicTo(size.width * 0.7409375, size.height * 0.3725441, size.width * 0.7300000, size.height * 0.2130982, size.width * 0.7285156, size.height * 0.1879093);
    path34.cubicTo(size.width * 0.7216406, size.height * 0.1579345, size.width * 0.7143750, size.height * 0.1629723, size.width * 0.7135938, size.height * 0.1619647);
    path34.lineTo(size.width * 0.7047656, size.height * 0.1596977);
    path34.close();

    Paint paint34fill = Paint()..style = PaintingStyle.fill;
    paint34fill.color = Color(0xffE95F5C).withOpacity(1.0);
    canvas.drawPath(path34, paint34fill);

    Path path35 = Path();
    path35.moveTo(size.width * 0.7044531, size.height * 0.1687657);
    path35.cubicTo(size.width * 0.7044531, size.height * 0.1687657, size.width * 0.7113281, size.height * 0.1833753, size.width * 0.7164844, size.height * 0.1644836);
    path35.lineTo(size.width * 0.7150781, size.height * 0.1491184);
    path35.lineTo(size.width * 0.7150000, size.height * 0.1337531);
    path35.lineTo(size.width * 0.7028125, size.height * 0.1463476);
    path35.cubicTo(size.width * 0.7028125, size.height * 0.1463476, size.width * 0.7049219, size.height * 0.1518892, size.width * 0.7044531, size.height * 0.1687657);
    path35.close();

    Paint paint35fill = Paint()..style = PaintingStyle.fill;
    paint35fill.color = Color(0xffF0A5A6).withOpacity(1.0);
    canvas.drawPath(path35, paint35fill);

    Path path36 = Path();
    path36.moveTo(size.width * 0.7112500, size.height * 0.1508816);
    path36.cubicTo(size.width * 0.7103125, size.height * 0.1559194, size.width * 0.7090625, size.height * 0.1652393, size.width * 0.7073437, size.height * 0.1675063);
    path36.cubicTo(size.width * 0.7064844, size.height * 0.1687657, size.width * 0.7054687, size.height * 0.1690176, size.width * 0.7045312, size.height * 0.1677582);
    path36.cubicTo(size.width * 0.7039844, size.height * 0.1561713, size.width * 0.7028125, size.height * 0.1463476, size.width * 0.7028125, size.height * 0.1463476);
    path36.lineTo(size.width * 0.7137500, size.height * 0.1340050);
    path36.cubicTo(size.width * 0.7131250, size.height * 0.1400504, size.width * 0.7122656, size.height * 0.1455919, size.width * 0.7112500, size.height * 0.1508816);
    path36.close();

    Paint paint36fill = Paint()..style = PaintingStyle.fill;
    paint36fill.color = Color(0xffCC7F7F).withOpacity(1.0);
    canvas.drawPath(path36, paint36fill);

    Path path37 = Path();
    path37.moveTo(size.width * 0.7001563, size.height * 0.09168766);
    path37.cubicTo(size.width * 0.6963281, size.height * 0.1324937, size.width * 0.7007813, size.height * 0.1516373, size.width * 0.7028125, size.height * 0.1534005);
    path37.cubicTo(size.width * 0.7071094, size.height * 0.1569270, size.width * 0.7150000, size.height * 0.1408060, size.width * 0.7168750, size.height * 0.1234257);
    path37.cubicTo(size.width * 0.7188281, size.height * 0.1060453, size.width * 0.7167187, size.height * 0.08765743, size.width * 0.7122656, size.height * 0.08261965);
    path37.cubicTo(size.width * 0.7078125, size.height * 0.07732997, size.width * 0.7017969, size.height * 0.07380353, size.width * 0.7001563, size.height * 0.09168766);
    path37.close();

    Paint paint37fill = Paint()..style = PaintingStyle.fill;
    paint37fill.color = Color(0xffF0A5A6).withOpacity(1.0);
    canvas.drawPath(path37, paint37fill);

    Path path38 = Path();
    path38.moveTo(size.width * 0.3782031, size.height * 0.2408060);
    path38.cubicTo(size.width * 0.3745313, size.height * 0.2911839, size.width * 0.3703906, size.height * 0.3483627, size.width * 0.3605469, size.height * 0.3801008);
    path38.cubicTo(size.width * 0.3341406, size.height * 0.4652393, size.width * 0.2984375, size.height * 0.4664987, size.width * 0.2378125, size.height * 0.4382872);
    path38.cubicTo(size.width * 0.2007031, size.height * 0.4211587, size.width * 0.1703906, size.height * 0.4367758, size.width * 0.1451562, size.height * 0.4861461);
    path38.cubicTo(size.width * 0.1238281, size.height * 0.5279597, size.width * 0.1064062, size.height * 0.5942065, size.width * 0.09171875, size.height * 0.6886650);
    path38.cubicTo(size.width * 0.07585937, size.height * 0.7911839, size.width * 0.04554687, size.height * 0.8503778, size.width * 0.01070312, size.height * 0.8831234);
    path38.lineTo(size.width * 0.01070312, size.height * 0.9070529);
    path38.cubicTo(size.width * 0.04812500, size.height * 0.8730479, size.width * 0.08093750, size.height * 0.8100756, size.width * 0.09812500, size.height * 0.6989924);
    path38.cubicTo(size.width * 0.1283594, size.height * 0.5040302, size.width * 0.1710937, size.height * 0.4307305, size.width * 0.2367188, size.height * 0.4612091);
    path38.cubicTo(size.width * 0.2623437, size.height * 0.4730479, size.width * 0.2892187, size.height * 0.4828715, size.width * 0.3119531, size.height * 0.4748111);
    path38.cubicTo(size.width * 0.3344531, size.height * 0.4667506, size.width * 0.3514844, size.height * 0.4418136, size.width * 0.3655469, size.height * 0.3964736);
    path38.cubicTo(size.width * 0.3768750, size.height * 0.3602015, size.width * 0.3812500, size.height * 0.2994962, size.width * 0.3851562, size.height * 0.2460957);
    path38.cubicTo(size.width * 0.3903906, size.height * 0.1732997, size.width * 0.4136719, size.height * 0.1836272, size.width * 0.4146875, size.height * 0.1841310);
    path38.lineTo(size.width * 0.4152344, size.height * 0.1727960);
    path38.lineTo(size.width * 0.4157813, size.height * 0.1614610);
    path38.cubicTo(size.width * 0.4051562, size.height * 0.1559194, size.width * 0.3835938, size.height * 0.1657431, size.width * 0.3782031, size.height * 0.2408060);
    path38.close();

    Paint paint38fill = Paint()..style = PaintingStyle.fill;
    paint38fill.color = Color(0xffE95F5C).withOpacity(1.0);
    canvas.drawPath(path38, paint38fill);

    Path path39 = Path();
    path39.moveTo(size.width * 0.4921094, size.height * 0.1357683);
    path39.lineTo(size.width * 0.4695313, size.height * 0.1357683);
    path39.cubicTo(size.width * 0.4684375, size.height * 0.1357683, size.width * 0.4675781, size.height * 0.1329975, size.width * 0.4675781, size.height * 0.1294710);
    path39.lineTo(size.width * 0.4675781, size.height * 0.1294710);
    path39.cubicTo(size.width * 0.4675781, size.height * 0.1259446, size.width * 0.4684375, size.height * 0.1231738, size.width * 0.4695313, size.height * 0.1231738);
    path39.lineTo(size.width * 0.4921094, size.height * 0.1231738);
    path39.cubicTo(size.width * 0.4932031, size.height * 0.1231738, size.width * 0.4940625, size.height * 0.1259446, size.width * 0.4940625, size.height * 0.1294710);
    path39.lineTo(size.width * 0.4940625, size.height * 0.1294710);
    path39.cubicTo(size.width * 0.4940625, size.height * 0.1327456, size.width * 0.4932031, size.height * 0.1357683, size.width * 0.4921094, size.height * 0.1357683);
    path39.close();

    Paint paint39fill = Paint()..style = PaintingStyle.fill;
    paint39fill.color = Color(0xffE95F5C).withOpacity(1.0);
    canvas.drawPath(path39, paint39fill);

    Path path40 = Path();
    path40.moveTo(size.width * 0.4921094, size.height * 0.2146096);
    path40.lineTo(size.width * 0.4695313, size.height * 0.2146096);
    path40.cubicTo(size.width * 0.4684375, size.height * 0.2146096, size.width * 0.4675781, size.height * 0.2118388, size.width * 0.4675781, size.height * 0.2083123);
    path40.lineTo(size.width * 0.4675781, size.height * 0.2083123);
    path40.cubicTo(size.width * 0.4675781, size.height * 0.2047859, size.width * 0.4684375, size.height * 0.2020151, size.width * 0.4695313, size.height * 0.2020151);
    path40.lineTo(size.width * 0.4921094, size.height * 0.2020151);
    path40.cubicTo(size.width * 0.4932031, size.height * 0.2020151, size.width * 0.4940625, size.height * 0.2047859, size.width * 0.4940625, size.height * 0.2083123);
    path40.lineTo(size.width * 0.4940625, size.height * 0.2083123);
    path40.cubicTo(size.width * 0.4940625, size.height * 0.2115869, size.width * 0.4932031, size.height * 0.2146096, size.width * 0.4921094, size.height * 0.2146096);
    path40.close();

    Paint paint40fill = Paint()..style = PaintingStyle.fill;
    paint40fill.color = Color(0xffE95F5C).withOpacity(1.0);
    canvas.drawPath(path40, paint40fill);

    Path path41 = Path();
    path41.moveTo(size.width * 0.4234375, size.height * 0.1904282);
    path41.lineTo(size.width * 0.4098438, size.height * 0.1843829);
    path41.cubicTo(size.width * 0.4084375, size.height * 0.1838791, size.width * 0.4073438, size.height * 0.1775819, size.width * 0.4073438, size.height * 0.1702771);
    path41.lineTo(size.width * 0.4073438, size.height * 0.1702771);
    path41.cubicTo(size.width * 0.4073438, size.height * 0.1632242, size.width * 0.4084375, size.height * 0.1569270, size.width * 0.4098438, size.height * 0.1561713);
    path41.lineTo(size.width * 0.4234375, size.height * 0.1501259);
    path41.cubicTo(size.width * 0.4266406, size.height * 0.1486146, size.width * 0.4296094, size.height * 0.1576826, size.width * 0.4296094, size.height * 0.1700252);
    path41.lineTo(size.width * 0.4296094, size.height * 0.1700252);
    path41.cubicTo(size.width * 0.4296094, size.height * 0.1828715, size.width * 0.4266406, size.height * 0.1916877, size.width * 0.4234375, size.height * 0.1904282);
    path41.close();

    Paint paint41fill = Paint()..style = PaintingStyle.fill;
    paint41fill.color = Color(0xff999999).withOpacity(1.0);
    canvas.drawPath(path41, paint41fill);

    Path path42 = Path();
    path42.moveTo(size.width * 0.4567188, size.height * 0.2239295);
    path42.lineTo(size.width * 0.4325000, size.height * 0.2239295);
    path42.cubicTo(size.width * 0.4282031, size.height * 0.2239295, size.width * 0.4247656, size.height * 0.2125945, size.width * 0.4247656, size.height * 0.1989924);
    path42.lineTo(size.width * 0.4247656, size.height * 0.1387909);
    path42.cubicTo(size.width * 0.4247656, size.height * 0.1249370, size.width * 0.4282813, size.height * 0.1138539, size.width * 0.4325000, size.height * 0.1138539);
    path42.lineTo(size.width * 0.4567188, size.height * 0.1138539);
    path42.cubicTo(size.width * 0.4610156, size.height * 0.1138539, size.width * 0.4644531, size.height * 0.1251889, size.width * 0.4644531, size.height * 0.1387909);
    path42.lineTo(size.width * 0.4644531, size.height * 0.1989924);
    path42.cubicTo(size.width * 0.4644531, size.height * 0.2125945, size.width * 0.4609375, size.height * 0.2239295, size.width * 0.4567188, size.height * 0.2239295);
    path42.close();

    Paint paint42fill = Paint()..style = PaintingStyle.fill;
    paint42fill.shader = ui.Gradient.linear(Offset(size.width * 0.4246751, size.height * 0.1687771), Offset(size.width * 0.4644594, size.height * 0.1687771),
        [Color(0xffCCCCCC).withOpacity(1.0), Color(0xff666666).withOpacity(1.0)], [0.3073, 0.8855]);
    canvas.drawPath(path42, paint42fill);

    Path path43 = Path();
    path43.moveTo(size.width * 0.4713281, size.height * 0.2352645);
    path43.lineTo(size.width * 0.4541406, size.height * 0.2352645);
    path43.cubicTo(size.width * 0.4519531, size.height * 0.2352645, size.width * 0.4502344, size.height * 0.2294710, size.width * 0.4502344, size.height * 0.2226700);
    path43.lineTo(size.width * 0.4502344, size.height * 0.1151134);
    path43.cubicTo(size.width * 0.4502344, size.height * 0.1080605, size.width * 0.4520312, size.height * 0.1025189, size.width * 0.4541406, size.height * 0.1025189);
    path43.lineTo(size.width * 0.4713281, size.height * 0.1025189);
    path43.cubicTo(size.width * 0.4735156, size.height * 0.1025189, size.width * 0.4752344, size.height * 0.1083123, size.width * 0.4752344, size.height * 0.1151134);
    path43.lineTo(size.width * 0.4752344, size.height * 0.2226700);
    path43.cubicTo(size.width * 0.4752344, size.height * 0.2294710, size.width * 0.4734375, size.height * 0.2352645, size.width * 0.4713281, size.height * 0.2352645);
    path43.close();

    Paint paint43fill = Paint()..style = PaintingStyle.fill;
    paint43fill.color = Color(0xff999999).withOpacity(1.0);
    canvas.drawPath(path43, paint43fill);

    Path path44 = Path();
    path44.moveTo(size.width * 0.4528906, size.height * 0.2468514);
    path44.lineTo(size.width * 0.4496094, size.height * 0.2468514);
    path44.cubicTo(size.width * 0.4484375, size.height * 0.2468514, size.width * 0.4475000, size.height * 0.2438287, size.width * 0.4475000, size.height * 0.2400504);
    path44.lineTo(size.width * 0.4475000, size.height * 0.09722922);
    path44.cubicTo(size.width * 0.4475000, size.height * 0.09345088, size.width * 0.4484375, size.height * 0.09042821, size.width * 0.4496094, size.height * 0.09042821);
    path44.lineTo(size.width * 0.4528906, size.height * 0.09042821);
    path44.cubicTo(size.width * 0.4540625, size.height * 0.09042821, size.width * 0.4550000, size.height * 0.09345088, size.width * 0.4550000, size.height * 0.09722922);
    path44.lineTo(size.width * 0.4550000, size.height * 0.2403023);
    path44.cubicTo(size.width * 0.4549219, size.height * 0.2438287, size.width * 0.4539844, size.height * 0.2468514, size.width * 0.4528906, size.height * 0.2468514);
    path44.close();

    Paint paint44fill = Paint()..style = PaintingStyle.fill;
    paint44fill.color = Color(0xffBBBDBF).withOpacity(1.0);
    canvas.drawPath(path44, paint44fill);

    Paint paint45fill = Paint()..style = PaintingStyle.fill;
    paint45fill.color = Color(0xffE6E7E8).withOpacity(1.0);
    canvas.drawRect(Rect.fromLTWH(size.width * 0.4435156, size.height * 0.1136020, size.width * 0.003906250, size.height * 0.1103275), paint45fill);

    Path path46 = Path();
    path46.moveTo(size.width * 0.4246094, size.height * 0.1503778);
    path46.cubicTo(size.width * 0.4242187, size.height * 0.1503778, size.width * 0.4238281, size.height * 0.1503778, size.width * 0.4234375, size.height * 0.1503778);
    path46.lineTo(size.width * 0.4200781, size.height * 0.1518892);
    path46.lineTo(size.width * 0.4200781, size.height * 0.1889169);
    path46.lineTo(size.width * 0.4234375, size.height * 0.1904282);
    path46.cubicTo(size.width * 0.4238281, size.height * 0.1906801, size.width * 0.4242187, size.height * 0.1906801, size.width * 0.4246094, size.height * 0.1904282);
    path46.lineTo(size.width * 0.4246094, size.height * 0.1503778);
    path46.close();

    Paint paint46fill = Paint()..style = PaintingStyle.fill;
    paint46fill.color = Color(0xffCCCCCC).withOpacity(1.0);
    canvas.drawPath(path46, paint46fill);

    Paint paint47fill = Paint()..style = PaintingStyle.fill;
    paint47fill.color = Color(0xff808080).withOpacity(1.0);
    canvas.drawRect(Rect.fromLTWH(size.width * 0.4549219, size.height * 0.1025189, size.width * 0.002187500, size.height * 0.1329975), paint47fill);

    Path path48 = Path();
    path48.moveTo(size.width * 0.7409375, size.height * 0.3876574);
    path48.cubicTo(size.width * 0.7403125, size.height * 0.3715365, size.width * 0.7395312, size.height * 0.3554156, size.width * 0.7385937, size.height * 0.3395466);
    path48.cubicTo(size.width * 0.7375781, size.height * 0.3229219, size.width * 0.7374219, size.height * 0.3183879, size.width * 0.7361719, size.height * 0.3020151);
    path48.cubicTo(size.width * 0.7328906, size.height * 0.2869018, size.width * 0.7297656, size.height * 0.2712846, size.width * 0.7270312, size.height * 0.2664987);
    path48.cubicTo(size.width * 0.7214844, size.height * 0.2619647, size.width * 0.7202344, size.height * 0.2030227, size.width * 0.7217187, size.height * 0.1909320);
    path48.cubicTo(size.width * 0.7224219, size.height * 0.1851385, size.width * 0.7231250, size.height * 0.1785894, size.width * 0.7241406, size.height * 0.1732997);
    path48.cubicTo(size.width * 0.7246094, size.height * 0.1707809, size.width * 0.7257813, size.height * 0.1682620, size.width * 0.7257031, size.height * 0.1647355);
    path48.cubicTo(size.width * 0.7255469, size.height * 0.1594458, size.width * 0.7234375, size.height * 0.1596977, size.width * 0.7220312, size.height * 0.1602015);
    path48.cubicTo(size.width * 0.7219531, size.height * 0.1602015, size.width * 0.7219531, size.height * 0.1602015, size.width * 0.7218750, size.height * 0.1602015);
    path48.cubicTo(size.width * 0.7192969, size.height * 0.1591940, size.width * 0.7176562, size.height * 0.1644836, size.width * 0.7167187, size.height * 0.1715365);
    path48.cubicTo(size.width * 0.7159375, size.height * 0.1778338, size.width * 0.7153125, size.height * 0.1846348, size.width * 0.7147656, size.height * 0.1911839);
    path48.cubicTo(size.width * 0.7141406, size.height * 0.1997481, size.width * 0.7139844, size.height * 0.2095718, size.width * 0.7130469, size.height * 0.2178841);
    path48.cubicTo(size.width * 0.7121094, size.height * 0.2256927, size.width * 0.7107031, size.height * 0.2267003, size.width * 0.7083594, size.height * 0.2274559);
    path48.cubicTo(size.width * 0.7070312, size.height * 0.2279597, size.width * 0.7056250, size.height * 0.2282116, size.width * 0.7042969, size.height * 0.2282116);
    path48.cubicTo(size.width * 0.7016406, size.height * 0.2282116, size.width * 0.6967187, size.height * 0.2289673, size.width * 0.6967187, size.height * 0.2171285);
    path48.cubicTo(size.width * 0.6966406, size.height * 0.2002519, size.width * 0.6986719, size.height * 0.1816121, size.width * 0.7010156, size.height * 0.1667506);
    path48.cubicTo(size.width * 0.7014062, size.height * 0.1644836, size.width * 0.7006250, size.height * 0.1622166, size.width * 0.7000781, size.height * 0.1627204);
    path48.cubicTo(size.width * 0.6993750, size.height * 0.1614610, size.width * 0.6983594, size.height * 0.1617128, size.width * 0.6975000, size.height * 0.1622166);
    path48.cubicTo(size.width * 0.6966406, size.height * 0.1624685, size.width * 0.6955469, size.height * 0.1627204, size.width * 0.6948437, size.height * 0.1644836);
    path48.cubicTo(size.width * 0.6942187, size.height * 0.1657431, size.width * 0.6939844, size.height * 0.1680101, size.width * 0.6937500, size.height * 0.1702771);
    path48.cubicTo(size.width * 0.6937500, size.height * 0.1705290, size.width * 0.6937500, size.height * 0.1707809, size.width * 0.6937500, size.height * 0.1707809);
    path48.cubicTo(size.width * 0.6925000, size.height * 0.1793451, size.width * 0.6914844, size.height * 0.1851385, size.width * 0.6907031, size.height * 0.1944584);
    path48.cubicTo(size.width * 0.6903125, size.height * 0.1992443, size.width * 0.6900000, size.height * 0.2070529, size.width * 0.6897656, size.height * 0.2118388);
    path48.cubicTo(size.width * 0.6893750, size.height * 0.2198992, size.width * 0.6901562, size.height * 0.2619647, size.width * 0.6871094, size.height * 0.2654912);
    path48.cubicTo(size.width * 0.6853125, size.height * 0.2677582, size.width * 0.6835937, size.height * 0.2861461, size.width * 0.6828906, size.height * 0.3153652);
    path48.cubicTo(size.width * 0.6824219, size.height * 0.3342569, size.width * 0.6807031, size.height * 0.4294710, size.width * 0.6805469, size.height * 0.4458438);
    path48.cubicTo(size.width * 0.6804687, size.height * 0.4523929, size.width * 0.7086719, size.height * 0.4385390, size.width * 0.7144531, size.height * 0.4387909);
    path48.cubicTo(size.width * 0.7223437, size.height * 0.4390428, size.width * 0.7411719, size.height * 0.4672544, size.width * 0.7418750, size.height * 0.4561713);
    path48.cubicTo(size.width * 0.7432031, size.height * 0.4329975, size.width * 0.7414844, size.height * 0.4012594, size.width * 0.7409375, size.height * 0.3876574);
    path48.close();

    Paint paint48fill = Paint()..style = PaintingStyle.fill;
    paint48fill.color = Color(0xff134E75).withOpacity(1.0);
    canvas.drawPath(path48, paint48fill);

    Path path49 = Path();
    path49.moveTo(size.width * 0.7417969, size.height * 0.4561713);
    path49.cubicTo(size.width * 0.7432031, size.height * 0.4329975, size.width * 0.7414844, size.height * 0.4012594, size.width * 0.7410156, size.height * 0.3879093);
    path49.cubicTo(size.width * 0.7403906, size.height * 0.3717884, size.width * 0.7396094, size.height * 0.3556675, size.width * 0.7386719, size.height * 0.3397985);
    path49.cubicTo(size.width * 0.7376563, size.height * 0.3231738, size.width * 0.7375000, size.height * 0.3186398, size.width * 0.7362500, size.height * 0.3022670);
    path49.cubicTo(size.width * 0.7329687, size.height * 0.2871537, size.width * 0.7298437, size.height * 0.2715365, size.width * 0.7271094, size.height * 0.2667506);
    path49.cubicTo(size.width * 0.7268750, size.height * 0.2664987, size.width * 0.7265625, size.height * 0.2662469, size.width * 0.7263281, size.height * 0.2657431);
    path49.cubicTo(size.width * 0.7260156, size.height * 0.2929471, size.width * 0.7257812, size.height * 0.3201511, size.width * 0.7240625, size.height * 0.3468514);
    path49.cubicTo(size.width * 0.7225781, size.height * 0.3697733, size.width * 0.7194531, size.height * 0.3909320, size.width * 0.7161719, size.height * 0.4115869);
    path49.cubicTo(size.width * 0.7207031, size.height * 0.4234257, size.width * 0.7228125, size.height * 0.4458438, size.width * 0.7250781, size.height * 0.4619647);
    path49.cubicTo(size.width * 0.7290625, size.height * 0.4904282, size.width * 0.7321875, size.height * 0.5201511, size.width * 0.7349219, size.height * 0.5501259);
    path49.cubicTo(size.width * 0.7359375, size.height * 0.5614610, size.width * 0.7367969, size.height * 0.5727960, size.width * 0.7375000, size.height * 0.5843829);
    path49.cubicTo(size.width * 0.7391406, size.height * 0.5501259, size.width * 0.7404687, size.height * 0.5186398, size.width * 0.7410937, size.height * 0.5037783);
    path49.cubicTo(size.width * 0.7417969, size.height * 0.4858942, size.width * 0.7419531, size.height * 0.4705290, size.width * 0.7417187, size.height * 0.4571788);
    path49.cubicTo(size.width * 0.7417187, size.height * 0.4566751, size.width * 0.7417969, size.height * 0.4564232, size.width * 0.7417969, size.height * 0.4561713);
    path49.close();

    Paint paint49fill = Paint()..style = PaintingStyle.fill;
    paint49fill.color = Color(0xff0C3A5E).withOpacity(1.0);
    canvas.drawPath(path49, paint49fill);

    Path path50 = Path();
    path50.moveTo(size.width * 0.9865625, size.height * 0.8891688);
    path50.cubicTo(size.width * 0.9689844, size.height * 0.8909320, size.width * 0.9497656, size.height * 0.8969773, size.width * 0.9296094, size.height * 0.9035264);
    path50.cubicTo(size.width * 0.8939062, size.height * 0.9148615, size.width * 0.8570312, size.height * 0.9269521, size.width * 0.8278906, size.height * 0.9133501);
    path50.cubicTo(size.width * 0.7957031, size.height * 0.8984887, size.width * 0.7785937, size.height * 0.8559194, size.width * 0.7739844, size.height * 0.7793451);
    path50.cubicTo(size.width * 0.7654687, size.height * 0.6380353, size.width * 0.7500000, size.height * 0.5317380, size.width * 0.7278125, size.height * 0.4639798);
    path50.cubicTo(size.width * 0.7070312, size.height * 0.4002519, size.width * 0.6855469, size.height * 0.3869018, size.width * 0.6745312, size.height * 0.3846348);
    path50.cubicTo(size.width * 0.6728125, size.height * 0.3843829, size.width * 0.6709375, size.height * 0.3841310, size.width * 0.6689062, size.height * 0.3838791);
    path50.cubicTo(size.width * 0.6525781, size.height * 0.3821159, size.width * 0.6278906, size.height * 0.3793451, size.width * 0.6153125, size.height * 0.2944584);
    path50.cubicTo(size.width * 0.6066406, size.height * 0.2246851, size.width * 0.5954687, size.height * 0.1806045, size.width * 0.5821875, size.height * 0.1637280);
    path50.cubicTo(size.width * 0.5717187, size.height * 0.1503778, size.width * 0.5638281, size.height * 0.1596977, size.width * 0.5634375, size.height * 0.1602015);
    path50.lineTo(size.width * 0.5660156, size.height * 0.1818640);
    path50.cubicTo(size.width * 0.5662500, size.height * 0.1816121, size.width * 0.5901562, size.height * 0.1544081, size.width * 0.6086719, size.height * 0.3035264);
    path50.lineTo(size.width * 0.6087500, size.height * 0.3042821);
    path50.cubicTo(size.width * 0.6232031, size.height * 0.4022670, size.width * 0.6516406, size.height * 0.4052897, size.width * 0.6686719, size.height * 0.4073048);
    path50.cubicTo(size.width * 0.6706250, size.height * 0.4075567, size.width * 0.6725000, size.height * 0.4078086, size.width * 0.6741406, size.height * 0.4080605);
    path50.cubicTo(size.width * 0.6841406, size.height * 0.4100756, size.width * 0.7038281, size.height * 0.4224181, size.width * 0.7228906, size.height * 0.4811083);
    path50.cubicTo(size.width * 0.7439062, size.height * 0.5455919, size.width * 0.7587500, size.height * 0.6476071, size.width * 0.7669531, size.height * 0.7841310);
    path50.cubicTo(size.width * 0.7721094, size.height * 0.8705290, size.width * 0.7917969, size.height * 0.9206549, size.width * 0.8268750, size.height * 0.9367758);
    path50.cubicTo(size.width * 0.8364844, size.height * 0.9413098, size.width * 0.8467969, size.height * 0.9430730, size.width * 0.8575781, size.height * 0.9430730);
    path50.cubicTo(size.width * 0.8806250, size.height * 0.9430730, size.width * 0.9057031, size.height * 0.9350126, size.width * 0.9303125, size.height * 0.9272040);
    path50.cubicTo(size.width * 0.9502344, size.height * 0.9209068, size.width * 0.9692969, size.height * 0.9146096, size.width * 0.9865625, size.height * 0.9128463);
    path50.lineTo(size.width * 0.9865625, size.height * 0.8891688);
    path50.close();

    Paint paint50fill = Paint()..style = PaintingStyle.fill;
    paint50fill.color = Color(0xff46ACC3).withOpacity(1.0);
    canvas.drawPath(path50, paint50fill);

    Path path51 = Path();
    path51.moveTo(size.width * 0.7114063, size.height * 0.4186398);
    path51.cubicTo(size.width * 0.7114063, size.height * 0.4186398, size.width * 0.7150781, size.height * 0.4136020, size.width * 0.7156250, size.height * 0.4138539);
    path51.cubicTo(size.width * 0.7157813, size.height * 0.4138539, size.width * 0.7171875, size.height * 0.4128463, size.width * 0.7180469, size.height * 0.4206549);
    path51.cubicTo(size.width * 0.7183594, size.height * 0.4234257, size.width * 0.7185156, size.height * 0.4269521, size.width * 0.7178906, size.height * 0.4292191);
    path51.cubicTo(size.width * 0.7175000, size.height * 0.4304786, size.width * 0.7156250, size.height * 0.4319899, size.width * 0.7144531, size.height * 0.4337531);
    path51.cubicTo(size.width * 0.7144531, size.height * 0.4357683, size.width * 0.7143750, size.height * 0.4367758, size.width * 0.7141406, size.height * 0.4380353);
    path51.cubicTo(size.width * 0.7135156, size.height * 0.4415617, size.width * 0.7129688, size.height * 0.4433249, size.width * 0.7114844, size.height * 0.4460957);
    path51.cubicTo(size.width * 0.7100000, size.height * 0.4488665, size.width * 0.7080469, size.height * 0.4534005, size.width * 0.7062500, size.height * 0.4536524);
    path51.cubicTo(size.width * 0.7045312, size.height * 0.4539043, size.width * 0.7046875, size.height * 0.4506297, size.width * 0.7046875, size.height * 0.4506297);
    path51.cubicTo(size.width * 0.7046875, size.height * 0.4506297, size.width * 0.7040625, size.height * 0.4513854, size.width * 0.7034375, size.height * 0.4498741);
    path51.cubicTo(size.width * 0.7028906, size.height * 0.4483627, size.width * 0.7028906, size.height * 0.4458438, size.width * 0.7028906, size.height * 0.4458438);
    path51.cubicTo(size.width * 0.7028906, size.height * 0.4458438, size.width * 0.7020312, size.height * 0.4455919, size.width * 0.7015625, size.height * 0.4443325);
    path51.cubicTo(size.width * 0.7010937, size.height * 0.4428212, size.width * 0.7011719, size.height * 0.4403023, size.width * 0.7011719, size.height * 0.4403023);
    path51.cubicTo(size.width * 0.7011719, size.height * 0.4403023, size.width * 0.7001562, size.height * 0.4413098, size.width * 0.6996875, size.height * 0.4387909);
    path51.cubicTo(size.width * 0.6992187, size.height * 0.4362720, size.width * 0.7003906, size.height * 0.4317380, size.width * 0.7007812, size.height * 0.4307305);
    path51.cubicTo(size.width * 0.7011719, size.height * 0.4297229, size.width * 0.7019531, size.height * 0.4277078, size.width * 0.7019531, size.height * 0.4277078);
    path51.cubicTo(size.width * 0.7019531, size.height * 0.4277078, size.width * 0.7003125, size.height * 0.4249370, size.width * 0.7007812, size.height * 0.4231738);
    path51.cubicTo(size.width * 0.7010156, size.height * 0.4221662, size.width * 0.7030469, size.height * 0.4209068, size.width * 0.7041406, size.height * 0.4171285);
    path51.cubicTo(size.width * 0.7054687, size.height * 0.4130982, size.width * 0.7075000, size.height * 0.4138539, size.width * 0.7081250, size.height * 0.4146096);
    path51.cubicTo(size.width * 0.7097656, size.height * 0.4158690, size.width * 0.7114063, size.height * 0.4186398, size.width * 0.7114063, size.height * 0.4186398);
    path51.close();

    Paint paint51fill = Paint()..style = PaintingStyle.fill;
    paint51fill.color = Color(0xffF0A5A6).withOpacity(1.0);
    canvas.drawPath(path51, paint51fill);

    Path path52 = Path();
    path52.moveTo(size.width * 0.3725000, size.height * 0.2886650);
    path52.cubicTo(size.width * 0.3725000, size.height * 0.2886650, size.width * 0.3685156, size.height * 0.2906801, size.width * 0.3681250, size.height * 0.2916877);
    path52.cubicTo(size.width * 0.3679688, size.height * 0.2921914, size.width * 0.3666406, size.height * 0.2934509, size.width * 0.3671875, size.height * 0.3015113);
    path52.cubicTo(size.width * 0.3673437, size.height * 0.3045340, size.width * 0.3678906, size.height * 0.3075567, size.width * 0.3687500, size.height * 0.3083123);
    path52.cubicTo(size.width * 0.3692969, size.height * 0.3088161, size.width * 0.3710938, size.height * 0.3068010, size.width * 0.3724219, size.height * 0.3060453);
    path52.cubicTo(size.width * 0.3727344, size.height * 0.3078086, size.width * 0.3729687, size.height * 0.3085642, size.width * 0.3733594, size.height * 0.3093199);
    path52.cubicTo(size.width * 0.3744531, size.height * 0.3110831, size.width * 0.3752344, size.height * 0.3118388, size.width * 0.3769531, size.height * 0.3115869);
    path52.cubicTo(size.width * 0.3786719, size.height * 0.3113350, size.width * 0.3810938, size.height * 0.3118388, size.width * 0.3825781, size.height * 0.3090680);
    path52.cubicTo(size.width * 0.3841406, size.height * 0.3062972, size.width * 0.3833594, size.height * 0.3037783, size.width * 0.3833594, size.height * 0.3037783);
    path52.cubicTo(size.width * 0.3833594, size.height * 0.3037783, size.width * 0.3840625, size.height * 0.3035264, size.width * 0.3842969, size.height * 0.3010076);
    path52.cubicTo(size.width * 0.3845312, size.height * 0.2984887, size.width * 0.3840625, size.height * 0.2967254, size.width * 0.3840625, size.height * 0.2967254);
    path52.cubicTo(size.width * 0.3840625, size.height * 0.2967254, size.width * 0.3847656, size.height * 0.2949622, size.width * 0.3849219, size.height * 0.2929471);
    path52.cubicTo(size.width * 0.3850781, size.height * 0.2909320, size.width * 0.3846094, size.height * 0.2889169, size.width * 0.3846094, size.height * 0.2889169);
    path52.cubicTo(size.width * 0.3846094, size.height * 0.2889169, size.width * 0.3856250, size.height * 0.2881612, size.width * 0.3856250, size.height * 0.2851385);
    path52.cubicTo(size.width * 0.3856250, size.height * 0.2823678, size.width * 0.3838281, size.height * 0.2803526, size.width * 0.3833594, size.height * 0.2803526);
    path52.cubicTo(size.width * 0.3828125, size.height * 0.2801008, size.width * 0.3818750, size.height * 0.2798489, size.width * 0.3818750, size.height * 0.2798489);
    path52.cubicTo(size.width * 0.3818750, size.height * 0.2798489, size.width * 0.3827344, size.height * 0.2748111, size.width * 0.3821094, size.height * 0.2740554);
    path52.cubicTo(size.width * 0.3817969, size.height * 0.2738035, size.width * 0.3798438, size.height * 0.2758186, size.width * 0.3782813, size.height * 0.2748111);
    path52.cubicTo(size.width * 0.3764844, size.height * 0.2735516, size.width * 0.3749219, size.height * 0.2778338, size.width * 0.3744531, size.height * 0.2793451);
    path52.cubicTo(size.width * 0.3734375, size.height * 0.2833753, size.width * 0.3725000, size.height * 0.2886650, size.width * 0.3725000, size.height * 0.2886650);
    path52.close();

    Paint paint52fill = Paint()..style = PaintingStyle.fill;
    paint52fill.color = Color(0xffF0A5A6).withOpacity(1.0);
    canvas.drawPath(path52, paint52fill);

    Path path53 = Path();
    path53.moveTo(size.width * 0.7157031, size.height * 0.4317380);
    path53.lineTo(size.width * 0.7134375, size.height * 0.4188917);
    path53.cubicTo(size.width * 0.7126562, size.height * 0.4146096, size.width * 0.7130469, size.height * 0.4093199, size.width * 0.7142188, size.height * 0.4073048);
    path53.cubicTo(size.width * 0.7173438, size.height * 0.4022670, size.width * 0.7225000, size.height * 0.3929471, size.width * 0.7273437, size.height * 0.3816121);
    path53.cubicTo(size.width * 0.7303906, size.height * 0.3743073, size.width * 0.7381250, size.height * 0.3523929, size.width * 0.7429687, size.height * 0.3191436);
    path53.cubicTo(size.width * 0.7447656, size.height * 0.3068010, size.width * 0.7578906, size.height * 0.3277078, size.width * 0.7577344, size.height * 0.3314861);
    path53.cubicTo(size.width * 0.7564844, size.height * 0.3609572, size.width * 0.7457813, size.height * 0.3982368, size.width * 0.7392187, size.height * 0.4083123);
    path53.lineTo(size.width * 0.7343750, size.height * 0.4158690);
    path53.cubicTo(size.width * 0.7343750, size.height * 0.4158690, size.width * 0.7342969, size.height * 0.4158690, size.width * 0.7342969, size.height * 0.4158690);
    path53.cubicTo(size.width * 0.7283594, size.height * 0.4251889, size.width * 0.7221875, size.height * 0.4329975, size.width * 0.7185937, size.height * 0.4362720);
    path53.cubicTo(size.width * 0.7175781, size.height * 0.4372796, size.width * 0.7163281, size.height * 0.4352645, size.width * 0.7157031, size.height * 0.4317380);
    path53.close();

    Paint paint53fill = Paint()..style = PaintingStyle.fill;
    paint53fill.color = Color(0xffE95F5C).withOpacity(1.0);
    canvas.drawPath(path53, paint53fill);

    Path path54 = Path();
    path54.moveTo(size.width * 0.5633594, size.height * 0.1886650);
    path54.lineTo(size.width * 0.5769531, size.height * 0.1826196);
    path54.cubicTo(size.width * 0.5783594, size.height * 0.1821159, size.width * 0.5794531, size.height * 0.1758186, size.width * 0.5794531, size.height * 0.1685139);
    path54.lineTo(size.width * 0.5794531, size.height * 0.1685139);
    path54.cubicTo(size.width * 0.5794531, size.height * 0.1614610, size.width * 0.5783594, size.height * 0.1551637, size.width * 0.5769531, size.height * 0.1544081);
    path54.lineTo(size.width * 0.5633594, size.height * 0.1483627);
    path54.cubicTo(size.width * 0.5601563, size.height * 0.1468514, size.width * 0.5571875, size.height * 0.1559194, size.width * 0.5571875, size.height * 0.1682620);
    path54.lineTo(size.width * 0.5571875, size.height * 0.1682620);
    path54.cubicTo(size.width * 0.5571875, size.height * 0.1813602, size.width * 0.5601563, size.height * 0.1901763, size.width * 0.5633594, size.height * 0.1886650);
    path54.close();

    Paint paint54fill = Paint()..style = PaintingStyle.fill;
    paint54fill.color = Color(0xff999999).withOpacity(1.0);
    canvas.drawPath(path54, paint54fill);

    Path path55 = Path();
    path55.moveTo(size.width * 0.5661719, size.height * 0.1501259);
    path55.lineTo(size.width * 0.5634375, size.height * 0.1488665);
    path55.cubicTo(size.width * 0.5602344, size.height * 0.1473552, size.width * 0.5572656, size.height * 0.1564232, size.width * 0.5572656, size.height * 0.1687657);
    path55.cubicTo(size.width * 0.5572656, size.height * 0.1813602, size.width * 0.5602344, size.height * 0.1901763, size.width * 0.5634375, size.height * 0.1886650);
    path55.lineTo(size.width * 0.5661719, size.height * 0.1874055);
    path55.lineTo(size.width * 0.5661719, size.height * 0.1501259);
    path55.close();

    Paint paint55fill = Paint()..style = PaintingStyle.fill;
    paint55fill.color = Color(0xffCCCCCC).withOpacity(1.0);
    canvas.drawPath(path55, paint55fill);

    Path path56 = Path();
    path56.moveTo(size.width * 0.5301562, size.height * 0.2239295);
    path56.lineTo(size.width * 0.5543750, size.height * 0.2239295);
    path56.cubicTo(size.width * 0.5586719, size.height * 0.2239295, size.width * 0.5621094, size.height * 0.2125945, size.width * 0.5621094, size.height * 0.1989924);
    path56.lineTo(size.width * 0.5621094, size.height * 0.1387909);
    path56.cubicTo(size.width * 0.5621094, size.height * 0.1249370, size.width * 0.5585938, size.height * 0.1138539, size.width * 0.5543750, size.height * 0.1138539);
    path56.lineTo(size.width * 0.5301562, size.height * 0.1138539);
    path56.cubicTo(size.width * 0.5258594, size.height * 0.1138539, size.width * 0.5224219, size.height * 0.1251889, size.width * 0.5224219, size.height * 0.1387909);
    path56.lineTo(size.width * 0.5224219, size.height * 0.1989924);
    path56.cubicTo(size.width * 0.5224219, size.height * 0.2125945, size.width * 0.5258594, size.height * 0.2239295, size.width * 0.5301562, size.height * 0.2239295);
    path56.close();

    Paint paint56fill = Paint()..style = PaintingStyle.fill;
    paint56fill.shader = ui.Gradient.linear(Offset(size.width * 0.5223840, size.height * 0.1687771), Offset(size.width * 0.5621683, size.height * 0.1687771),
        [Color(0xff666666).withOpacity(1.0), Color(0xffCCCCCC).withOpacity(1.0)], [0.1983, 0.5698]);
    canvas.drawPath(path56, paint56fill);

    Path path57 = Path();
    path57.moveTo(size.width * 0.5155469, size.height * 0.2352645);
    path57.lineTo(size.width * 0.5327344, size.height * 0.2352645);
    path57.cubicTo(size.width * 0.5349219, size.height * 0.2352645, size.width * 0.5366406, size.height * 0.2294710, size.width * 0.5366406, size.height * 0.2226700);
    path57.lineTo(size.width * 0.5366406, size.height * 0.1151134);
    path57.cubicTo(size.width * 0.5366406, size.height * 0.1080605, size.width * 0.5348438, size.height * 0.1025189, size.width * 0.5327344, size.height * 0.1025189);
    path57.lineTo(size.width * 0.5155469, size.height * 0.1025189);
    path57.cubicTo(size.width * 0.5133594, size.height * 0.1025189, size.width * 0.5116406, size.height * 0.1083123, size.width * 0.5116406, size.height * 0.1151134);
    path57.lineTo(size.width * 0.5116406, size.height * 0.2226700);
    path57.cubicTo(size.width * 0.5116406, size.height * 0.2294710, size.width * 0.5133594, size.height * 0.2352645, size.width * 0.5155469, size.height * 0.2352645);
    path57.close();

    Paint paint57fill = Paint()..style = PaintingStyle.fill;
    paint57fill.color = Color(0xff999999).withOpacity(1.0);
    canvas.drawPath(path57, paint57fill);

    Path path58 = Path();
    path58.moveTo(size.width * 0.5327344, size.height * 0.1022670);
    path58.lineTo(size.width * 0.5285937, size.height * 0.1022670);
    path58.lineTo(size.width * 0.5285937, size.height * 0.2352645);
    path58.lineTo(size.width * 0.5327344, size.height * 0.2352645);
    path58.cubicTo(size.width * 0.5349219, size.height * 0.2352645, size.width * 0.5366406, size.height * 0.2294710, size.width * 0.5366406, size.height * 0.2226700);
    path58.lineTo(size.width * 0.5366406, size.height * 0.1151134);
    path58.cubicTo(size.width * 0.5367188, size.height * 0.1080605, size.width * 0.5349219, size.height * 0.1022670, size.width * 0.5327344, size.height * 0.1022670);
    path58.close();

    Paint paint58fill = Paint()..style = PaintingStyle.fill;
    paint58fill.color = Color(0xff808080).withOpacity(1.0);
    canvas.drawPath(path58, paint58fill);

    Path path59 = Path();
    path59.moveTo(size.width * 0.5339844, size.height * 0.2468514);
    path59.lineTo(size.width * 0.5372656, size.height * 0.2468514);
    path59.cubicTo(size.width * 0.5384375, size.height * 0.2468514, size.width * 0.5393750, size.height * 0.2438287, size.width * 0.5393750, size.height * 0.2400504);
    path59.lineTo(size.width * 0.5393750, size.height * 0.09722922);
    path59.cubicTo(size.width * 0.5393750, size.height * 0.09345088, size.width * 0.5384375, size.height * 0.09042821, size.width * 0.5372656, size.height * 0.09042821);
    path59.lineTo(size.width * 0.5339844, size.height * 0.09042821);
    path59.cubicTo(size.width * 0.5328125, size.height * 0.09042821, size.width * 0.5318750, size.height * 0.09345088, size.width * 0.5318750, size.height * 0.09722922);
    path59.lineTo(size.width * 0.5318750, size.height * 0.2403023);
    path59.cubicTo(size.width * 0.5319531, size.height * 0.2438287, size.width * 0.5328125, size.height * 0.2468514, size.width * 0.5339844, size.height * 0.2468514);
    path59.close();

    Paint paint59fill = Paint()..style = PaintingStyle.fill;
    paint59fill.color = Color(0xffBBBDBF).withOpacity(1.0);
    canvas.drawPath(path59, paint59fill);

    Path path60 = Path();
    path60.moveTo(size.width * 0.5548438, size.height * 0.1413098);
    path60.lineTo(size.width * 0.5421875, size.height * 0.1413098);
    path60.cubicTo(size.width * 0.5417969, size.height * 0.1413098, size.width * 0.5414844, size.height * 0.1403023, size.width * 0.5414844, size.height * 0.1390428);
    path60.lineTo(size.width * 0.5414844, size.height * 0.1390428);
    path60.cubicTo(size.width * 0.5414844, size.height * 0.1377834, size.width * 0.5417969, size.height * 0.1367758, size.width * 0.5421875, size.height * 0.1367758);
    path60.lineTo(size.width * 0.5548438, size.height * 0.1367758);
    path60.cubicTo(size.width * 0.5552344, size.height * 0.1367758, size.width * 0.5555469, size.height * 0.1377834, size.width * 0.5555469, size.height * 0.1390428);
    path60.lineTo(size.width * 0.5555469, size.height * 0.1390428);
    path60.cubicTo(size.width * 0.5556250, size.height * 0.1403023, size.width * 0.5553125, size.height * 0.1413098, size.width * 0.5548438, size.height * 0.1413098);
    path60.close();

    Paint paint60fill = Paint()..style = PaintingStyle.fill;
    paint60fill.color = Color(0xff999999).withOpacity(1.0);
    canvas.drawPath(path60, paint60fill);

    Path path61 = Path();
    path61.moveTo(size.width * 0.5548438, size.height * 0.1531486);
    path61.lineTo(size.width * 0.5421875, size.height * 0.1531486);
    path61.cubicTo(size.width * 0.5417969, size.height * 0.1531486, size.width * 0.5414844, size.height * 0.1521411, size.width * 0.5414844, size.height * 0.1508816);
    path61.lineTo(size.width * 0.5414844, size.height * 0.1508816);
    path61.cubicTo(size.width * 0.5414844, size.height * 0.1496222, size.width * 0.5417969, size.height * 0.1486146, size.width * 0.5421875, size.height * 0.1486146);
    path61.lineTo(size.width * 0.5548438, size.height * 0.1486146);
    path61.cubicTo(size.width * 0.5552344, size.height * 0.1486146, size.width * 0.5555469, size.height * 0.1496222, size.width * 0.5555469, size.height * 0.1508816);
    path61.lineTo(size.width * 0.5555469, size.height * 0.1508816);
    path61.cubicTo(size.width * 0.5556250, size.height * 0.1521411, size.width * 0.5553125, size.height * 0.1531486, size.width * 0.5548438, size.height * 0.1531486);
    path61.close();

    Paint paint61fill = Paint()..style = PaintingStyle.fill;
    paint61fill.color = Color(0xff999999).withOpacity(1.0);
    canvas.drawPath(path61, paint61fill);

    Path path62 = Path();
    path62.moveTo(size.width * 0.5548438, size.height * 0.1652393);
    path62.lineTo(size.width * 0.5421875, size.height * 0.1652393);
    path62.cubicTo(size.width * 0.5417969, size.height * 0.1652393, size.width * 0.5414844, size.height * 0.1642317, size.width * 0.5414844, size.height * 0.1629723);
    path62.lineTo(size.width * 0.5414844, size.height * 0.1629723);
    path62.cubicTo(size.width * 0.5414844, size.height * 0.1617128, size.width * 0.5417969, size.height * 0.1607053, size.width * 0.5421875, size.height * 0.1607053);
    path62.lineTo(size.width * 0.5548438, size.height * 0.1607053);
    path62.cubicTo(size.width * 0.5552344, size.height * 0.1607053, size.width * 0.5555469, size.height * 0.1617128, size.width * 0.5555469, size.height * 0.1629723);
    path62.lineTo(size.width * 0.5555469, size.height * 0.1629723);
    path62.cubicTo(size.width * 0.5556250, size.height * 0.1639798, size.width * 0.5553125, size.height * 0.1652393, size.width * 0.5548438, size.height * 0.1652393);
    path62.close();

    Paint paint62fill = Paint()..style = PaintingStyle.fill;
    paint62fill.color = Color(0xff999999).withOpacity(1.0);
    canvas.drawPath(path62, paint62fill);

    Path path63 = Path();
    path63.moveTo(size.width * 0.5548438, size.height * 0.1770781);
    path63.lineTo(size.width * 0.5421875, size.height * 0.1770781);
    path63.cubicTo(size.width * 0.5417969, size.height * 0.1770781, size.width * 0.5414844, size.height * 0.1760705, size.width * 0.5414844, size.height * 0.1748111);
    path63.lineTo(size.width * 0.5414844, size.height * 0.1748111);
    path63.cubicTo(size.width * 0.5414844, size.height * 0.1735516, size.width * 0.5417969, size.height * 0.1725441, size.width * 0.5421875, size.height * 0.1725441);
    path63.lineTo(size.width * 0.5548438, size.height * 0.1725441);
    path63.cubicTo(size.width * 0.5552344, size.height * 0.1725441, size.width * 0.5555469, size.height * 0.1735516, size.width * 0.5555469, size.height * 0.1748111);
    path63.lineTo(size.width * 0.5555469, size.height * 0.1748111);
    path63.cubicTo(size.width * 0.5556250, size.height * 0.1760705, size.width * 0.5553125, size.height * 0.1770781, size.width * 0.5548438, size.height * 0.1770781);
    path63.close();

    Paint paint63fill = Paint()..style = PaintingStyle.fill;
    paint63fill.color = Color(0xff999999).withOpacity(1.0);
    canvas.drawPath(path63, paint63fill);

    Path path64 = Path();
    path64.moveTo(size.width * 0.5548438, size.height * 0.1889169);
    path64.lineTo(size.width * 0.5421875, size.height * 0.1889169);
    path64.cubicTo(size.width * 0.5417969, size.height * 0.1889169, size.width * 0.5414844, size.height * 0.1879093, size.width * 0.5414844, size.height * 0.1866499);
    path64.lineTo(size.width * 0.5414844, size.height * 0.1866499);
    path64.cubicTo(size.width * 0.5414844, size.height * 0.1853904, size.width * 0.5417969, size.height * 0.1843829, size.width * 0.5421875, size.height * 0.1843829);
    path64.lineTo(size.width * 0.5548438, size.height * 0.1843829);
    path64.cubicTo(size.width * 0.5552344, size.height * 0.1843829, size.width * 0.5555469, size.height * 0.1853904, size.width * 0.5555469, size.height * 0.1866499);
    path64.lineTo(size.width * 0.5555469, size.height * 0.1866499);
    path64.cubicTo(size.width * 0.5556250, size.height * 0.1879093, size.width * 0.5553125, size.height * 0.1889169, size.width * 0.5548438, size.height * 0.1889169);
    path64.close();

    Paint paint64fill = Paint()..style = PaintingStyle.fill;
    paint64fill.color = Color(0xff999999).withOpacity(1.0);
    canvas.drawPath(path64, paint64fill);

    Path path65 = Path();
    path65.moveTo(size.width * 0.5548438, size.height * 0.2010076);
    path65.lineTo(size.width * 0.5421875, size.height * 0.2010076);
    path65.cubicTo(size.width * 0.5417969, size.height * 0.2010076, size.width * 0.5414844, size.height * 0.2000000, size.width * 0.5414844, size.height * 0.1987406);
    path65.lineTo(size.width * 0.5414844, size.height * 0.1987406);
    path65.cubicTo(size.width * 0.5414844, size.height * 0.1974811, size.width * 0.5417969, size.height * 0.1964736, size.width * 0.5421875, size.height * 0.1964736);
    path65.lineTo(size.width * 0.5548438, size.height * 0.1964736);
    path65.cubicTo(size.width * 0.5552344, size.height * 0.1964736, size.width * 0.5555469, size.height * 0.1974811, size.width * 0.5555469, size.height * 0.1987406);
    path65.lineTo(size.width * 0.5555469, size.height * 0.1987406);
    path65.cubicTo(size.width * 0.5556250, size.height * 0.2000000, size.width * 0.5553125, size.height * 0.2010076, size.width * 0.5548438, size.height * 0.2010076);
    path65.close();

    Paint paint65fill = Paint()..style = PaintingStyle.fill;
    paint65fill.color = Color(0xff999999).withOpacity(1.0);
    canvas.drawPath(path65, paint65fill);

    Path path66 = Path();
    path66.moveTo(size.width * 0.6095313, size.height * 0.2952141);
    path66.cubicTo(size.width * 0.6100000, size.height * 0.2937028, size.width * 0.6103125, size.height * 0.2916877, size.width * 0.6102344, size.height * 0.2896725);
    path66.cubicTo(size.width * 0.6100781, size.height * 0.2874055, size.width * 0.6096875, size.height * 0.2866499, size.width * 0.6091406, size.height * 0.2866499);
    path66.cubicTo(size.width * 0.6096094, size.height * 0.2848866, size.width * 0.6098438, size.height * 0.2828715, size.width * 0.6095313, size.height * 0.2806045);
    path66.cubicTo(size.width * 0.6092188, size.height * 0.2780856, size.width * 0.6086719, size.height * 0.2775819, size.width * 0.6079688, size.height * 0.2778338);
    path66.cubicTo(size.width * 0.6081250, size.height * 0.2768262, size.width * 0.6082031, size.height * 0.2758186, size.width * 0.6081250, size.height * 0.2748111);
    path66.cubicTo(size.width * 0.6080469, size.height * 0.2727960, size.width * 0.6075000, size.height * 0.2717884, size.width * 0.6069531, size.height * 0.2715365);
    path66.cubicTo(size.width * 0.6050000, size.height * 0.2702771, size.width * 0.6034375, size.height * 0.2760705, size.width * 0.6026563, size.height * 0.2811083);
    path66.cubicTo(size.width * 0.6025781, size.height * 0.2816121, size.width * 0.6026563, size.height * 0.2821159, size.width * 0.6027344, size.height * 0.2823678);
    path66.cubicTo(size.width * 0.6027344, size.height * 0.2826196, size.width * 0.6028125, size.height * 0.2828715, size.width * 0.6028906, size.height * 0.2828715);
    path66.cubicTo(size.width * 0.6046875, size.height * 0.2856423, size.width * 0.6057031, size.height * 0.2921914, size.width * 0.6067188, size.height * 0.2974811);
    path66.cubicTo(size.width * 0.6072656, size.height * 0.3005038, size.width * 0.6075000, size.height * 0.3040302, size.width * 0.6086719, size.height * 0.3030227);
    path66.cubicTo(size.width * 0.6103906, size.height * 0.3015113, size.width * 0.6106250, size.height * 0.2962217, size.width * 0.6095313, size.height * 0.2952141);
    path66.close();

    Paint paint66fill = Paint()..style = PaintingStyle.fill;
    paint66fill.color = Color(0xffF0A5A6).withOpacity(1.0);
    canvas.drawPath(path66, paint66fill);

    Path path67 = Path();
    path67.moveTo(size.width * 0.3867188, size.height * 0.2574307);
    path67.cubicTo(size.width * 0.3878906, size.height * 0.2559194, size.width * 0.3874219, size.height * 0.2526448, size.width * 0.3873437, size.height * 0.2493703);
    path67.cubicTo(size.width * 0.3872656, size.height * 0.2433249, size.width * 0.3869531, size.height * 0.2360202, size.width * 0.3878906, size.height * 0.2304786);
    path67.cubicTo(size.width * 0.3879688, size.height * 0.2302267, size.width * 0.3879688, size.height * 0.2299748, size.width * 0.3878906, size.height * 0.2297229);
    path67.cubicTo(size.width * 0.3879688, size.height * 0.2292191, size.width * 0.3878906, size.height * 0.2287154, size.width * 0.3877344, size.height * 0.2284635);
    path67.cubicTo(size.width * 0.3862500, size.height * 0.2259446, size.width * 0.3839063, size.height * 0.2239295, size.width * 0.3825781, size.height * 0.2284635);
    path67.cubicTo(size.width * 0.3821875, size.height * 0.2297229, size.width * 0.3819531, size.height * 0.2314861, size.width * 0.3821875, size.height * 0.2332494);
    path67.cubicTo(size.width * 0.3823437, size.height * 0.2342569, size.width * 0.3825781, size.height * 0.2350126, size.width * 0.3828906, size.height * 0.2355164);
    path67.cubicTo(size.width * 0.3823437, size.height * 0.2365239, size.width * 0.3819531, size.height * 0.2380353, size.width * 0.3821094, size.height * 0.2405542);
    path67.cubicTo(size.width * 0.3822656, size.height * 0.2430730, size.width * 0.3828906, size.height * 0.2443325, size.width * 0.3835156, size.height * 0.2448363);
    path67.cubicTo(size.width * 0.3831250, size.height * 0.2458438, size.width * 0.3828125, size.height * 0.2473552, size.width * 0.3831250, size.height * 0.2493703);
    path67.cubicTo(size.width * 0.3833594, size.height * 0.2511335, size.width * 0.3840625, size.height * 0.2521411, size.width * 0.3846875, size.height * 0.2526448);
    path67.cubicTo(size.width * 0.3840625, size.height * 0.2554156, size.width * 0.3852344, size.height * 0.2594458, size.width * 0.3867188, size.height * 0.2574307);
    path67.close();

    Paint paint67fill = Paint()..style = PaintingStyle.fill;
    paint67fill.color = Color(0xffF0A5A6).withOpacity(1.0);
    canvas.drawPath(path67, paint67fill);

    Path path68 = Path();
    path68.moveTo(size.width * 0.3185156, size.height * 0.3050378);
    path68.cubicTo(size.width * 0.3122656, size.height * 0.2861461, size.width * 0.3053906, size.height * 0.2632242, size.width * 0.3003906, size.height * 0.2405542);
    path68.cubicTo(size.width * 0.3003906, size.height * 0.2405542, size.width * 0.3003125, size.height * 0.2403023, size.width * 0.3003125, size.height * 0.2403023);
    path68.lineTo(size.width * 0.2962500, size.height * 0.2224181);
    path68.cubicTo(size.width * 0.2914844, size.height * 0.2015113, size.width * 0.2980469, size.height * 0.1705290, size.width * 0.2980469, size.height * 0.1705290);
    path68.cubicTo(size.width * 0.3025781, size.height * 0.1596977, size.width * 0.3096094, size.height * 0.1586902, size.width * 0.3142969, size.height * 0.1795970);
    path68.lineTo(size.width * 0.3183594, size.height * 0.1974811);
    path68.cubicTo(size.width * 0.3183594, size.height * 0.1974811, size.width * 0.3184375, size.height * 0.1977330, size.width * 0.3184375, size.height * 0.1977330);
    path68.cubicTo(size.width * 0.3225781, size.height * 0.2156171, size.width * 0.3264844, size.height * 0.2372796, size.width * 0.3297656, size.height * 0.2581864);
    path68.cubicTo(size.width * 0.3253125, size.height * 0.2717884, size.width * 0.3216406, size.height * 0.2881612, size.width * 0.3185156, size.height * 0.3050378);
    path68.close();

    Paint paint68fill = Paint()..style = PaintingStyle.fill;
    paint68fill.color = Color(0xff46ACC3).withOpacity(1.0);
    canvas.drawPath(path68, paint68fill);

    Path path69 = Path();
    path69.moveTo(size.width * 0.3267969, size.height * 0.2919395);
    path69.cubicTo(size.width * 0.3278906, size.height * 0.2919395, size.width * 0.3289844, size.height * 0.2916877, size.width * 0.3300781, size.height * 0.2916877);
    path69.cubicTo(size.width * 0.3295312, size.height * 0.2793451, size.width * 0.3289844, size.height * 0.2675063, size.width * 0.3282812, size.height * 0.2559194);
    path69.cubicTo(size.width * 0.3146094, size.height * 0.2622166, size.width * 0.3007031, size.height * 0.2617128, size.width * 0.2872656, size.height * 0.2531486);
    path69.cubicTo(size.width * 0.2867188, size.height * 0.2622166, size.width * 0.2862500, size.height * 0.2722922, size.width * 0.2857812, size.height * 0.2831234);
    path69.cubicTo(size.width * 0.2989063, size.height * 0.2962217, size.width * 0.3132813, size.height * 0.2931990, size.width * 0.3267969, size.height * 0.2919395);
    path69.close();

    Paint paint69fill = Paint()..style = PaintingStyle.fill;
    paint69fill.color = Color(0xffFCC14B).withOpacity(1.0);
    canvas.drawPath(path69, paint69fill);

    Path path70 = Path();
    path70.moveTo(size.width * 0.3157031, size.height * 0.3561713);
    path70.cubicTo(size.width * 0.3214063, size.height * 0.3541562, size.width * 0.3270312, size.height * 0.3491184, size.width * 0.3322656, size.height * 0.3420655);
    path70.cubicTo(size.width * 0.3318750, size.height * 0.3337531, size.width * 0.3315625, size.height * 0.3254408, size.width * 0.3311719, size.height * 0.3171285);
    path70.cubicTo(size.width * 0.3300000, size.height * 0.3173804, size.width * 0.3288281, size.height * 0.3173804, size.width * 0.3276563, size.height * 0.3176322);
    path70.cubicTo(size.width * 0.3135938, size.height * 0.3191436, size.width * 0.2985156, size.height * 0.3221662, size.width * 0.2848438, size.height * 0.3090680);
    path70.cubicTo(size.width * 0.2845313, size.height * 0.3188917, size.width * 0.2843750, size.height * 0.3289673, size.width * 0.2842969, size.height * 0.3392947);
    path70.cubicTo(size.width * 0.2941406, size.height * 0.3539043, size.width * 0.3047656, size.height * 0.3602015, size.width * 0.3157031, size.height * 0.3561713);
    path70.close();

    Paint paint70fill = Paint()..style = PaintingStyle.fill;
    paint70fill.color = Color(0xffFCC14B).withOpacity(1.0);
    canvas.drawPath(path70, paint70fill);

    Path path71 = Path();
    path71.moveTo(size.width * 0.3339844, size.height * 0.3788413);
    path71.cubicTo(size.width * 0.3318750, size.height * 0.3372796, size.width * 0.3303906, size.height * 0.2921914, size.width * 0.3281250, size.height * 0.2523929);
    path71.cubicTo(size.width * 0.3257813, size.height * 0.2513854, size.width * 0.3234375, size.height * 0.2501259, size.width * 0.3210938, size.height * 0.2488665);
    path71.cubicTo(size.width * 0.3144531, size.height * 0.2455919, size.width * 0.3077344, size.height * 0.2400504, size.width * 0.3010156, size.height * 0.2380353);
    path71.cubicTo(size.width * 0.3062500, size.height * 0.2863980, size.width * 0.3135938, size.height * 0.3355164, size.width * 0.3257813, size.height * 0.3672544);
    path71.cubicTo(size.width * 0.3284375, size.height * 0.3743073, size.width * 0.3313281, size.height * 0.3801008, size.width * 0.3342969, size.height * 0.3853904);
    path71.cubicTo(size.width * 0.3342187, size.height * 0.3848866, size.width * 0.3342187, size.height * 0.3843829, size.width * 0.3341406, size.height * 0.3838791);
    path71.cubicTo(size.width * 0.3341406, size.height * 0.3821159, size.width * 0.3340625, size.height * 0.3806045, size.width * 0.3339844, size.height * 0.3788413);
    path71.close();

    Paint paint71fill = Paint()..style = PaintingStyle.fill;
    paint71fill.color = Color(0xffC94545).withOpacity(1.0);
    canvas.drawPath(path71, paint71fill);

    Path path72 = Path();
    path72.moveTo(size.width * 0.3703906, size.height * 0.2934509);
    path72.cubicTo(size.width * 0.3703125, size.height * 0.2909320, size.width * 0.3696094, size.height * 0.2891688, size.width * 0.3689063, size.height * 0.2896725);
    path72.cubicTo(size.width * 0.3625000, size.height * 0.2937028, size.width * 0.3465625, size.height * 0.2967254, size.width * 0.3435156, size.height * 0.2992443);
    path72.cubicTo(size.width * 0.3394531, size.height * 0.3025189, size.width * 0.3352344, size.height * 0.2962217, size.width * 0.3335156, size.height * 0.2838791);
    path72.cubicTo(size.width * 0.3296875, size.height * 0.2564232, size.width * 0.3242969, size.height * 0.2234257, size.width * 0.3183594, size.height * 0.1977330);
    path72.cubicTo(size.width * 0.3183594, size.height * 0.1977330, size.width * 0.3182813, size.height * 0.1974811, size.width * 0.3182813, size.height * 0.1974811);
    path72.lineTo(size.width * 0.3142188, size.height * 0.1795970);
    path72.cubicTo(size.width * 0.3113281, size.height * 0.1705290, size.width * 0.3058594, size.height * 0.1687657, size.width * 0.3012500, size.height * 0.1795970);
    path72.cubicTo(size.width * 0.3012500, size.height * 0.1795970, size.width * 0.2942188, size.height * 0.2098237, size.width * 0.2961719, size.height * 0.2224181);
    path72.lineTo(size.width * 0.3002344, size.height * 0.2403023);
    path72.cubicTo(size.width * 0.3002344, size.height * 0.2403023, size.width * 0.3003125, size.height * 0.2405542, size.width * 0.3003125, size.height * 0.2405542);
    path72.cubicTo(size.width * 0.3095313, size.height * 0.2818640, size.width * 0.3249219, size.height * 0.3251889, size.width * 0.3314063, size.height * 0.3403023);
    path72.cubicTo(size.width * 0.3342188, size.height * 0.3566751, size.width * 0.3456250, size.height * 0.3518892, size.width * 0.3551563, size.height * 0.3370277);
    path72.cubicTo(size.width * 0.3551563, size.height * 0.3370277, size.width * 0.3691406, size.height * 0.3143577, size.width * 0.3706250, size.height * 0.3100756);
    path72.lineTo(size.width * 0.3703906, size.height * 0.2934509);
    path72.close();

    Paint paint72fill = Paint()..style = PaintingStyle.fill;
    paint72fill.color = Color(0xff46ACC3).withOpacity(1.0);
    canvas.drawPath(path72, paint72fill);

    Path path73 = Path();
    path73.moveTo(size.width * 0.7160937, size.height * 0.08337531);
    path73.cubicTo(size.width * 0.7155469, size.height * 0.08513854, size.width * 0.7150781, size.height * 0.08715365, size.width * 0.7146094, size.height * 0.08967254);
    path73.cubicTo(size.width * 0.7139844, size.height * 0.09294710, size.width * 0.7133594, size.height * 0.09093199, size.width * 0.7128125, size.height * 0.09471033);
    path73.cubicTo(size.width * 0.7130469, size.height * 0.09521411, size.width * 0.7129688, size.height * 0.1015113, size.width * 0.7132031, size.height * 0.1020151);
    path73.cubicTo(size.width * 0.7141406, size.height * 0.1045340, size.width * 0.7150000, size.height * 0.1083123, size.width * 0.7150000, size.height * 0.1083123);
    path73.cubicTo(size.width * 0.7157031, size.height * 0.09445844, size.width * 0.7178125, size.height * 0.1060453, size.width * 0.7179688, size.height * 0.1103275);
    path73.cubicTo(size.width * 0.7181250, size.height * 0.1146096, size.width * 0.7165625, size.height * 0.1219144, size.width * 0.7176562, size.height * 0.1219144);
    path73.cubicTo(size.width * 0.7187500, size.height * 0.1219144, size.width * 0.7197656, size.height * 0.1105793, size.width * 0.7197656, size.height * 0.1105793);
    path73.cubicTo(size.width * 0.7195313, size.height * 0.09219144, size.width * 0.7183594, size.height * 0.09269521, size.width * 0.7169531, size.height * 0.08614610);
    path73.cubicTo(size.width * 0.7168750, size.height * 0.08539043, size.width * 0.7164844, size.height * 0.08438287, size.width * 0.7160937, size.height * 0.08337531);
    path73.close();

    Paint paint73fill = Paint()..style = PaintingStyle.fill;
    paint73fill.color = Color(0xff0C232B).withOpacity(1.0);
    canvas.drawPath(path73, paint73fill);

    Path path74 = Path();
    path74.moveTo(size.width * 0.7143750, size.height * 0.1045340);
    path74.cubicTo(size.width * 0.7140625, size.height * 0.1050378, size.width * 0.7126562, size.height * 0.09294710, size.width * 0.7123437, size.height * 0.09294710);
    path74.cubicTo(size.width * 0.7125781, size.height * 0.09521411, size.width * 0.7136719, size.height * 0.1113350, size.width * 0.7139844, size.height * 0.1146096);
    path74.cubicTo(size.width * 0.7144531, size.height * 0.1198992, size.width * 0.7154687, size.height * 0.1204030, size.width * 0.7155469, size.height * 0.1196474);
    path74.cubicTo(size.width * 0.7156250, size.height * 0.1183879, size.width * 0.7153125, size.height * 0.1171285, size.width * 0.7152344, size.height * 0.1158690);
    path74.cubicTo(size.width * 0.7150000, size.height * 0.1133501, size.width * 0.7151562, size.height * 0.1103275, size.width * 0.7150781, size.height * 0.1078086);
    path74.cubicTo(size.width * 0.7150781, size.height * 0.1073048, size.width * 0.7148438, size.height * 0.1037783, size.width * 0.7148438, size.height * 0.1037783);
    path74.cubicTo(size.width * 0.7146875, size.height * 0.1040302, size.width * 0.7145313, size.height * 0.1042821, size.width * 0.7143750, size.height * 0.1045340);
    path74.close();

    Paint paint74fill = Paint()..style = PaintingStyle.fill;
    paint74fill.color = Color(0xff0C232B).withOpacity(1.0);
    canvas.drawPath(path74, paint74fill);

    Path path75 = Path();
    path75.moveTo(size.width * 0.7004687, size.height * 0.09420655);
    path75.cubicTo(size.width * 0.7009375, size.height * 0.09496222, size.width * 0.7013281, size.height * 0.09571788, size.width * 0.7018750, size.height * 0.09622166);
    path75.lineTo(size.width * 0.7241406, size.height * 0.09622166);
    path75.cubicTo(size.width * 0.7244531, size.height * 0.08337531, size.width * 0.7220312, size.height * 0.06876574, size.width * 0.7189062, size.height * 0.06221662);
    path75.cubicTo(size.width * 0.7146094, size.height * 0.05314861, size.width * 0.7075781, size.height * 0.05289673, size.width * 0.7035156, size.height * 0.05768262);
    path75.cubicTo(size.width * 0.7008594, size.height * 0.06070529, size.width * 0.6957813, size.height * 0.08790932, size.width * 0.7004687, size.height * 0.09420655);
    path75.close();

    Paint paint75fill = Paint()..style = PaintingStyle.fill;
    paint75fill.color = Color(0xffE95F5C).withOpacity(1.0);
    canvas.drawPath(path75, paint75fill);

    Path path76 = Path();
    path76.moveTo(size.width * 0.6999219, size.height * 0.09596977);
    path76.lineTo(size.width * 0.7126562, size.height * 0.09596977);
    path76.cubicTo(size.width * 0.7125781, size.height * 0.09193955, size.width * 0.7100781, size.height * 0.08992443, size.width * 0.7089062, size.height * 0.08891688);
    path76.cubicTo(size.width * 0.7035156, size.height * 0.08413098, size.width * 0.6980469, size.height * 0.07934509, size.width * 0.6926562, size.height * 0.07430730);
    path76.cubicTo(size.width * 0.6908594, size.height * 0.07279597, size.width * 0.6889844, size.height * 0.07103275, size.width * 0.6871875, size.height * 0.07078086);
    path76.cubicTo(size.width * 0.6867969, size.height * 0.07078086, size.width * 0.6863281, size.height * 0.07078086, size.width * 0.6860156, size.height * 0.07153652);
    path76.cubicTo(size.width * 0.6853906, size.height * 0.07279597, size.width * 0.6853125, size.height * 0.07607053, size.width * 0.6856250, size.height * 0.07808564);
    path76.cubicTo(size.width * 0.6859375, size.height * 0.08035264, size.width * 0.6865625, size.height * 0.08186398, size.width * 0.6871875, size.height * 0.08312343);
    path76.cubicTo(size.width * 0.6907031, size.height * 0.09068010, size.width * 0.6939844, size.height * 0.09647355, size.width * 0.6981250, size.height * 0.09596977);
    path76.cubicTo(size.width * 0.6983594, size.height * 0.09622166, size.width * 0.6995312, size.height * 0.09596977, size.width * 0.6999219, size.height * 0.09596977);
    path76.close();

    Paint paint76fill = Paint()..style = PaintingStyle.fill;
    paint76fill.color = Color(0xff134E75).withOpacity(1.0);
    canvas.drawPath(path76, paint76fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
