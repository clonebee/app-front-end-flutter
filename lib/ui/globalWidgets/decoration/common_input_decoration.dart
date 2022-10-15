import 'package:cbmes_v1/provider/themes/themes.provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

InputDecoration commonInputDecoration({
  @required BuildContext context,
  @required String labelText,
}) {
  ThemesCB themesCB = Provider.of<ThemesCB>(context);

  return InputDecoration(
    labelText: labelText,
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: themesCB.borderColor, width: 0.5),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: themesCB.borderColor, width: 0.5),
    ),
    fillColor: Colors.transparent,
    labelStyle: TextStyle(
      fontWeight: FontWeight.w400,
      fontFamily: themesCB.fontFamily,
      fontSize: 16,
      color: themesCB.fontColor,
    ),
    errorStyle: TextStyle(
      fontWeight: FontWeight.w400,
      fontFamily: themesCB.fontFamily,
      fontSize: 16,
      color: themesCB.fontColor,
    ),
  );
}
