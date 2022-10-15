import 'package:cbmes_v1/provider/apiProvider.dart';
import 'package:cbmes_v1/provider/operational.provider.dart';
import 'package:cbmes_v1/models/operational/operational.model.dart';
import 'package:cbmes_v1/provider/themes/themes.provider.dart';
import 'package:cbmes_v1/themes/icons/IconsHawcons.dart';
import 'package:cbmes_v1/ui/globalWidgets/dateAndTime.dart';
import 'package:cbmes_v1/ui/globalWidgets/myCustomScrollBehavior.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class OperationalTask extends StatefulWidget {
  final OperationalModel model;
  final index;

  const OperationalTask({@required this.model, @required this.index});

  @override
  _OperationalTaskState createState() => _OperationalTaskState();
}

class _OperationalTaskState extends State<OperationalTask> {
  @override
  void initState() {
    super.initState();
  }

  bool init = true;
  String status = "off";
  String statusTime = "Aguardando...";
  DateTime statusDateTime;
  DateTime selectedDateStart = DateTime.now();
  DateTime selectedDateEnd = DateTime.now();

  TimeOfDay startSelectedTime = TimeOfDay(hour: 00, minute: 00);
  TimeOfDay endSelectedTime = TimeOfDay(hour: 00, minute: 00);

  var formatterDate = new DateFormat('dd/MM/yyyy');
  var formatterTime = new DateFormat("kk'h':mm'min'");

  Map<String, String> auxRoadMaps = {};

