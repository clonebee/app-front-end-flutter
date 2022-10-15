import 'package:cbmes_v1/provider/global.provider.dart';
import 'package:cbmes_v1/provider/operational.provider.dart';
import 'package:cbmes_v1/models/schedule/production_orders.models.dart';
import 'package:cbmes_v1/provider/themes/themes.provider.dart';
import 'package:cbmes_v1/ui/globalWidgets/myCustomScrollBehavior.dart';
import 'package:cbmes_v1/ui/pages/operational/widgets/taskModule/task_module.widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ListTasks extends StatefulWidget {
  const ListTasks({Key key}) : super(key: key);

  @override
  _ListTasksState createState() => _ListTasksState();
}

class _ListTasksState extends State<ListTasks> {
  bool init = true;

  var model = new ProductionOrdersModel();

  @override
  Widget build(BuildContext context) {
    GlobalProvider g = Provider.of<GlobalProvider>(context);
    OperationalBloc op = Provider.of<OperationalBloc>(context);
    ThemesCB themesCB = Provider.of<ThemesCB>(context);

    if (init == true) {
      init = false;
      model = g.getDynamicModel();
    }

    return op.modelObjList == null
        ? Padding(
            padding: const EdgeInsets.all(30.0),
            child: CupertinoActivityIndicator(),
          )
        : Column(
            children: [
              ScrollConfiguration(
                behavior: MyCustomScrollBehavior(),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    margin: EdgeInsets.only(top: 30, bottom: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            if (g.stageArea == "operational") {
                              op.getOperationalAll(
                                context: context,
                                statusFilter: '',
                              );
                            } else {
                              op.getOperationalAllTasksByProductionOrdersByStatus(
                                context: context,
                                productionOrder: model.sId,
                                taskStatus: '',
                              );
                            }
                          },
                          child: Container(
                            padding: EdgeInsets.all(7),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(width: 0.5, color: themesCB.borderColor),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              "Todas",
                              style: themesCB.boldStyleText,
                            ),
                          ),
                        ),
                        SizedBox(width: 15),
                        InkWell(
                          onTap: () {
                            if (g.stageArea == "operational") {
                              op.getOperationalAll(
                                context: context,
                                statusFilter: ',"task_status":"off"',
                              );
                            } else {
                              op.getOperationalAllTasksByProductionOrdersByStatus(
                                context: context,
                                productionOrder: model.sId,
                                taskStatus: ',"task_status": "off"',
                              );
                            }
                          },
                          child: Container(
                            padding: EdgeInsets.all(7),
                            decoration: BoxDecoration(
                              color: Colors.black38,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              "Não Iniciadas",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 15),
                        InkWell(
                          onTap: () {
                            if (g.stageArea == "operational") {
                              op.getOperationalAll(context: context, statusFilter: ',"task_status":"play"');
                            } else {
                              op.getOperationalAllTasksByProductionOrdersByStatus(context: context, productionOrder: model.sId, taskStatus: ',"task_status": "play"');
                            }
                          },
                          child: Container(
                            padding: EdgeInsets.all(7),
                            decoration: BoxDecoration(
                              color: Colors.lightGreen,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              "Iniciadas",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 15),
                        InkWell(
                          onTap: () {
                            if (g.stageArea == "operational") {
                              op.getOperationalAll(
                                context: context,
                                statusFilter: ',"task_status":"pause"',
                              );
                            } else {
                              op.getOperationalAllTasksByProductionOrdersByStatus(
                                context: context,
                                productionOrder: model.sId,
                                taskStatus: ',"task_status": "pause"',
                              );
                            }
                          },
                          child: Container(
                            padding: EdgeInsets.all(7),
                            decoration: BoxDecoration(
                              color: Colors.lightBlue,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              "Pausadas",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 15),
                        InkWell(
                          onTap: () {
                            if (g.stageArea == "operational") {
                              op.getOperationalAll(
                                context: context,
                                statusFilter: ',"task_status":"stop"',
                              );
                            } else {
                              op.getOperationalAllTasksByProductionOrdersByStatus(
                                context: context,
                                productionOrder: model.sId,
                                taskStatus: ',"task_status": "stop"',
                              );
                            }
                          },
                          child: Container(
                            padding: EdgeInsets.all(7),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              "Concluídas",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 30),
                child: Text(
                  "Total de Tarefas: ${op.modelObjList.length}",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: themesCB.fontColor,
                  ),
                ),
              ),
              ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                primary: false,
                physics: NeverScrollableScrollPhysics(),
                itemCount: op.modelObjList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 30),
                    child: OperationalTask(
                      model: op.modelObjList[index],
                      index: index,
                    ),
                  );
                },
              ),
            ],
          );
  }
}
