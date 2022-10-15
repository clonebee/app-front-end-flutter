import 'package:cbmes_v1/provider/global.provider.dart';
import 'package:flutter/material.dart';
import 'package:cbmes_v1/provider/routes.Provider.dart';
import 'package:provider/provider.dart';

class SupervisoryAppsCard extends StatelessWidget {
  final dynamic pathIcon;
  final String name;
  final String stageArea;

  SupervisoryAppsCard({@required this.pathIcon, @required this.name, @required this.stageArea});

  @override
  Widget build(BuildContext context) {
    Routes routes = Provider.of<Routes>(context);
    GlobalProvider bloc = Provider.of<GlobalProvider>(context);

    localLink() {
      routes.stageArea = name;
      bloc.global = true;
      bloc.setStageArea(value: stageArea, setRoute: "supervisory/$stageArea");
      Navigator.of(context).pushReplacementNamed(routes.routesAppSupervisory['stageArea']);
      routes.setForwardRoute(routes.routesAppSupervisory['stageArea']);
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
