import 'package:cbmes_v1/api/api.dart';
import 'package:flutter/material.dart';

class SupervisoryBloc extends ChangeNotifier {
  final api = new API();

  Map<String, dynamic> charts = {
    "chart_step": "",
    "chart_serie": "",
    "chart_exponential": "",
  };
  String typeChart = "chart_step";

  Map<String, Map<String, bool>> mapStateButton = {
    "group1": {
      "Real Time": true,
      "Período": false,
    },
    "group2": {
      "Step": true,
      "Serie": false,
      "Exponential": false,
    }
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
      margin: EdgeInsets.all(5),
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

  getCharts({@required String serialNumber, @required String sensor, @required BuildContext context}) async {
    String apiRouteCharts = "supervisory/cbcollect-charts/cb-valeza-1/$sensor";
    charts = await api.getOne(apiRoute: apiRouteCharts, context: context);
    notifyListeners();
  }
}
