import 'dart:async';
import 'package:cbmes_v1/provider/global.provider.dart';
import 'package:cbmes_v1/provider/jsonx/jsonx.provider.dart';
import 'package:cbmes_v1/provider/routes.Provider.dart';
import 'package:cbmes_v1/provider/supervisory.provider.dart';
import 'package:cbmes_v1/models/supervisory/cbhardware.models.dart';
import 'package:cbmes_v1/provider/themes/themes.provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class CBHardwareView extends StatefulWidget {
  @override
  _CBHardwareViewState createState() => _CBHardwareViewState();
}

class _CBHardwareViewState extends State<CBHardwareView> {
  var model = new CBHardwareModel();
  bool init = true;
  String sensorSelect;
  String eixoXSelect;
  Timer timer;
  var oneSec = const Duration(seconds: 1);
  bool controlColorChart = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SupervisoryBloc sup = Provider.of<SupervisoryBloc>(context);
    GlobalProvider g = Provider.of<GlobalProvider>(context);
    ThemesCB themesCB = Provider.of<ThemesCB>(context);
    JsonX jx = Provider.of<JsonX>(context);
    Routes routes = Provider.of<Routes>(context);

    List<double> values = g.dataCollectValue;

    loopChart() {
      if (routes.forwardRoute == "/supervisory/stageArea/view") {
        timer = new Timer.periodic(oneSec, (Timer t) {
          g.getDataCollectSupervisory(
            context: context,
            sensorName: model.sensorsNameEn[sensorSelect],
            apiRoute: 'supervisory/data-collect-charts/${model.serialNumber}/${model.sensorsNameEn[sensorSelect]}',
            id: '',
          );
        });
        setState(() {});
      } else {
        timer.cancel();
      }
    }

