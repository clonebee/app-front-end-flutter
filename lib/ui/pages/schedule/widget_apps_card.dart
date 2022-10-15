import 'package:cbmes_v1/provider/global.provider.dart';
import 'package:flutter/material.dart';
import 'package:cbmes_v1/provider/routes.Provider.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class ScheduleAppsCard extends StatelessWidget {
  dynamic pathIcon;
  String name;
  String stageArea;

  ScheduleAppsCard({@required this.pathIcon, @required this.name, @required this.stageArea});

  @override
  Widget build(BuildContext context) {
    Routes routes = Provider.of<Routes>(context);
    GlobalProvider g = Provider.of<GlobalProvider>(context);

    localLink() {
      routes.stageArea = name;
      g.global = true;
      g.setStageArea(value: stageArea, setRoute: "schedule/$stageArea");
      Navigator.of(context).pushReplacementNamed(routes.routesAppSchedule['stageArea']);
      routes.setForwardRoute(routes.routesAppSchedule['stageArea']);
      routes.setBackRoute(ModalRoute.of(context).settings.name);
    }

    return Center(
      child: Card(
        elevation: 2.0,
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: InkWell(
          splashColor: Colors.white.withAlpha(30),
          onTap: () {
            localLink();
          },
          child: Container(
            width: 180,
            height: 180,
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 100,
                  // height: 100,
                  // color: Colors.black54,
                  child: IconButton(
                    icon: pathIcon,
                    iconSize: 35,
                    onPressed: () {
                      localLink();
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  child: Text(
                    name,
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
