import 'package:cbmes_v1/provider/global.provider.dart';
import 'package:cbmes_v1/provider/themes/themes.provider.dart';
import 'package:cbmes_v1/ui/globalWidgets/customPaint/paper.dart';
import 'package:cbmes_v1/ui/globalWidgets/stageAreaGlobal/widgets/ButtonsOptions.dart';
import 'package:flutter/material.dart';
import 'package:cbmes_v1/provider/routes.Provider.dart';
import 'package:provider/provider.dart';

class FileLine extends StatelessWidget {
  final dynamic model;
  final int index;

  FileLine({@required this.model, @required this.index});

  @override
  Widget build(BuildContext context) {
    Routes routes = Provider.of<Routes>(context);
    ThemesCB themesCB = Provider.of<ThemesCB>(context);
    GlobalProvider g = Provider.of<GlobalProvider>(context);

    return Center(
      child: Card(
        elevation: 2.0,
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              g.setDynamicModel(model: model, index: index);
              Navigator.of(context).pushReplacementNamed(routes.route);
              routes.setForwardRoute(routes.route);
              routes.setBackRoute(ModalRoute.of(context).settings.name);
            },
            customBorder: Border.all(width: 0.5, color: themesCB.borderColor),
            splashColor: themesCB.highlightColor.withAlpha(30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  flex: 7,
                  child: Container(
                    child: Row(
                      children: [
                        Container(
                          width: 40,
                          child: CustomPaint(
                            size: Size(40, (40 * 1.210144927536232).toDouble()),
                            painter: PaperPainter(context: context),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(right: 10, left: 8),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Text(
                                "${model.name}",
                                style: TextStyle(fontSize: 15, color: themesCB.fontColor),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 3,
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
