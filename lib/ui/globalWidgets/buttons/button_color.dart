import 'package:cbmes_v1/provider/themes/themes.provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Widget buttonColor({
  @required Function() func,
  @required double widthx,
  @required double heigthx,
  @required Color backColor,
  @required Color borderColor,
  @required Color textColor,
  @required String text,
  @required double textSize,
  @required FontWeight textWeight,
  @required BuildContext context,
}) {
  ThemesCB themesCB = Provider.of<ThemesCB>(context);

  return TextButton(
    onPressed: func,
    style: ButtonStyle(
      padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero),
    ),
    child: Container(
      width: widthx,
      height: heigthx,
      alignment: Alignment.center,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: backColor,
        borderRadius: BorderRadius.all(Radius.circular(5)),
        border: Border.all(width: 0.5, color: borderColor),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: textColor,
          fontSize: textSize,
          // letterSpacing: 0,
          fontWeight: textWeight,
          fontFamily: themesCB.fontFamily,
        ),
      ),
    ),
  );
}
