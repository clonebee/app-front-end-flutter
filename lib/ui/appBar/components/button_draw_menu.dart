import 'package:cbmes_v1/provider/themes/themes.provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class ButtonDrawMenu extends StatelessWidget {
  
  final String nameButton;
  dynamic iconButton;
  Function actionButton;
  String test = 'add';

  ButtonDrawMenu(
      {@required this.nameButton,
      @required this.iconButton,
      @required this.actionButton});

  @override
  Widget build(BuildContext context) {
    ThemesCB themesCB = Provider.of<ThemesCB>(context);

    return TextButton(
      onPressed: actionButton,
      style: TextButton.styleFrom(
        padding: EdgeInsets.all(2),
      ),
      child: Container(
        width: 280,
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              child: IconButton(
                color: themesCB.iconOffColor,
                icon: iconButton,
                iconSize: 35,
                onPressed: actionButton,
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 10),
              child: Text(
                nameButton,
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
