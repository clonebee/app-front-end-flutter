import 'package:cbmes_v1/themes/dark.theme.dart';
import 'package:cbmes_v1/themes/light.theme.dart';
import 'package:flutter/material.dart';

class ThemesCB extends ChangeNotifier {
  String selectTheme = "Light";
  ThemeData flutterTheme = lightTheme();

  Color highlightColor = Color(0xFFFF6800);
  Color backColor = Colors.white;
  Color backColor2 = Colors.white;
  Color palette1 = Color(0xFFE6E6E6);
  Color palette2 = Color(0xFFEBEBEB);
  Color palette3 = Color(0xFFF0F0F0);
  Color borderColor = Color(0xFFA7A7A7);
  Color cursorColor = Colors.black;
  Color iconOffColor = Color(0xFFA7A7A7);
  Color iconOnColor = Colors.white;
  Color fontColor = Colors.black;
  String fontFamily = "ShreeDevanagari714";

  TextStyle regularStyleText = TextStyle(
    color: Colors.black,
  );
  TextStyle normalHighLightStyleText = TextStyle(
    color: Color(0xFFFF6800),
  );
  TextStyle boldStyleText = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w700,
  );
  TextStyle boldHighLightStyleText = TextStyle(
    color: Color(0xFFFF6800),
    fontWeight: FontWeight.w700,
  );

  LinearGradient gradient = LinearGradient(
    begin: Alignment(-1, 1),
    end: Alignment(1.0, -1.0),
    // stops: [0.2, 0.5, 1.0],
    colors: [
      Color(0xFFED2424),
      Color(0xFFF27121),
    ],
  );
  LinearGradient gradient2 = LinearGradient(
    colors: [
      Color(0xFFF441A5),
      Color(0xFF821BFF),
    ],
  );
  LinearGradient gradient3 = LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    stops: [0.2, 1.0],
    colors: [
      Color(0xFFFDFDFD),
      Color(0xFFEBEBEB),
    ],
  );
  LinearGradient gradient4 = LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    stops: [0.2, 1.0],
    colors: [
      Color(0xFF4D4D4D),
      Color(0xFF717171),
    ],
  );
  BoxShadow shadow = BoxShadow(
    color: Colors.purple.withOpacity(0.07),
    spreadRadius: 5,
    blurRadius: 7,
    offset: Offset(0.0, 3.0), // changes position of shadow
  );
  BoxShadow shadow2 = BoxShadow(
    color: Colors.purple.withOpacity(0.5),
    spreadRadius: 5,
    blurRadius: 7,
    offset: Offset(20.0, 20.0), // changes position of shadow
  );
  setTheme({@required String theme}) {
    if (theme == "Light") {
      setLightTheme();
    }
    if (theme == "Dark") {
      setDarkTheme();
    }
  }

  setLightTheme() {
    selectTheme = "Light";
    highlightColor = Color(0xFFFF6800);
    backColor = Colors.white;
    backColor2 = Colors.white;
    palette1 = Color(0xFFE6E6E6);
    palette2 = Color(0xFFEBEBEB);
    palette3 = Color(0xFFF0F0F0);
    borderColor = Color(0xFFA7A7A7);
    cursorColor = Colors.black;
    iconOffColor = Color(0xFFA7A7A7);
    iconOnColor = Colors.white;
    fontColor = Colors.black;
    fontFamily = "ShreeDevanagari714";

    regularStyleText = TextStyle(
      color: fontColor,
    );
    normalHighLightStyleText = TextStyle(
      color: highlightColor,
    );
    boldStyleText = TextStyle(
      color: fontColor,
      fontWeight: FontWeight.w700,
    );
    boldHighLightStyleText = TextStyle(
      color: highlightColor,
      fontWeight: FontWeight.w700,
    );
    flutterTheme = lightTheme();
    notifyListeners();
  }

  setDarkTheme() {
    selectTheme = "Dark";
    highlightColor = Color(0xFFFF6800);
    backColor = Color(0xFF4D4D4D);
    backColor2 = Color(0xFF3D3D3D);
    palette1 = Color(0xFF4D4D4D);
    palette2 = Color(0xFF717171);
    palette3 = Color(0xFF949494);
    borderColor = Color(0xFFA7A7A7);
    cursorColor = Colors.white;
    iconOffColor = Color(0xFFA7A7A7);
    iconOnColor = Colors.white;
    fontColor = Colors.white;
    fontFamily = "ShreeDevanagari714";

    regularStyleText = TextStyle(
      color: fontColor,
    );
    normalHighLightStyleText = TextStyle(
      color: highlightColor,
    );
    boldStyleText = TextStyle(
      color: fontColor,
      fontWeight: FontWeight.w700,
    );
    boldHighLightStyleText = TextStyle(
      color: highlightColor,
      fontWeight: FontWeight.w700,
    );
    flutterTheme = darkTheme();
    notifyListeners();
  }
}