  Widget build(BuildContext context) {
    OperationalBloc op = Provider.of<OperationalBloc>(context);
    APIProvider apiProvider = Provider.of<APIProvider>(context);
    ThemesCB themesCB = Provider.of<ThemesCB>(context);

    if (init == true) {
      init = false;
      if (widget.model.editMode != true) {
        widget.model.editMode = false;
      }
      // for (var j in widget.model.docsRelations["list_roadmaps"]) {
      //   auxRoadMaps[j["_id"]] = j["name"];
      // }
    }

    return Center(
      child: Container(
        width: 450,
        alignment: Alignment.center,
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 80,
                  height: 70,
                  // margin: EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    color: op.status[widget.model.sId] == "play" ? Colors.lightGreen : Colors.black26,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10)),
                  ),
                  child: TextButton(
                    onPressed: () {
                      op.playButton(model: widget.model, context: context);
                    },
                    child: Icon(
                      Icons.play_arrow_rounded,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ),
                Container(
                  width: 80,
                  height: 70,
                  // margin: EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    color: op.status[widget.model.sId] == "pause" ? Colors.lightBlue : Colors.black26,
                    borderRadius: BorderRadius.all(Radius.circular(0)),
                  ),
                  child: TextButton(
                    onPressed: () {
                      op.pauseButton(model: widget.model, context: context);
                    },
                    child: Icon(
                      Icons.pause_rounded,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ),
                Container(
                  width: 80,
                  height: 70,
                  // margin: EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    color: op.status[widget.model.sId] == "stop" ? Colors.red : Colors.black26,
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10)),
                  ),
                  child: TextButton(
                    onPressed: () {
                      op.stopButton(model: widget.model, context: context);
                    },
                    child: Icon(
                      Icons.stop_rounded,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: 300,
              height: 210,
              padding: EdgeInsets.only(top: 10, left: 20),
              decoration: BoxDecoration(
                color: themesCB.backColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: ScrollConfiguration(
                behavior: MyCustomScrollBehavior(),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          style: DefaultTextStyle.of(context).style,
                          children: <TextSpan>[
                            TextSpan(
                              text: "Job: ",
                              style: themesCB.boldStyleText,
                            ),
                            TextSpan(
                              text: "${widget.model.roadmap["name"]}",
                              style: themesCB.regularStyleText,
                            ),
                          ],
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          style: DefaultTextStyle.of(context).style,
                          children: <TextSpan>[
                            TextSpan(
                              text: "Ordem: ",
                              style: themesCB.boldStyleText,
                            ),
                            TextSpan(
                              text: "${widget.model.productionOrderName}",
                              style: themesCB.regularStyleText,
                            ),
                          ],
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          style: DefaultTextStyle.of(context).style,
                          children: <TextSpan>[
                            TextSpan(
                              text: "Task: ",
                              style: themesCB.boldStyleText,
                            ),
                            TextSpan(
                              text: widget.model.name,
                              style: themesCB.regularStyleText,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      RichText(
                        text: TextSpan(
                          style: DefaultTextStyle.of(context).style,
                          children: <TextSpan>[
                            TextSpan(
                              text: "Tarefa: ",
                              style: themesCB.boldStyleText,
                            ),
                            TextSpan(
                              text: "Produzir ${widget.model.productionQty} de ${widget.model.roadmap["name"]}.",
                              style: themesCB.regularStyleText,
                            ),
                          ],
                        ),
                      ),
                      // SizedBox(height: 10),
                      // RichText(
                      //   text: TextSpan(
                      //     style: DefaultTextStyle.of(context).style,
                      //     children: <TextSpan>[
                      //       TextSpan(
                      //         text: "Previsão \n",
                      //         style: themesCB.boldStyleText,
                      //       ),
                      //       TextSpan(
                      //         text: "Início: ${formatterDate.format(DateTime.parse(widget.model.predictionStartDate))} às ${formatterTime.format(DateTime.parse(widget.model.predictionStartDate))}\n",
                      //         style: themesCB.regularStyleText,
                      //       ),
                      //       TextSpan(
                      //         text: "Termino: ${formatterDate.format(DateTime.parse(widget.model.predictionEndDate))} às ${formatterTime.format(DateTime.parse(widget.model.predictionEndDate))}",
                      //         style: themesCB.regularStyleText,
                      //       ),
                      //     ],
                      //   ),
                      // ),

                      SizedBox(height: 10),
                      widget.model.taskStatus != 'off'
                          ? Container(
                              // color: Colors.red,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Tempo de Execução",
                                    style: themesCB.boldStyleText,
                                  ),
                                  Container(
                                    // color: Colors.blue,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Início: ${formatterDate.format(DateTime.parse(widget.model.realStartDate))}",
                                          style: themesCB.regularStyleText,
                                        ),
                                        apiProvider.userType == 'users-admin' || apiProvider.userType == 'users-root'
                                            ? InkWell(
                                                onTap: () async {
                                                  selectedDateStart = await selectDate(
                                                    context: context,
                                                    selectedDate: DateTime.parse(widget.model.realStartDate),
                                                  );
                                                  widget.model.realStartDate = selectedDateStart.toString();

                                                  op.send(
                                                    context: context,
                                                    model: widget.model,
                                                    acept: () {
                                                      setState(() {});
                                                    },
                                                    noAcept: () {},
                                                  );
                                                },
                                                child: Icon(
                                                  Icons.calendar_today_outlined,
                                                  size: 15,
                                                ),
                                              )
                                            : Container(),
                                        Text(
                                          " às ${formatterTime.format(DateTime.parse(widget.model.realStartDate))}",
                                          style: themesCB.regularStyleText,
                                        ),
                                        apiProvider.userType == 'users-admin' || apiProvider.userType == 'users-root'
                                            ? InkWell(
                                                onTap: () async {
                                                  startSelectedTime = await selectTime(context: context, selectedTime: startSelectedTime);
                                                  setState(() {
                                                    startSelectedTime = startSelectedTime;
                                                  });
                                                  selectedDateStart = DateTime(selectedDateStart.year, selectedDateStart.month, selectedDateStart.day, startSelectedTime.hour, startSelectedTime.minute);
                                                  widget.model.realStartDate = selectedDateStart.toString();

                                                  op.send(
                                                    context: context,
                                                    model: widget.model,
                                                    acept: () {
                                                      setState(() {});
                                                    },
                                                    noAcept: () {},
                                                  );
                                                },
                                                child: Icon(
                                                  Icons.timer_outlined,
                                                  size: 15,
                                                ),
                                              )
                                            : Container(),
                                      ],
                                    ),
                                  ),
                                  widget.model.realEndDate == null
                                      ? Text(
                                          "Termino: ...",
                                          style: themesCB.regularStyleText,
                                        )
                                      : Container(
                                          // color: Colors.amber,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Termino: ${formatterDate.format(DateTime.parse(widget.model.realEndDate))}",
                                                style: themesCB.regularStyleText,
                                              ),
                                              apiProvider.userType == 'users-admin' || apiProvider.userType == 'users-root'
                                                  ? InkWell(
                                                      onTap: () async {
                                                        selectedDateEnd = await selectDate(
                                                          context: context,
                                                          selectedDate: DateTime.parse(widget.model.realEndDate),
                                                        );
                                                        widget.model.realEndDate = selectedDateEnd.toString();

                                                        op.send(
                                                          context: context,
                                                          model: widget.model,
                                                          acept: () {
                                                            setState(() {});
                                                          },
                                                          noAcept: () {},
                                                        );
                                                      },
                                                      child: Icon(
                                                        Icons.calendar_today_outlined,
                                                        size: 15,
                                                      ),
                                                    )
                                                  : Container(),
                                              Text(
                                                " às ${formatterTime.format(DateTime.parse(widget.model.realEndDate))}",
                                                style: themesCB.regularStyleText,
                                              ),
                                              apiProvider.userType == 'users-admin' || apiProvider.userType == 'users-root'
                                                  ? InkWell(
                                                      onTap: () async {
                                                        endSelectedTime = await selectTime(context: context, selectedTime: endSelectedTime);
                                                        setState(() {
                                                          endSelectedTime = endSelectedTime;
                                                        });
                                                        selectedDateEnd = DateTime(selectedDateEnd.year, selectedDateEnd.month, selectedDateEnd.day, endSelectedTime.hour, endSelectedTime.minute);
                                                        widget.model.realEndDate = selectedDateEnd.toString();

                                                        op.send(
                                                          context: context,
                                                          model: widget.model,
                                                          acept: () {
                                                            setState(() {});
                                                          },
                                                          noAcept: () {},
                                                        );
                                                      },
                                                      child: Icon(
                                                        Icons.timer_outlined,
                                                        size: 15,
                                                      ),
                                                    )
                                                  : Container(),
                                            ],
                                          ),
                                        ),
                                ],
                              ),
                            )
                          : Container(),
                      SizedBox(height: 10),
                      Container(
                        // color: Colors.red,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Previsão",
                              style: themesCB.boldStyleText,
                            ),
                            Container(
                              // color: Colors.blue,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Início: ${formatterDate.format(DateTime.parse(widget.model.predictionStartDate))}",
                                    style: themesCB.regularStyleText,
                                  ),
                                  apiProvider.userType == 'users-admin' || apiProvider.userType == 'users-root'
                                      ? InkWell(
                                          onTap: () async {
                                            selectedDateStart = await selectDate(
                                              context: context,
                                              selectedDate: DateTime.parse(widget.model.predictionStartDate),
                                            );
                                            widget.model.predictionStartDate = selectedDateStart.toString();

                                            op.send(
                                              context: context,
                                              model: widget.model,
                                              acept: () {
                                                setState(() {});
                                              },
                                              noAcept: () {},
                                            );
                                          },
                                          child: Icon(
                                            Icons.calendar_today_outlined,
                                            size: 15,
                                          ),
                                        )
                                      : Container(),
                                  Text(
                                    " às ${formatterTime.format(DateTime.parse(widget.model.predictionStartDate))}",
                                    style: themesCB.regularStyleText,
                                  ),
                                  apiProvider.userType == 'users-admin' || apiProvider.userType == 'users-root'
                                      ? InkWell(
                                          onTap: () async {
                                            startSelectedTime = await selectTime(context: context, selectedTime: startSelectedTime);
                                            setState(() {
                                              startSelectedTime = startSelectedTime;
                                            });
                                            selectedDateStart = DateTime(selectedDateStart.year, selectedDateStart.month, selectedDateStart.day, startSelectedTime.hour, startSelectedTime.minute);
                                            widget.model.predictionStartDate = selectedDateStart.toString();

                                            op.send(
                                              context: context,
                                              model: widget.model,
                                              acept: () {
                                                setState(() {});
                                              },
                                              noAcept: () {},
                                            );
                                          },
                                          child: Icon(
                                            Icons.timer_outlined,
                                            size: 15,
                                          ),
                                        )
                                      : Container(),
                                ],
                              ),
                            ),
                            widget.model.predictionEndDate == null
                                ? Text(
                                    "Termino: ...",
                                    style: themesCB.regularStyleText,
                                  )
                                : Container(
                                    // color: Colors.amber,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Termino: ${formatterDate.format(DateTime.parse(widget.model.predictionEndDate))}",
                                          style: themesCB.regularStyleText,
                                        ),
                                        apiProvider.userType == 'users-admin' || apiProvider.userType == 'users-root'
                                            ? InkWell(
                                                onTap: () async {
                                                  selectedDateEnd = await selectDate(
                                                    context: context,
                                                    selectedDate: DateTime.parse(widget.model.predictionEndDate),
                                                  );
                                                  widget.model.predictionEndDate = selectedDateEnd.toString();

                                                  op.send(
                                                    context: context,
                                                    model: widget.model,
                                                    acept: () {
                                                      setState(() {});
                                                    },
                                                    noAcept: () {},
                                                  );
                                                },
                                                child: Icon(
                                                  Icons.calendar_today_outlined,
                                                  size: 15,
                                                ),
                                              )
                                            : Container(),
                                        Text(
                                          " às ${formatterTime.format(DateTime.parse(widget.model.predictionEndDate))}",
                                          style: themesCB.regularStyleText,
                                        ),
                                        apiProvider.userType == 'users-admin' || apiProvider.userType == 'users-root'
                                            ? InkWell(
                                                onTap: () async {
                                                  endSelectedTime = await selectTime(context: context, selectedTime: endSelectedTime);
                                                  setState(() {
                                                    endSelectedTime = endSelectedTime;
                                                  });
                                                  selectedDateEnd = DateTime(selectedDateEnd.year, selectedDateEnd.month, selectedDateEnd.day, endSelectedTime.hour, endSelectedTime.minute);
                                                  widget.model.predictionEndDate = selectedDateEnd.toString();

                                                  op.send(
                                                    context: context,
                                                    model: widget.model,
                                                    acept: () {
                                                      setState(() {});
                                                    },
                                                    noAcept: () {},
                                                  );
                                                },
                                                child: Icon(
                                                  Icons.timer_outlined,
                                                  size: 15,
                                                ),
                                              )
                                            : Container(),
                                      ],
                                    ),
                                  ),
                            SizedBox(height: 10),
                            apiProvider.userType == 'users-admin' || apiProvider.userType == 'users-root'
                                ? Padding(
                                    padding: const EdgeInsets.only(bottom: 15),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Modo de edição: ",
                                          style: TextStyle(color: themesCB.fontColor),
                                        ),
                                        SizedBox(width: 10),
                                        Transform.scale(
                                          scale: 0.6,
                                          child: CupertinoSwitch(
                                            value: widget.model.editMode,
                                            onChanged: (value) {
                                              widget.model.editMode = value;
                                              op.send(
                                                context: context,
                                                model: widget.model,
                                                acept: () {
                                                  setState(() {});
                                                },
                                                noAcept: () {},
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                : Container(),
                          ],
                        ),
                      ),
                      // RichText(
                      //   text: TextSpan(
                      //     style: DefaultTextStyle.of(context).style,
                      //     children: <TextSpan>[
                      //       TextSpan(
                      //         text: "Status: ",
                      //         style: TextStyle(fontWeight: FontWeight.w700),
                      //       ),
                      //       TextSpan(text: statusTime),
                      //     ],
                      //   ),
                      // ),
                      // widget.model.taskStatus == "off" ? op.progress["off"] : op.progress[widget.model.sId],
                    ],
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  margin: EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    color: op.touchColor[widget.model.sId],
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      // bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: TextButton(
                    onPressed: () {
                      op.touchButton(model: widget.model, context: context);
                    },
                    child: Icon(
                      IconsHawcons.icon_24_one_finger_tap,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  width: 70,
                  height: 70,
                  margin: EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    color: op.touchColor[widget.model.sId],
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.qr_code_outlined,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  width: 70,
                  height: 70,
                  margin: EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    color: op.touchColor[widget.model.sId],
                    borderRadius: BorderRadius.only(
                      // topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: TextButton(
                    onPressed: widget.model.taskStatus != 'off'
                          ?  () {
                      op.getMapOperatorPhoto(context: context, obj: widget.model.dataEntryPlay);
                      op.infoButton(model: widget.model);
                    } : (){},
                    child: Icon(
                      Icons.info_outline_rounded,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
