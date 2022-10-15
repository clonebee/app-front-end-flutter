import 'package:flutter/material.dart';

class GlobalScaffold {
  static final GlobalScaffold instance = GlobalScaffold();

  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

  void showSnackbar(SnackBar snackbar) {
    scaffoldMessengerKey.currentState?.showSnackBar(snackbar);
  }

  getshowSnackbar(String value) {
    GlobalScaffold.instance.showSnackbar(
      SnackBar(
        duration: new Duration(seconds: 2),
        backgroundColor: Color(0xffFF6800).withOpacity(1.0),
        content: Text(
          '$value',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
