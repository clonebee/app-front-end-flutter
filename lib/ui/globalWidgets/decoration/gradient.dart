import 'package:cbmes_v1/provider/themes/themes.provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

BoxDecoration gradientOrangeRed({@required BuildContext context}) {
  ThemesCB themesCB = Provider.of<ThemesCB>(context);

  return BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(5)),
    gradient: themesCB.gradient,
  );
}
