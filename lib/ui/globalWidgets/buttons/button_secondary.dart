import 'package:cbmes_v1/provider/themes/themes.provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Widget buttonSecondary({
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
      alignment: Alignment.center,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: themesCB.backColor,
        borderRadius: BorderRadius.all(Radius.circular(5)),
        border: Border.all(
          width: 0.5,
          color: themesCB.borderColor,
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontFamily: themesCB.fontFamily,
          fontWeight: FontWeight.w400,
          color: themesCB.fontColor,
        ),
      ),
    ),
  );
}
