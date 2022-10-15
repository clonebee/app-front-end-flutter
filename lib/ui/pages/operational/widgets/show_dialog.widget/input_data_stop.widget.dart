import 'package:cbmes_v1/provider/operational.provider.dart';
import 'package:cbmes_v1/provider/themes/themes.provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InputDataStop extends StatefulWidget {
  @override
  _InputDataStopState createState() => _InputDataStopState();
}

class _InputDataStopState extends State<InputDataStop> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    OperationalBloc op = Provider.of<OperationalBloc>(context);
    ThemesCB themesCB = Provider.of<ThemesCB>(context);

    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: themesCB.backColor,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Realmente deseja finalizar esta Task?",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              color: themesCB.fontColor,
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            height: 40,
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            child: TextButton(
              style: TextButton.styleFrom(
                primary: Colors.white,
                textStyle: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
                // onPrimary: Colors.white,
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
              ),
              onPressed: () {
                op.inputDataStop(context: context);
                Navigator.of(context).pop();
              },
              child: Text("FINALIZAR TASK"),
            ),
          ),
        ],
      ),
    );
  }
}
