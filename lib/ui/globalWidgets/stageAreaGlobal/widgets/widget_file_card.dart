import 'package:cbmes_v1/provider/global.provider.dart';
import 'package:cbmes_v1/provider/themes/themes.provider.dart';
import 'package:cbmes_v1/ui/globalWidgets/customPaint/paper.dart';
import 'package:cbmes_v1/ui/globalWidgets/stageAreaGlobal/widgets/ButtonsOptions.dart';
import 'package:flutter/material.dart';
import 'package:cbmes_v1/provider/routes.Provider.dart';
import 'package:provider/provider.dart';

class FileCard extends StatelessWidget {
  final dynamic model;
  final int index;

  FileCard({@required this.model, @required this.index});

  @override
  Widget build(BuildContext context) {
    Routes routes = Provider.of<Routes>(context);
    ThemesCB themesCB = Provider.of<ThemesCB>(context);

    final GlobalProvider g = Provider.of<GlobalProvider>(context);
    return Center(
      child: Card(
        elevation: 2.0,
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: InkWell(
          onTap: () {
            g.setDynamicModel(model: model, index: index);
            Navigator.of(context).pushReplacementNamed(routes.route);
            routes.setForwardRoute(routes.route);
            routes.setBackRoute(ModalRoute.of(context).settings.name);
          },
          customBorder: Border.all(width: 0.5, color: themesCB.borderColor),
          splashColor: themesCB.highlightColor.withAlpha(30),
          child: Container(
            // color: Colors.cyanAccent,
            width: 200,
            // height: 120,
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 15),
            // color: Colors.amber,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 40,
                  child: CustomPaint(
                    size: Size(40, (40 * 1.210144927536232).toDouble()),
                    painter: PaperPainter(context: context),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  // color: Colors.green,
                  // height: 50,
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Text(
                      model.name,
                      style: TextStyle(fontSize: 15, color: themesCB.fontColor),
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    // color: Colors.black26,
                    border: Border.all(width: 0.5, color: themesCB.borderColor),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: ButtonsOptions(
                      model: model,
                      index: index,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
