import 'package:cbmes_v1/provider/themes/themes.provider.dart';
import 'package:cbmes_v1/themes/icons/IconsLinear.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Widget photoPerfil({
  @required BuildContext context,
  @required dynamic obj,
  @required double circularSize,
  @required double iconSize,
}) {
  ThemesCB themesCB = Provider.of<ThemesCB>(context, listen: false);

  return obj == ""
      ? ClipRRect(
          borderRadius: new BorderRadius.circular(circularSize),
          child: Container(
            width: circularSize,
            height: circularSize,
            decoration: BoxDecoration(
              color: themesCB.backColor,
              border: Border.all(color: themesCB.borderColor, width: 0.5),
              borderRadius: BorderRadius.circular(circularSize),
            ),
            child: Icon(
              IconsLinear.user,
              size: iconSize,
              color: themesCB.iconOffColor,
            ),
          ),
        )
      : ClipRRect(
          borderRadius: new BorderRadius.circular(circularSize),
          child: Container(
            width: circularSize,
            height: circularSize,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(circularSize)),
              image: DecorationImage(
                image: NetworkImage("$obj"),
                fit: BoxFit.fill,
              ),
            ),
          ),
        );
}

