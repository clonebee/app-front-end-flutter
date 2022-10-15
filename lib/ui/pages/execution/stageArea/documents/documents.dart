import 'package:cbmes_v1/provider/global.provider.dart';
import 'package:cbmes_v1/provider/production_orders.bloc.dart';
import 'package:cbmes_v1/provider/routes.Provider.dart';
import 'package:cbmes_v1/provider/themes/themes.provider.dart';
import 'package:cbmes_v1/ui/globalWidgets/customPaint/paper.dart';
import 'package:cbmes_v1/ui/pages/execution/stageArea/documents/wigets/progressBar.widget.dart';
import 'package:cbmes_v1/ui/pages/schedule/stageArea/documents/widgets/view/widgets/control_status_menu.widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cbmes_v1/ui/appBar/components/custom_drawer.dart';
import 'package:cbmes_v1/ui/appBar/custom_appBar.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class ExecutionDocuments extends StatefulWidget {
  @override
  _ExecutionDocumentsState createState() => _ExecutionDocumentsState();
}

class _ExecutionDocumentsState extends State<ExecutionDocuments> {
  bool init = true;
  DateTime time = DateTime.now();
  var formatterDateTime = new DateFormat("dd/MM/yyyy - kk'h':mm'");

  @override
  Widget build(BuildContext context) {
    var routeBar = ModalRoute.of(context).settings.name;
    GlobalProvider g = Provider.of<GlobalProvider>(context);
    Routes routes = Provider.of<Routes>(context);
    ThemesCB themesCB = Provider.of<ThemesCB>(context);
    ProductionOrdersAndExecutionBloc poe = Provider.of<ProductionOrdersAndExecutionBloc>(context);

    if (init == true) {
      init = false;
      g.modelExecution = null;
      g.modelScheduleExecution = null;
      g.getGlobalExecution(context: context, filter: '"order_status":"play"');
    }

    return Scaffold(
      appBar: CustomAppBar(routeBar),
      drawer: CustomDrawer(),
      body: Center(
        child: g.modelScheduleExecution != null
            ? Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height,
                padding: EdgeInsets.all(30),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 30),
                      Text(
                        "${formatterDateTime.format(time)}min",
                        style: TextStyle(fontSize: 30),
                      ),
                      SizedBox(height: 30),
                      ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: g.modelScheduleExecution.length,
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {
                                routes.sid = g.modelScheduleExecution[index].name;
                                routes.stageArea = "Ordens de Produção";
                                g.setStageArea(value: "production-orders", setRoute: "schedule/production-orders-data");
                                g.setDynamicModel(model: g.modelScheduleExecution[index]);
                                poe.buttonStatus(groupButton: "group1", nameButton: "balance");
                                routes.menu = "schedule";
                                Navigator.of(context).pushReplacementNamed(routes.routesExecution['executionStageAreaDocumentsViewBalance']);
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.8,
                                height: 100,
                                margin: EdgeInsets.only(bottom: 15),
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  color: themesCB.backColor,
                                  borderRadius: BorderRadius.all(Radius.circular(5)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      offset: Offset(0, 2),
                                      blurRadius: 5,
                                    )
                                  ],
                                ),
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomPaint(
                                        size: Size(30, (40).toDouble()),
                                        painter: PaperPainter(context: context),
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        "${g.modelScheduleExecution[index].name}",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: themesCB.fontColor,
                                        ),
                                      ),
                                      SizedBox(width: 30),
                                      ControlStatusMenu(model: g.modelScheduleExecution[0]),
                                      SizedBox(width: 30),
                                      Container(
                                        width: 20,
                                        height: 20,
                                        decoration: BoxDecoration(
                                          color: Colors.lightGreen,
                                          borderRadius: BorderRadius.circular(50),
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        "Real vs Planejado: 65%",
                                        style: themesCB.regularStyleText,
                                      ),
                                      SizedBox(width: 30),
                                      Text(
                                        "Lançamentos: ",
                                        style: themesCB.regularStyleText,
                                      ),
                                      progressBar(
                                        context: context,
                                        color: Colors.lightGreen,
                                        widthx: 15,
                                      ),
                                      SizedBox(width: 5),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                    ],
                  ),
                ),
              )
            : CupertinoActivityIndicator(),
      ),
    );
  }
}
