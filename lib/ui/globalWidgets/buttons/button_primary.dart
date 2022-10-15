import 'package:cbmes_v1/provider/themes/themes.provider.dart';
import 'package:cbmes_v1/ui/globalWidgets/decoration/gradient.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Widget buttonPrimary({
  @required BuildContext context,
  @required Function() func,
  @required double widthx,
  @required String text,
}) {
  ThemesCB themesCB = Provider.of<ThemesCB>(context);

  return TextButton(
    onPressed: func,
    style: ButtonStyle(
      padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero),
    ),
    child: Container(
      // width: widthx,
      constraints: BoxConstraints(minWidth: widthx),
      // margin: EdgeInsets.only(left: 15),
      alignment: Alignment.center,
      padding: EdgeInsets.all(10),
      decoration: gradientOrangeRed(context: context),
      child: Text(
        text,
        style: TextStyle(
          fontFamily: themesCB.fontFamily,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
      ),
    ),
  );
}
