import 'package:cbmes_v1/provider/themes/themes.provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Widget buttonGradientIcon({
  @required BuildContext context,
  @required Function() func,
  @required double iconSize,
  @required dynamic iconx,
  @required bool status,
}) {
  ThemesCB themesCB = Provider.of<ThemesCB>(context);

  return TextButton(
    onPressed: func,
    style: ButtonStyle(
      padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero),
    ),
    child: status == true
        ? ShaderMask(
            shaderCallback: (Rect bounds) {
              final Rect rect = Rect.fromLTRB(0, 0, 100, 100);
              return themesCB.gradient.createShader(rect);
            },
            child: Icon(
              iconx,
              size: iconSize,
              color: Colors.white,
            ),
          )
        : Icon(
            iconx,
            size: iconSize,
            color: themesCB.highlightColor,
          ),
  );
}
