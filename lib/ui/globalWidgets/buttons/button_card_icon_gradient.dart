import 'package:cbmes_v1/provider/themes/themes.provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Widget buttonCardIconGradient({
  @required Function() func,
  @required bool active,
  @required double heigthx,
  @required dynamic iconx,
  @required String text,
  @required BuildContext context,
}) {
  ThemesCB themesCB = Provider.of<ThemesCB>(context);

  return InkWell(
    onTap: () {
      func();
    },
    child: Container(
      height: heigthx,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        gradient: active == true ? themesCB.gradient : themesCB.gradient4,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            iconx,
            color: Colors.white,
            size: 50,
          ),
          SizedBox(height: 10),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              // letterSpacing: 0,
              fontWeight: FontWeight.w700,
              fontFamily: themesCB.fontFamily,
            ),
          ),
        ],
      ),
    ),
  );
}
