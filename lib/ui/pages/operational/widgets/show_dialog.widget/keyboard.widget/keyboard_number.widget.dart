import 'package:cbmes_v1/ui/pages/operational/widgets/show_dialog.widget/keyboard.widget/button_number.widget.dart';
import 'package:flutter/material.dart';

class Keyboard extends StatefulWidget {
  @override
  _KeyboardState createState() => _KeyboardState();
}

class _KeyboardState extends State<Keyboard> {
  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonNumber(text: "1"),
            ButtonNumber(text: "2"),
            ButtonNumber(text: "3"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonNumber(text: "4"),
            ButtonNumber(text: "5"),
            ButtonNumber(text: "6"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonNumber(text: "7"),
            ButtonNumber(text: "8"),
            ButtonNumber(text: "9"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonNumber(text: "-"),
            ButtonNumber(text: "0"),
            ButtonNumber(text: "#"),
          ],
        ),
        SizedBox(height: 5),
      ],
    );
  }
}
