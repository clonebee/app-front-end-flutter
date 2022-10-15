import 'package:flutter/material.dart';

class ProductionOrdersAndExecutionBloc extends ChangeNotifier {
  Map<String, Map<String, bool>> mapStateButton = {
    "group1": {
      "planned": true,
      "balance": false,
      "hourglass": false,
    },
    // "group2": {
    //   "Step": true,
    //   "Serie": false,
    //   "Exponential": false,
    // }
  };

  BoxDecoration onSelect = BoxDecoration(
    gradient: LinearGradient(colors: [Color.fromRGBO(237, 37, 36, 1), Color.fromRGBO(242, 113, 33, 1)]),
    borderRadius: BorderRadius.all(Radius.circular(5)),
  );

  BoxDecoration offSelect = BoxDecoration(
    border: Border.all(width: 0.5, color: Color(0xFF9C9C9C)),
    borderRadius: BorderRadius.all(Radius.circular(5)),
  );

  buttonStatus({@required String groupButton, @required String nameButton}) {
    for (var x in mapStateButton.keys) {
      if (x == groupButton) {
        for (var y in mapStateButton[x].keys) {
          if (y == nameButton) {
            mapStateButton[x][y] = true;
          } else {
            mapStateButton[x][y] = false;
          }
        }
      }
    }
    notifyListeners();
  }

  Widget button({
    @required Function func,
    @required String groupButton,
    @required String nameButton,
    @required double width,
    @required double height,
    @required Widget widgetx,
  }) {
    return Container(
      width: width,
      height: height,
      margin: EdgeInsets.all(3),
      decoration: mapStateButton[groupButton][nameButton] == true ? onSelect : offSelect,
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.all(0),
          primary: mapStateButton[groupButton][nameButton] == true ? Colors.white : Color(0xFF9C9C9C),
          textStyle: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w300,
          ),
          // onPrimary: Colors.white,
          shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
        ),
        onPressed: func,
        child: widgetx,
      ),
    );
  }
}
