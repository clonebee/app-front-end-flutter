import 'package:flutter/material.dart';

const brightness = Brightness.dark;
const primaryColor = const Color(0xFF424242);
const secondary = const Color(0xFF9E9E9E);
const hintColor = const Color(0xffFF6800);
const highlightColor = const Color(0xffFF6800);
const iconColor = const Color(0xFF9E9E9E);
const bodyText2 = const Color(0xFFA3A3A3);

ThemeData darkTheme() {
  return ThemeData(
    // primarySwatch: primaryColor,
    // dividerTheme: DividerThemeData(color: Colors.blue),
    // brightness: Brightness.dark,
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
      brightness: Brightness.dark,
    ),
    // buttonColor: Color(0xFF00C569),
    // // scaffoldBackgroundColor: backgroundColor,
    // cardColor: Colors.white,
  );
}
