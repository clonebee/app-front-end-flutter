import 'package:cbmes_v1/provider/operational.provider.dart';
import 'package:cbmes_v1/provider/themes/themes.provider.dart';
import 'package:cbmes_v1/themes/icons/IconsHawcons.dart';
import 'package:cbmes_v1/themes/icons/IconsLinear.dart';
import 'package:cbmes_v1/ui/globalWidgets/customPaint/barcode.dart';
import 'package:cbmes_v1/ui/globalWidgets/myCustomScrollBehavior.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class OperationalThrowView extends StatelessWidget {
  final formatterDate = new DateFormat('dd/MM/yyyy');
  final formatterTime = new DateFormat("kk'h':mm'min'");
  final List<String> mode = ["play", "pause", "stop"];

  final ScrollController sc1 = ScrollController();
  final ScrollController sc2 = ScrollController();

  final Map<String, dynamic> iconOrigin = {
    "manual-touch": Icon(
      IconsHawcons.icon_24_one_finger_tap,
      size: 35,
      color: Colors.black26,
    ),
    "manual-qrcode": Icon(
      Icons.qr_code_outlined,
      size: 35,
      color: Colors.black26,
    ),
    "manual-barcode": iconBarCode(
      widthx: 35,
      colorx: Colors.black26,
    ),
    "CB-HW": Icon(
      IconsLinear.tablet,
      size: 35,
      color: Colors.black26,
    ),
    "server": Icon(
      IconsLinear.tablet,
      size: 35,
      color: Colors.black26,
    ),
  };

  @override
  Widget build(BuildContext context) {
    OperationalBloc op = Provider.of<OperationalBloc>(context);
    ThemesCB themesCB = Provider.of<ThemesCB>(context);

    return Container(
      alignment: Alignment.topCenter,
      padding: EdgeInsets.only(top: 50),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      padding: EdgeInsets.all(0),
                      onPressed: () {
                        op.validationOperator(true);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_rounded,
                        size: 40,
                        color: themesCB.iconOffColor,
                      ),
                    ),
                  ),
                  Container(
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
                              TextSpan(text: "${op.modelObj.roadmap["name"]}"),
                            ],
                          ),
                        ),
                        // RichText(
                        //   text: TextSpan(
                        //     style: DefaultTextStyle.of(context).style,
                        //     children: <TextSpan>[
                        //       TextSpan(
                        //         text: "Ordem: ",
                        //         style: themesCB.boldStyleText,
                        //       ),
                        //       TextSpan(
                        //         text: "${op.model.productionOrderName}",
                        //         style: themesCB.regularStyleText,
                        //       ),
                        //     ],
                        //   ),
                        // ),
                        RichText(
                          text: TextSpan(
                            style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(
                                text: "Task: ",
                                style: themesCB.boldStyleText,
                              ),
                              TextSpan(text: "${op.modelObj.name}"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 150,
                    height: 40,
                    decoration: BoxDecoration(
                      color: themesCB.backColor,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 0,
                          blurRadius: 2,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 40,
                          height: 30,
                          decoration: BoxDecoration(
                            color: op.status[op.modelObj.sId] == "play" ? Colors.lightGreen : Colors.black26,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: TextButton(
                            onPressed: () {
                              op.playButton(model: op.modelObj, context: context);
                              op.statusThrowView = "play";
                              op.throwViewModeState(context: context, status: "play");
                            },
                            child: Icon(
                              Icons.play_arrow,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          width: 40,
                          height: 30,
                          decoration: BoxDecoration(
                            color: op.status[op.modelObj.sId] == "pause" ? Colors.lightBlue : Colors.black26,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: TextButton(
                            onPressed: () {
                              op.pauseButton(model: op.modelObj, context: context);
                              op.statusThrowView = "pause";
                              op.throwViewModeState(context: context, status: "pause");
                            },
                            child: Icon(
                              Icons.pause_rounded,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          width: 40,
                          height: 30,
                          decoration: BoxDecoration(
                            color: op.status[op.modelObj.sId] == "stop" ? Colors.red : Colors.black26,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: TextButton(
                            onPressed: () {
                              op.stopButton(model: op.modelObj, context: context);
                              op.statusThrowView = "stop";
                              op.throwViewModeState(context: context, status: "stop");
                            },
                            child: Icon(
                              Icons.stop_rounded,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    margin: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      color: op.touchColor[op.modelObj.sId],
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextButton(
                      onPressed: () {
                        op.touchButton(model: op.modelObj, context: context);
                      },
                      child: Icon(
                        IconsHawcons.icon_24_one_finger_tap,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    margin: EdgeInsets.only(left: 5),
                    decoration: BoxDecoration(
                      color: op.touchColor[op.modelObj.sId],
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.qr_code_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(height: 25),
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(left: 15),
            child: RichText(
              text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: <TextSpan>[
                  TextSpan(
                    text: "Tarefa: ",
                    style: themesCB.boldStyleText,
                  ),
                  TextSpan(
                    text: "Produzir ${op.modelObj.productionQty} de ${op.modelObj.roadmap["name"]}.",
                    style: themesCB.regularStyleText,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Divider(
            height: 20,
            thickness: 1,
            indent: 0,
            endIndent: 0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(right: 10),
                child: Text(
                  "Selecione um estado para\nvisualizar os lançamentos:",
                  style: themesCB.regularStyleText,
                ),
              ),
              Container(
                height: 45,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: themesCB.backColor,
                  border: Border.all(width: 0.5, color: themesCB.borderColor),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: DropdownButton<String>(
                  // isExpanded: true,
                  value: op.statusThrowView,
                  icon: Icon(
                    Icons.arrow_downward,
                    color: themesCB.iconOffColor,
                  ),
                  iconSize: 24,
                  elevation: 16,
                  style: themesCB.boldHighLightStyleText,
                  underline: Container(
                    height: 0,
                    color: themesCB.highlightColor,
                  ),
                  onChanged: (String newValue) {
                    op.statusThrowView = newValue;
                    op.throwViewModeState(context: context, status: newValue);
                  },
                  items: mode.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          Divider(
            height: 20,
            thickness: 1,
            indent: 0,
            endIndent: 0,
          ),
          SizedBox(height: 40),
          ScrollConfiguration(
            behavior: MyCustomScrollBehavior(),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              controller: sc1,
              child: op.objView.length < 1
                  ? Text(
                      "Nenhum lançamento realizado.",
                      style: themesCB.regularStyleText,
                    )
                  : ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      primary: false,
                      reverse: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: op.objView.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          margin: EdgeInsets.only(bottom: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              op.mapOperatorPhoto[op.objView[index]["user_id"]] == null
                                  ? CupertinoActivityIndicator()
                                  : Container(
                                      margin: EdgeInsets.only(right: 20),
                                      child: op.mapOperatorPhoto[op.objView[index]["user_id"]] == null || op.mapOperatorPhoto[op.objView[index]["user_id"]] == ""
                                          ? ClipRRect(
                                              borderRadius: new BorderRadius.circular(80.0),
                                              child: Container(
                                                width: 80.0,
                                                height: 80.0,
                                                decoration: BoxDecoration(
                                                  color: themesCB.backColor,
                                                  border: Border.all(color: themesCB.borderColor, width: 0.5),
                                                  borderRadius: BorderRadius.circular(80.0),
                                                ),
                                                child: Icon(
                                                  IconsLinear.user,
                                                  size: 20.0,
                                                  color: themesCB.iconOffColor,
                                                ),
                                              ),
                                            )
                                          : ClipRRect(
                                              borderRadius: new BorderRadius.circular(80.0),
                                              child: Container(
                                                width: 80,
                                                height: 80,
                                                child: Image.network(op.mapOperatorPhoto[op.objView[index]["user_id"]]),
                                              ),
                                            ),
                                    ),
                              Container(
                                width: 300,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: themesCB.backColor,
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      spreadRadius: 0,
                                      blurRadius: 2,
                                      offset: Offset(0, 1), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 200,
                                          // color: Colors.amber,
                                          child: ScrollConfiguration(
                                            behavior: MyCustomScrollBehavior(),
                                            child: SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              controller: sc2,
                                              child: RichText(
                                                text: TextSpan(
                                                  style: DefaultTextStyle.of(context).style,
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                      text: "Colaborador(a): ",
                                                      style: themesCB.regularStyleText,
                                                    ),
                                                    TextSpan(
                                                      text: op.objView[index]["user_name"],
                                                      style: themesCB.boldStyleText,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text(""),
                                        Text(
                                          "${formatterDate.format(DateTime.parse(op.objView[index]["time_now"]))} às ${formatterTime.format(DateTime.parse(op.objView[index]["time_now"]))}",
                                          style: themesCB.regularStyleText,
                                        ),
                                        op.statusThrowView == "play"
                                            ? Text(
                                                "${op.objView[index]["qty_throw"]} itens ${op.objView[index]["type_items"]}",
                                                style: themesCB.boldStyleText,
                                              )
                                            : Container(),
                                        op.statusThrowView == "pause"
                                            ? Container(
                                                width: 200,
                                                child: Text(
                                                  "${op.objView[index]["reason"]}",
                                                  style: themesCB.boldStyleText,
                                                ),
                                              )
                                            : Container(),
                                      ],
                                    ),
                                    Container(
                                      width: 50,
                                      // color: Colors.lightBlue,
                                      margin: EdgeInsets.only(left: 10),
                                      child: iconOrigin["${op.objView[index]["data_origin"]}"],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
            ),
          )
        ],
      ),
    );
  }
}
