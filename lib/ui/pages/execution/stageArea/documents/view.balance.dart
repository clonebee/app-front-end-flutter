import 'dart:convert';

import 'package:cbmes_v1/provider/global.provider.dart';
import 'package:cbmes_v1/provider/production_orders.bloc.dart';
import 'package:cbmes_v1/models/schedule/production_orders.models.dart';
import 'package:cbmes_v1/provider/themes/themes.provider.dart';
import 'package:cbmes_v1/ui/appBar/components/custom_drawer.dart';
import 'package:cbmes_v1/ui/appBar/custom_appBar.dart';
import 'package:cbmes_v1/ui/globalWidgets/myCustomScrollBehavior.dart';
import 'package:cbmes_v1/ui/pages/schedule/stageArea/documents/widgets/view/widgets/production_orders_menu_options.view.widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class ExecutionDocumentsViewBalance extends StatefulWidget {
  ExecutionDocumentsViewBalance({Key key}) : super(key: key);

  @override
  _ExecutionDocumentsViewBalanceState createState() => _ExecutionDocumentsViewBalanceState();
}

class _ExecutionDocumentsViewBalanceState extends State<ExecutionDocumentsViewBalance> {
  bool aux = true;
  var model = new ProductionOrdersModel();

  @override
  Widget build(BuildContext context) {
    GlobalProvider g = Provider.of<GlobalProvider>(context);
    ProductionOrdersAndExecutionBloc poe = Provider.of<ProductionOrdersAndExecutionBloc>(context);
    ThemesCB themesCB = Provider.of<ThemesCB>(context);

    // var routeBar = ModalRoute.of(context).settings.name;

    if (aux == true) {
      aux = false;
      model = g.getDynamicModel();

      g.stageArea = "production-orders-executed";
      g.apiRoute = "schedule/${g.stageArea}";
      g.getId(context: context, id: model.sId);

      poe.buttonStatus(groupButton: "group1", nameButton: "balance");
    }

    return Scaffold(
      appBar: CustomAppBar("/schedule/stageArea/view"),
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              padding: EdgeInsets.only(top: 30, left: 30, right: 30, bottom: 55),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MenuOptionsViewProductionOrders(model: model),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.465,
                        margin: EdgeInsets.only(right: 30),
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: themesCB.backColor,
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          boxShadow: [themesCB.shadow],
                        ),
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 20),
                              child: Text(
                                "Gantt Planejado",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: themesCB.fontColor,
                                ),
                              ),
                            ),
                            model.filesUrl["chart_gantt"] == null || model.filesUrl["chart_gantt"] == ""
                                ? Center(
                                    child: Container(
                                      child: Text(
                                        "Nenhum Gráfico de Gantt encontrado.",
                                        style: themesCB.regularStyleText,
                                      ),
                                    ),
                                  )
                                : Container(
                                    width: MediaQuery.of(context).size.width * 0.7,
                                    alignment: Alignment.center,
                                    child: ScrollConfiguration(
                                      behavior: MyCustomScrollBehavior(),
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Container(
                                          // height: 300,
                                          padding: EdgeInsets.only(top: 20),
                                          child: SvgPicture.network(
                                            model.filesUrl["chart_gantt"],
                                            width: 1000,
                                            // height: 200,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.465,
                        margin: EdgeInsets.only(right: 30),
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: themesCB.backColor,
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          boxShadow: [themesCB.shadow],
                        ),
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 20),
                              child: Text(
                                "Gantt Executado",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: themesCB.fontColor,
                                ),
                              ),
                            ),
                            SingleChildScrollView(
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
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
