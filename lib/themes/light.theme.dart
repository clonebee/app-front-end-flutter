import 'package:flutter/material.dart';

const brightness = Brightness.light;
const primaryColor = const Color(0xFFFFFFFF);
const secondary = const Color(0xFF9C9C9C);
const hintColor = const Color(0xffFF6800);
const highlightColor = const Color(0xFFFF6800);
const iconColor = const Color(0xFF9C9C9C);
const bodyText2 = const Color(0xFF5E5E5E);

ThemeData lightTheme() {
  return ThemeData(
    // primarySwatch: primaryColor,
    // dividerTheme: DividerThemeData(color: Colors.blue),
    // brightness: Brightness.light,
    textTheme: new TextTheme(
      bodyText2: TextStyle(
        color: bodyText2,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: bodyText2),
    ),
    // tabBarTheme:
    // accentIconTheme:
    // accentTextTheme:
    // appBarTheme:
    // bottomAppBarTheme:
    // buttonTheme: new ButtonThemeData(
    //   buttonColor: Colors.orange,
    //   textTheme: ButtonTextTheme.primary,
    // ),
    // cardTheme: CardTheme(
    //   elevation: 5,
    //   color: Colors.indigo,
    // ),
    // chipTheme:
    // dialogTheme:
    // floatingActionButtonTheme:
    iconTheme: IconThemeData(color: iconColor),
    // inputDecorationTheme:
    // pageTransitionsTheme:
    // primaryIconTheme:
    // primaryTextTheme:
    // sliderTheme:
    primaryColor: primaryColor,
    hintColor: hintColor,
    highlightColor: highlightColor,
    fontFamily: 'ShreeDevanagari714',
    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: secondary,
      brightness: Brightness.light,
    ),
    // buttonColor: Color(0xFF00C569),
    // // scaffoldBackgroundColor: backgroundColor,
    // cardColor: Colors.white,
  );
}
