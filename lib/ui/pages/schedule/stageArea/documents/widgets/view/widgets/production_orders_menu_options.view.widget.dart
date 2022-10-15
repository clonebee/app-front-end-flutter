import 'package:cbmes_v1/provider/apiProvider.dart';
import 'package:cbmes_v1/provider/global.provider.dart';
import 'package:cbmes_v1/provider/operational.provider.dart';
import 'package:cbmes_v1/provider/production_orders.bloc.dart';
import 'package:cbmes_v1/provider/routes.Provider.dart';
import 'package:cbmes_v1/ui/globalWidgets/customPaint/balance.dart';
import 'package:cbmes_v1/ui/globalWidgets/customPaint/hourglass.dart';
import 'package:cbmes_v1/ui/globalWidgets/myCustomScrollBehavior.dart';
import 'package:cbmes_v1/ui/globalWidgets/stageAreaGlobal/widgets/ButtonsOptions.dart';
import 'package:cbmes_v1/ui/pages/schedule/stageArea/documents/widgets/view/widgets/control_status_menu.widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MenuOptionsViewProductionOrders extends StatefulWidget {
  final model;

  const MenuOptionsViewProductionOrders({Key key, @required this.model})
      : super(key: key);

  @override
  _MenuOptionsViewProductionOrdersState createState() =>
      _MenuOptionsViewProductionOrdersState(model: model);
}

class _MenuOptionsViewProductionOrdersState
    extends State<MenuOptionsViewProductionOrders> {
  dynamic model;

  _MenuOptionsViewProductionOrdersState({@required this.model});

  @override
  Widget build(BuildContext context) {
    GlobalProvider g = Provider.of<GlobalProvider>(context);
    APIProvider apiProvider = Provider.of<APIProvider>(context);
    OperationalBloc op = Provider.of<OperationalBloc>(context);
    Routes routes = Provider.of<Routes>(context);
    ProductionOrdersAndExecutionBloc poe =
        Provider.of<ProductionOrdersAndExecutionBloc>(context);

    op.operatorUser = apiProvider.userIdObj;

    return Container(
      // width: MediaQuery.of(context).size.width * 0.7,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 45,
              margin: EdgeInsets.only(right: 10),
              child: ScrollConfiguration(
                behavior: MyCustomScrollBehavior(),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          "Ordem de Produção",
                          style: TextStyle(
                            fontSize: 20,
                            height: 1.1,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          widget.model.name,
                          style: TextStyle(
                            fontSize: 20,
                            height: 1.1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ControlStatusMenu(model: model),
            SizedBox(width: 40),
            Container(
              height: 45,
              margin: EdgeInsets.only(right: 15),
              padding: EdgeInsets.only(left: 15, right: 15),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                border: Border.all(
                    width: 0.5, color: Theme.of(context).colorScheme.secondary),
                borderRadius: BorderRadius.all(Radius.circular(3)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(2, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                children: [
                  Container(
                    child: Text("Gantt Planejado: "),
                  ),
                  poe.button(
                    func: () {
                      poe.buttonStatus(
                          groupButton: "group1", nameButton: "planned");
                      routes.menu = "schedule";
                      g.stageArea = "production-orders";
                      Navigator.of(context).pushReplacementNamed(routes
                          .routesAppSchedule['scheduleStageAreaDocumentsView']);
                    },
                    groupButton: "group1",
                    nameButton: "planned",
                    width: 35,
                    height: 35,
                    widgetx: Icon(Icons.sort_rounded),
                  ),
                ],
              ),
            ),
           model.orderStatus != "off" ? Container(
              height: 45,
              margin: EdgeInsets.only(right: 15),
              padding: EdgeInsets.only(left: 15, right: 15),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                border: Border.all(
                    width: 0.5, color: Theme.of(context).colorScheme.secondary),
                borderRadius: BorderRadius.all(Radius.circular(3)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(2, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                children: [
                  Container(
                    child: Text("Gantt Executado: "),
                  ),
                  poe.button(
                    func: () {
                      poe.buttonStatus(
                          groupButton: "group1", nameButton: "balance");
                      routes.menu = "schedule";
                      Navigator.of(context).pushReplacementNamed(
                          routes.routesExecution[
                              'executionStageAreaDocumentsViewBalance']);
                    },
                    groupButton: "group1",
                    nameButton: "balance",
                    width: 35,
                    height: 35,
                    widgetx: iconBalance(
                      widthx: 30,
                      colorx: poe.mapStateButton["group1"]["balance"] == true
                          ? Colors.white
                          : Color(0xFF9C9C9C),
                    ),
                  ),
                  poe.button(
                    func: () {
                      poe.buttonStatus(
                          groupButton: "group1", nameButton: "hourglass");
                      routes.menu = "schedule";
                      Navigator.of(context).pushReplacementNamed(
                          routes.routesExecution[
                              'executionStageAreaDocumentsViewHourGlass']);
                    },
                    groupButton: "group1",
                    nameButton: "hourglass",
                    width: 35,
                    height: 35,
                    widgetx: iconHourGlass(
                      widthx: 15,
                      colorx: poe.mapStateButton["group1"]["hourglass"] == true
                          ? Colors.white
                          : Color(0xFF9C9C9C),
                    ),
                  ),
                ],
              ),
            ) : Container(),
            Container(
              alignment: Alignment.centerRight,
              child: ScrollConfiguration(
                behavior: MyCustomScrollBehavior(),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: ButtonsOptions(
                    model: widget.model,
                    index: 0,
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