    if (init == true) {
      init = false;
      jx.apiRoute = "supervisory/cbhardware-data";
      model = g.getDynamicModel();
      loopChart();
      sensorSelect = model.sensorsNamePt[0];
      eixoXSelect = "segundos";
    }

    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  model.name,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text("Setor: Setor 1"),
              ],
            ),
          ),
          // Container(
          //   child: ButtonsOptions(
          //     model: null,
          //     index: 0,
          //   ),
          // ),

          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(top: 20),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.all(Radius.circular(3)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 0.5,
                  blurRadius: 2,
                  offset: Offset(0, 1), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      sup.button(
                        func: () {
                          sup.buttonStatus(groupButton: "group1", nameButton: "Real Time");
                        },
                        groupButton: "group1",
                        nameButton: "Real Time",
                        width: 100,
                        height: 45,
                        widgetx: Text("Real Time"),
                      ),
                      // sup.button(
                      //   func: () {
                      //     sup.buttonStatus(groupButton: "group1", nameButton: "Período");
                      //   },
                      //   groupButton: "group1",
                      //   nameButton: "Período",
                      //   width: 100,
                      //   height: 45,
                      //   widgetx: Text("Período"),
                      // ),
                      SizedBox(width: 20),
                      Container(
                        height: 45,
                        margin: EdgeInsets.only(top: 5),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          // color: Theme.of(context).primaryColor,
                          border: Border.all(width: 0.5, color: Color(0xFF9C9C9C)),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: DropdownButton<String>(
                          value: sensorSelect,
                          icon: Icon(
                            Icons.arrow_downward,
                            color: themesCB.iconOffColor,
                          ),
                          iconSize: 24,
                          elevation: 16,
                          style: TextStyle(color: Theme.of(context).hintColor),
                          underline: Container(
                            height: 0,
                            color: Theme.of(context).hintColor,
                          ),
                          onChanged: (String newValue) {
                            setState(() {
                              sensorSelect = newValue;
                            });
                          },
                          items: model.sensorsNamePt.map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: RichText(
                                text: TextSpan(
                                  style: DefaultTextStyle.of(context).style,
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: "Sensor: ",
                                      style: TextStyle(fontWeight: FontWeight.w700),
                                    ),
                                    TextSpan(text: value),
                                  ],
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                      SizedBox(width: 10),
                      // Container(
                      //   height: 45,
                      //   margin: EdgeInsets.only(top: 5),
                      //   padding: EdgeInsets.all(10),
                      //   decoration: BoxDecoration(
                      //     // color: Theme.of(context).primaryColor,
                      //     border: Border.all(width: 0.5, color: Color(0xFF9C9C9C)),
                      //     borderRadius: BorderRadius.all(Radius.circular(5)),
                      //   ),
                      //   child: DropdownButton<String>(
                      //     value: eixoXSelect,
                      //     icon: Icon(
                      //       Icons.arrow_downward,
                      //       color: themesCB.iconOffColor,
                      //     ),
                      //     iconSize: 24,
                      //     elevation: 16,
                      //     style: TextStyle(color: Theme.of(context).hintColor),
                      //     underline: Container(
                      //       height: 0,
                      //       color: Theme.of(context).hintColor,
                      //     ),
                      //     onChanged: (String newValue) {
                      //       setState(() {
                      //         eixoXSelect = newValue;
                      //         model.axisX = model.axisXen[eixoXSelect];
                      //         jx.send(context: context, jsonx: model.toJson(), create: false, func: () {});
                      //       });
                      //     },
                      //     items: model.axisXpt.map<DropdownMenuItem<String>>((String value) {
                      //       return DropdownMenuItem<String>(
                      //         value: value,
                      //         child: RichText(
                      //           text: TextSpan(
                      //             style: DefaultTextStyle.of(context).style,
                      //             children: <TextSpan>[
                      //               TextSpan(
                      //                 text: "Eixo x: ",
                      //                 style: TextStyle(fontWeight: FontWeight.w700),
                      //               ),
                      //               TextSpan(text: value),
                      //             ],
                      //           ),
                      //         ),
                      //       );
                      //     }).toList(),
                      //   ),
                      // ),
                      // SizedBox(width: 20),
                      // sup.button(
                      //   func: () {
                      //     sup.buttonStatus(groupButton: "group2", nameButton: "Step");
                      //     sup.typeChart = "chart_step";
                      //   },
                      //   groupButton: "group2",
                      //   nameButton: "Step",
                      //   width: 50,
                      //   height: 45,
                      //   widgetx: Container(
                      //     width: 50,
                      //     child: Icon(
                      //       SupervisoryIcons.step,
                      //       size: 15,
                      //     ),
                      //   ),
                      // ),
                      // sup.button(
                      //   func: () {
                      //     sup.buttonStatus(groupButton: "group2", nameButton: "Serie");
                      //     sup.typeChart = "chart_serie";
                      //   },
                      //   groupButton: "group2",
                      //   nameButton: "Serie",
                      //   width: 50,
                      //   height: 45,
                      //   widgetx: Container(
                      //     width: 50,
                      //     child: Icon(
                      //       SupervisoryIcons.serie,
                      //       size: 15,
                      //     ),
                      //   ),
                      // ),
                      // sup.button(
                      //   func: () {
                      //     sup.buttonStatus(groupButton: "group2", nameButton: "Exponential");
                      //     sup.typeChart = "chart_exponential";
                      //   },
                      //   groupButton: "group2",
                      //   nameButton: "Exponential",
                      //   width: 50,
                      //   height: 45,
                      //   widgetx: Container(
                      //     width: 50,
                      //     child: Icon(
                      //       SupervisoryIcons.exponential,
                      //       size: 15,
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
                Container(
                  decoration: controlColorChart == true
                      ? BoxDecoration(
                          gradient: themesCB.gradient,
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                          boxShadow: [themesCB.shadow],
                        )
                      : BoxDecoration(
                          color: themesCB.backColor,
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                          boxShadow: [themesCB.shadow],
                        ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.5,
                  margin: EdgeInsets.only(top: 10, left: 5, right: 5, bottom: 5),
                  child: Padding(
                    padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                    child: SfSparkLineChart(
                      // isInversed: true,
                      color: controlColorChart == true ? Colors.white : themesCB.highlightColor,
                      width: 4.0,
                      //Enable the trackball
                      trackball: SparkChartTrackball(activationMode: SparkChartActivationMode.tap),
                      //Enable marker
                      marker: SparkChartMarker(displayMode: SparkChartMarkerDisplayMode.all),
                      //Enable data label
                      labelDisplayMode: SparkChartLabelDisplayMode.all,
                      data: values.reversed.toList(),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      controlColorChart = !controlColorChart;
                      g.dataCollect = g.dataCollect;
                      values = g.dataCollectValue;
                    });
                  },
                  child: Container(
                    child: Icon(
                      Icons.color_lens,
                      color: themesCB.iconOffColor,
                      size: 30.0,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
