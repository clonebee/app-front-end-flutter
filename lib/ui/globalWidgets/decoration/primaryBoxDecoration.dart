import 'package:cbmes_v1/provider/themes/themes.provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

BoxDecoration primaryBoxDecoration({@required BuildContext context}) {
  ThemesCB themesCB = Provider.of<ThemesCB>(context, listen: false);

  return BoxDecoration(
    color: themesCB.backColor,
    border: Border.all(width: 0.5, color: themesCB.borderColor),
    borderRadius: BorderRadius.all(Radius.circular(10)),
  );
}
