import "dart:core";
import 'package:cbmes_v1/provider/apiProvider.dart';
import 'package:cbmes_v1/provider/global.provider.dart';
import 'package:cbmes_v1/provider/jsonx/jsonx.provider.dart';
import 'package:cbmes_v1/provider/routes.Provider.dart';
import 'package:cbmes_v1/models/indicators/oee.models.dart';
import 'package:cbmes_v1/provider/themes/themes.provider.dart';
import 'package:cbmes_v1/themes/icons/IconsHawcons.dart';
import 'package:cbmes_v1/ui/globalWidgets/buttons/button_primary.dart';
import 'package:cbmes_v1/ui/globalWidgets/buttons/button_secondary.dart';
import 'package:cbmes_v1/ui/globalWidgets/dateAndTime.dart';
import 'package:cbmes_v1/ui/globalWidgets/decoration/common_input_decoration.dart';
import 'package:cbmes_v1/ui/globalWidgets/global_scaffoldKey.dart';
import "package:flutter/cupertino.dart";
import 'package:intl/intl.dart';
import "package:provider/provider.dart";
import "package:flutter/material.dart";

class OeeForm extends StatefulWidget {
  @override
  _OeeFormState createState() => _OeeFormState();
}

class _OeeFormState extends State<OeeForm> {
  @override
  void initState() {
    super.initState();
  }

  AutovalidateMode validate = AutovalidateMode.onUserInteraction;
  FocusNode nameFocusNode = FocusNode();

  var model = new OeeModel();
  bool init = true;
  bool init2 = true;
  bool auxCreate = true;
  Map jsonx;
  Map<String, String> auxList = {"": ""};
  List<String> listFields = ["resources"];

  String shift;
  String activities;

  final _formKey = GlobalKey<FormState>();
  String dropdownValue = "Ativado";
  double heightValue = 15.0;

  var snackbar = GlobalScaffold();

  DateTime startSelectedDate = DateTime.now();
  TimeOfDay startSelectedTime = TimeOfDay(hour: 00, minute: 00);

  DateTime endSelectedDate = DateTime.now();
  TimeOfDay endSelectedTime = TimeOfDay(hour: 00, minute: 00);

  var formatterDate = new DateFormat('dd/MM/yyyy');
  var formatterTime = new DateFormat("kk'h':mm'min'");

