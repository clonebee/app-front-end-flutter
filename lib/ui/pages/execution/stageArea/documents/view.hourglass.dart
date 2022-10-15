import 'dart:convert';

import 'package:cbmes_v1/provider/global.provider.dart';
import 'package:cbmes_v1/provider/operational.provider.dart';
import 'package:cbmes_v1/provider/production_orders.bloc.dart';
import 'package:cbmes_v1/models/schedule/production_orders.models.dart';
import 'package:cbmes_v1/provider/themes/themes.provider.dart';
import 'package:cbmes_v1/ui/appBar/components/custom_drawer.dart';
import 'package:cbmes_v1/ui/appBar/custom_appBar.dart';
import 'package:cbmes_v1/ui/globalWidgets/myCustomScrollBehavior.dart';
import 'package:cbmes_v1/ui/pages/operational/widgets/stageArea.widget.dart';
import 'package:cbmes_v1/ui/pages/schedule/stageArea/documents/widgets/view/widgets/production_orders_menu_options.view.widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class ExecutionDocumentsViewHourGlass extends StatefulWidget {
  const ExecutionDocumentsViewHourGlass({Key key}) : super(key: key);

  @override
  _ExecutionDocumentsViewHourGlassState createState() => _ExecutionDocumentsViewHourGlassState();
}

class _ExecutionDocumentsViewHourGlassState extends State<ExecutionDocumentsViewHourGlass> {
  bool init = true;
  var model = new ProductionOrdersModel();

  @override
  Widget build(BuildContext context) {
    GlobalProvider g = Provider.of<GlobalProvider>(context);
    ProductionOrdersAndExecutionBloc poe = Provider.of<ProductionOrdersAndExecutionBloc>(context);
    OperationalBloc op = Provider.of<OperationalBloc>(context);
    ThemesCB themesCB = Provider.of<ThemesCB>(context);

    // var routeBar = ModalRoute.of(context).settings.name;

    if (init == true) {
      init = false;
      model = g.getDynamicModel();

      g.stageArea = "production-orders-executed";
      g.apiRoute = "schedule/${g.stageArea}";
      g.getId(context: context, id: model.sId);

      op.loginOperator = false;
      op.getOperationalAllTasksByProductionOrdersByStatus(context: context, productionOrder: model.sId, taskStatus: '');
      op.widgetStageArea = OperationalStageArea();

      g.stageArea = "production-orders-executed";
      g.apiRoute = "schedule/${g.stageArea}";
      g.getId(context: context, id: model.sId);

      poe.buttonStatus(groupButton: "group1", nameButton: "hourglass");
    }

    return Scaffold(
      appBar: CustomAppBar("/schedule/stageArea/view"),
      drawer: CustomDrawer(),
      body: Container(
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.6,
              alignment: Alignment.topCenter,
              padding: EdgeInsets.all(30),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ScrollConfiguration(
                      behavior: MyCustomScrollBehavior(),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: MenuOptionsViewProductionOrders(model: model),
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      alignment: Alignment.topCenter,
                      child: ScrollConfiguration(
                        behavior: MyCustomScrollBehavior(),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Container(
                            // height: 300,
                            child: InteractiveViewer(
                              maxScale: 1000,
                              child: g.oneDocument == null
                                  ? CupertinoActivityIndicator()
                                  : SvgPicture.memory(
                                      base64Decode(g.oneDocument[0].chartGanttRealSvg.toString().replaceAll("data:image/svg+xml;base64,", "")),
                                      width: 1000,
                                      // height: 200,
                                    ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: themesCB.backColor,
                boxShadow: [themesCB.shadow],
              ),
              child: Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Container(
                    alignment: Alignment.topCenter,
                    child: ScrollConfiguration(
                      behavior: MyCustomScrollBehavior(),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Container(
                          width: 550,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // SizedBox(height: 30),
                              op.widgetHourGlass,
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