  @override
  Widget build(BuildContext context) {
    GlobalProvider g = Provider.of<GlobalProvider>(context);
    Routes routes = Provider.of<Routes>(context);
    JsonX jx = Provider.of<JsonX>(context);
    jx.apiRoute = "indicators/oee";
    APIProvider apiProvider = Provider.of<APIProvider>(context);
    ThemesCB themesCB = Provider.of<ThemesCB>(context);

    if (init == true) {
      init = false;

      g.getListKey(
        context: context,
        func: () {},
        local: ["patterns"],
        listFields: listFields,
        key: [
          "\"_id\"",
          "\"name\"",
          "\"files_url\"",
        ],
      );

      for (int i = 0; i < listFields.length; i++) {
        g.auxListAdd[listFields[i]] = [];
        g.auxListAddId[listFields[i]] = [];
        g.statusDropdownButton[listFields[i]] = "";
      }
      g.auxListAdd["activities"] = [];
      g.auxListAdd["shift"] = [];

      for (int i = 0; i < listFields.length; i++) {
        auxList[listFields[i]] = "Nenhum";
      }

      if (g.edit == true) {
        model = g.getDynamicModel();

        startSelectedDate = DateTime.parse(model.startDate);
        startSelectedTime = TimeOfDay.fromDateTime(startSelectedDate);

        endSelectedDate = DateTime.parse(model.endDate);
        endSelectedTime = TimeOfDay.fromDateTime(endSelectedDate);

        if (init2 == true) {
          init2 = false;
          funcG(String value, dynamic obj) {
            Map x;
            for (int i = 0; i < obj.length; i++) {
              x = obj[i];
              g.auxListAdd[value] += [x["name"]];
              g.auxListAddId[value] += [x["_id"]];
            }
          }

          funcG("resources", model.docsRelations["list_resources"]);
        }
      }
    }

    formatAndSend() async {
      _formKey.currentState.save();

      model.docsRelationsIds = {
        "list_resources": [],
      };
      // Map<String, dynamic> u;
      for (int i = 0; i < g.auxListAddId["resources"].length; i++) {
        // u = {
        //   "_id": g.auxListAddId["resources"][i],
        // };
        model.docsRelationsIds["list_resources"].add(g.auxListAddId["resources"][i]);
      }

      startSelectedDate = DateTime(startSelectedDate.year, startSelectedDate.month, startSelectedDate.day, startSelectedTime.hour, startSelectedTime.minute);
      model.startDate = "${startSelectedDate.year}-${startSelectedDate.month}-${startSelectedDate.day} ${startSelectedDate.hour}:${startSelectedDate.minute}:00";

      endSelectedDate = DateTime(endSelectedDate.year, endSelectedDate.month, endSelectedDate.day, endSelectedTime.hour, endSelectedTime.minute);
      model.endDate = "${endSelectedDate.year}-${endSelectedDate.month}-${endSelectedDate.day} ${endSelectedDate.hour}:${endSelectedDate.minute}:00";

      jsonx = {
        "_id": g.edit == true ? model.sId : null,
        "name": model.name,
        "start_date": model.startDate,
        "end_date": model.endDate,
        "docs_relations_ids": {"list_resources": model.docsRelationsIds["list_resources"]},
      };

      print(jsonx);

      await g.send(
        id: g.edit == true ? '/${model.sId}' : '',
        model: jsonx,
        context: context,
        create: g.edit == true ? false : true,
        withToken: true,
        apiRoute: '${g.apiRoute}',
        funcAcept: () {
          g.global = true;
          g.edit = false;
          apiProvider.progress = "0";
          Navigator.of(context).pushReplacementNamed(routes.routesAppIndicators["stageArea"]);
          auxCreate = false;
        },
        funcNoAcept: () {},
        message: g.edit == true ? "Documento ATUALIZADO com sucesso." : "Documento CRIADO com sucesso.",
      );
    }

    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: themesCB.backColor,
          border: Border.all(width: 0.5, color: themesCB.borderColor),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              g.edit == true
                  ? Text(
                      "ID no sistema: ${model.sId}",
                      style: themesCB.regularStyleText,
                    )
                  : Text(
                      "ID no sistema: __new",
                      style: themesCB.regularStyleText,
                    ),
              SizedBox(
                height: heightValue * 2,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: heightValue),
                child: TextFormField(
                  autovalidateMode: validate,
                  focusNode: nameFocusNode,
                  cursorColor: themesCB.cursorColor,
                  initialValue: g.edit == true ? model.name : "",
                  keyboardType: TextInputType.text,
                  decoration: commonInputDecoration(context: context, labelText: "Nome da Oee"),
                  style: TextStyle(
                    fontSize: 20,
                    color: themesCB.highlightColor,
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      FocusScope.of(context).requestFocus(nameFocusNode);
                      return 'Campo em branco';
                    }
                    return null;
                  },
                  onSaved: (val) {
                    model.name = val;
                  },
                ),
              ),
              SizedBox(
                height: heightValue,
              ),
              Row(
                children: [
                  Text(
                    "Data inicial: ",
                    style: themesCB.regularStyleText,
                  ),
                  TextButton(
                      onPressed: () async {
                        startSelectedDate = await selectDate(context: context, selectedDate: startSelectedDate);

                        setState(() {
                          startSelectedDate = startSelectedDate;
                        });
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.calendar_today_outlined,
                            color: themesCB.iconOffColor,
                          ),
                          Text(
                            "${formatterDate.format(startSelectedDate)}",
                            style: themesCB.boldHighLightStyleText,
                          ),
                        ],
                      ))
                ],
              ),
              Row(
                children: [
                  Text(
                    "Horário inicial: ",
                    style: themesCB.regularStyleText,
                  ),
                  TextButton(
                      onPressed: () async {
                        startSelectedTime = await selectTime(context: context, selectedTime: startSelectedTime);
                        setState(() {
                          startSelectedTime = startSelectedTime;
                        });
                        // print(selectedTime.format(context));
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.timer_outlined,
                            color: themesCB.iconOffColor,
                          ),
                          Text(
                            "${startSelectedTime.format(context)}",
                            style: themesCB.boldHighLightStyleText,
                          ),
                        ],
                      ))
                ],
              ),
              Row(
                children: [
                  Text(
                    "Data final: ",
                    style: themesCB.regularStyleText,
                  ),
                  TextButton(
                      onPressed: () async {
                        endSelectedDate = await selectDate(context: context, selectedDate: endSelectedDate);

                        setState(() {
                          endSelectedDate = endSelectedDate;
                        });
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.calendar_today_outlined,
                            color: themesCB.iconOffColor,
                          ),
                          Text(
                            "${formatterDate.format(endSelectedDate)}",
                            style: themesCB.boldHighLightStyleText,
                          ),
                        ],
                      ))
                ],
              ),
              Row(
                children: [
                  Text(
                    "Horário final: ",
                    style: themesCB.regularStyleText,
                  ),
                  TextButton(
                      onPressed: () async {
                        endSelectedTime = await selectTime(context: context, selectedTime: endSelectedTime);
                        setState(() {
                          endSelectedTime = endSelectedTime;
                        });
                        // print(selectedTime.format(context));
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.timer_outlined,
                            color: themesCB.iconOffColor,
                          ),
                          Text(
                            "${endSelectedTime.format(context)}",
                            style: themesCB.boldHighLightStyleText,
                          ),
                        ],
                      ))
                ],
              ),
              SizedBox(
                height: heightValue * 1.5,
              ),
              Text(
                "Adicione um ou mais Recursos: ",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              Divider(
                height: 20,
                thickness: 2,
                indent: 0,
                endIndent: 0,
              ),
              Row(
                children: [
                  Text(
                    "Recursos: ",
                    style: themesCB.regularStyleText,
                  ),
                  Container(
                    height: 45,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: themesCB.backColor,
                      border: Border.all(width: 0.5, color: themesCB.borderColor),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: g.statusDropdownButton["resources"] != "ok"
                        ? CupertinoActivityIndicator()
                        : DropdownButton<String>(
                            value: auxList["resources"],
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
                              setState(() {
                                auxList["resources"] = newValue;
                              });
                            },
                            items: g.listKeyName["resources"].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.add,
                      color: themesCB.iconOffColor,
                    ),
                    onPressed: () {
                      List h = g.auxListAdd["resources"];
                      if (h.contains(auxList["resources"]) == false && auxList["resources"] != "Nenhum") {
                        h.add(auxList["resources"]);
                        g.auxListAdd["resources"] = h;

                        var ii = g.listKeyName["resources"].indexWhere((element) => element == auxList["resources"]);

                        List hId = g.auxListAddId["resources"];
                        hId.add(g.listKeyId["resources"][ii]);

                        g.auxListAddId["resources"] = hId;

                        setState(() {});
                      }
                    },
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              SingleChildScrollView(
                // physics: ScrollPhysics(),
                child: Column(
                  children: [
                    ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: g.auxListAdd["resources"].length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            margin: EdgeInsets.only(top: 5),
                            // height: 45,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              // color: themesCB.backColor,
                              border: Border.all(width: 0.5, color: themesCB.borderColor),
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "${g.auxListAdd["resources"][index]} \nID: ${g.auxListAddId["resources"][index]}",
                                  style: themesCB.regularStyleText,
                                ),
                                IconButton(
                                  padding: EdgeInsets.all(0),
                                  icon: Icon(
                                    IconsHawcons.icon_27_trash_can,
                                    color: themesCB.iconOffColor,
                                  ),
                                  onPressed: () {
                                    List h = g.auxListAdd["resources"];
                                    h.remove(g.auxListAdd["resources"][index]);
                                    g.auxListAdd["resources"] = h;

                                    List hId = g.auxListAddId["resources"];
                                    hId.remove(g.auxListAddId["resources"][index]);
                                    g.auxListAddId["resources"] = hId;

                                    setState(() {});
                                  },
                                )
                              ],
                            ),
                          );
                        }),
                  ],
                ),
              ),
              Divider(
                height: 20,
                thickness: 2,
                indent: 0,
                endIndent: 0,
              ),
              SizedBox(
                height: heightValue,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buttonSecondary(
                    context: context,
                    func: () {
                      g.global = true;
                      jx.clearAll();
                      if (auxCreate == false && g.edit == false) {
                        jsonx["_id"] = apiProvider.objResponse["_id"];
                        jx.deleteDocument(jsonx: jsonx, context: context);
                      }
                      snackbar.getshowSnackbar("Documento DELETADO com sucesso.");

                      Navigator.of(context).pushReplacementNamed(routes.routesAppIndicators['stageArea']);
                      routes.setForwardRoute(routes.routesAppIndicators['stageArea']);
                      routes.setBackRoute(ModalRoute.of(context).settings.name);
                    },
                    widthx: 100,
                    text: "CANCELAR",
                  ),
                  SizedBox(width: 10),
                  buttonPrimary(
                    context: context,
                    func: () async {
                      if (_formKey.currentState.validate() && "${g.auxListAdd["resources"]}" != "[]") {
                        formatAndSend();
                      }
                    },
                    widthx: 100,
                    text: "ENVIAR",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
