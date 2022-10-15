import 'package:cbmes_v1/provider/apiProvider.dart';
import 'package:cbmes_v1/provider/global.provider.dart';
import 'package:cbmes_v1/provider/jsonx/jsonx.provider.dart';
import 'package:cbmes_v1/provider/routes.Provider.dart';
import 'package:cbmes_v1/models/schedule/production_orders.models.dart';
import 'package:cbmes_v1/provider/themes/themes.provider.dart';
import 'package:cbmes_v1/themes/icons/IconsHawcons.dart';
import 'package:cbmes_v1/ui/globalWidgets/buttons/button_primary.dart';
import 'package:cbmes_v1/ui/globalWidgets/buttons/button_secondary.dart';
import 'package:cbmes_v1/ui/globalWidgets/dateAndTime.dart';
import 'package:cbmes_v1/ui/globalWidgets/decoration/common_input_decoration.dart';
import 'package:cbmes_v1/ui/globalWidgets/decoration/primaryBoxDecoration.dart';
import 'package:cbmes_v1/ui/globalWidgets/global_scaffoldKey.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class ProductionOrdersForm extends StatefulWidget {
  @override
  _ProductionOrdersFormState createState() => _ProductionOrdersFormState();
}

class _ProductionOrdersFormState extends State<ProductionOrdersForm> {
  @override
  void initState() {
    super.initState();
  }

  var model = new ProductionOrdersModel(
    sId: null,
    name: "",
    orderStatus: "off",
    favorite: false,
    situation: true,
    filesBase64Up: {
      "chart_gantt": "",
    },
    filesUrl: {
      "chart_gantt": "",
    },
    docsRelations: null,
    docsRelationsIds: {},
  );

  AutovalidateMode validate = AutovalidateMode.onUserInteraction;
  FocusNode nameFocusNode = FocusNode();

  int count = 1;

  bool auxCreate = true;
  bool init = true;

  int maxLength = 0;
  List<String> priority = [];
  List<int> listMaxLength = [];
  List<dynamic> addRoadmaps = [];
  Map jsonx;
  Map<String, List> mapMaxLength = {
    "": [""]
  };
  Map<String, List<String>> mapSteps = {
    "": [""]
  };
  Map<String, String> mapName = {"": ""};
  Map<String, String> mapNameId = {"": ""};
  Map<String, String> mapQty = {"": ""};
  Map<String, String> auxList = {"": ""};
  List<String> listFields = ["roadmaps"];

  final _formKey = GlobalKey<FormState>();
  final _formKey2 = GlobalKey<FormState>();
  var snackbar = GlobalScaffold();

  String dropdownValue = "Ativado";
  double heightValue = 15.0;

  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay(hour: 00, minute: 00);
  var formatterDate = new DateFormat('dd/MM/yyyy');
  var formatterTime = new DateFormat("kk'h':mm'min'");

  Widget build(BuildContext context) {
    Routes routes = Provider.of<Routes>(context);
    GlobalProvider g = Provider.of<GlobalProvider>(context);
    JsonX jx = Provider.of<JsonX>(context);
    jx.apiRoute = "schedule/production-orders-data";
    APIProvider apiProvider = Provider.of<APIProvider>(context);
    ThemesCB themesCB = Provider.of<ThemesCB>(context);

    cxc() {
      maxLength = 0;
      listMaxLength = [];
      List<String> l2 = [];
      mapMaxLength = {
        "": [""]
      };

      for (int i = 0; i < addRoadmaps.length; i++) {
        var l = addRoadmaps[i]["script_order"].length;
        listMaxLength.add(l);
        if (l > maxLength) {
          maxLength = l;
        }
      }
      for (int i = 0; i < maxLength; i++) {
        mapMaxLength["step${i + 1}"] = [];
      }

      for (int i = 0; i < listMaxLength.length; i++) {
        l2 = [addRoadmaps[i]["name"]];
        for (int i2 = 0; i2 < listMaxLength[i]; i2++) {
          mapMaxLength["step${i2 + 1}"] += l2;
        }
      }

      for (int i = 0; i < addRoadmaps.length; i++) {
        var r = List<String>.generate(listMaxLength[i], (e) => "${1 + i}");
        if (mapName["${addRoadmaps[i]["name"]}"] == null) {
          mapName["${addRoadmaps[i]["name"]}"] = r.toString();
        }
      }

      priority = [];
      priority = List<String>.generate(addRoadmaps.length, (i) => "${i + 1}");

      for (int i = 1; i <= mapMaxLength.length - 1; i++) {
        mapSteps["step$i"] = List<String>.generate(mapMaxLength["step$i"].length, (i) => "${i + 1}");
      }

      for (int i = 1; i <= maxLength; i++) {
        for (int i2 = 1; i2 <= addRoadmaps.length; i2++) {
          auxList["step${i}_priority$i2"] = "$i2";
        }
      }
    }

    if (init == true) {
      init = false;

      g.getListKey(
        context: context,
        func: () {},
        local: ["patterns"],
        listFields: listFields,
        key: ["\"_id\"", "\"name\"", "\"script_order\""],
      );
      g.getMapKey(
        context: context,
        local: "patterns",
        listFields: listFields,
        key: ["\"_id\"", "\"name\"", "\"script_order\""],
      );

      for (int i = 0; i < listFields.length; i++) {
        g.auxListAdd[listFields[i]] = [];
        g.auxListAddId[listFields[i]] = [];
        g.statusDropdownButton[listFields[i]] = "";
      }
      for (int i = 0; i < listFields.length; i++) {
        auxList = {listFields[i]: "Nenhum"};
      }
      auxList["priority1"] = "1";

      apiProvider.objResponse = {
        "_id": model.sId,
        "files_url": {
          "chart_gantt": model.filesUrl["chart_gantt"],
        }
      };
    }

    if (g.edit == true && auxCreate == true) {
      auxCreate = false;

      model = g.getDynamicModel();

      // model.startData = model.startData.split(" ")[0];
      selectedDate = DateTime.parse(model.startDate);
      selectedTime = TimeOfDay.fromDateTime(selectedDate);

      apiProvider.objResponse = {
        "_id": model.sId,
        "files_url": {
          "chart_gantt": model.filesUrl["chart_gantt"],
        }
      };

      for (var v in model.mapPriority.entries) {
        g.auxListAdd["roadmaps"] += [v.value["name"]];
        g.auxListAddId["roadmaps"] += [v.key];
        mapQty["${v.value["name"]}"] = v.value["production_qty"].toString();
        mapName["${v.value["name"]}"] = v.value["stages_priority"].toString();
        if (maxLength < v.value["stages_priority"].length) {
          maxLength = v.value["stages_priority"].length;
        }
      }

      for (int e = 0; e < g.auxListAdd["roadmaps"].length; e++) {
        for (int i = 0; i < model.docsRelations["list_roadmaps"].length; i++) {
          if (model.docsRelations["list_roadmaps"][i]["name"] == g.auxListAdd["roadmaps"][e]) {
            addRoadmaps.add(model.docsRelations["list_roadmaps"][i]);
          }
        }
      }
      cxc();
      setState(() {});
    }

    formatAndSend() async {
      _formKey.currentState.save();

      Map<String, List<int>> mapNameInt = {};

      for (int i = 0; i < g.auxListAddId["roadmaps"].length; i++) {
        mapNameId["${g.auxListAddId["roadmaps"][i]}"] = mapName["${g.auxListAdd["roadmaps"][i]}"];

        String a = mapName["${g.auxListAdd["roadmaps"][i]}"].toString().replaceAll("]", "");
        a = a.replaceAll("[", "");
        List<String> rt = a.split(',');

        mapNameInt["${g.auxListAdd["roadmaps"][i]}"] = rt.map((data) => int.parse(data)).toList();
        // if (mapName["${bloc.auxListAdd["roadmaps"]}"] != null) {
        // }
      }

      // print("*********************************");
      // print(bloc.auxListAdd["roadmaps"]);
      // print(bloc.auxListAddId["roadmaps"]);
      // print("*********************************");
      model.mapPriority = {};
      Map<String, dynamic> u;
      for (int i = 0; i < g.auxListAddId["roadmaps"].length; i++) {
        u = {
          g.auxListAddId["roadmaps"][i]: {
            "name": g.auxListAdd["roadmaps"][i],
            "production_qty": int.parse(mapQty[g.auxListAdd["roadmaps"][i]].toString()),
            "stages_priority": mapNameInt["${g.auxListAdd["roadmaps"][i]}"],
          },
        };
        model.mapPriority.addAll(u);
      }

      selectedDate = DateTime(selectedDate.year, selectedDate.month, selectedDate.day, selectedTime.hour, selectedTime.minute);
      model.startDate = "${selectedDate.year}-${selectedDate.month}-${selectedDate.day} ${selectedDate.hour}:${selectedDate.minute}:00";

      jsonx = {"_id": auxCreate == true ? null : apiProvider.objResponse["_id"], "scheduling_optimize": model.schedulingOptimize, "name": model.name, "start_date": model.startDate, "map_priority": model.mapPriority, "order_status": model.orderStatus};
      print("------------------------------------");
      print(jsonx);
      print("------------------------------------");

      await g.send(
        id: auxCreate == true ? '' : '/${apiProvider.objResponse["_id"]}',
        model: jsonx,
        context: context,
        create: auxCreate,
        withToken: true,
        apiRoute: '${g.apiRoute}',
        funcAcept: () {
          auxCreate = false;
          g.global = true;
        },
        funcNoAcept: () {},
        message: auxCreate == false ? "Documento CRIADO com sucesso." : "Documento ATUALIZADO com sucesso.",
      );
    }

    return Container(
      padding: EdgeInsets.only(top: 30, left: 30, right: 30, bottom: 30),
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: primaryBoxDecoration(context: context),
          child: Form(
            key: _formKey,
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                g.edit == true
                    ? Text(
                        "ID no sistema: ${model.sId}",
                        textAlign: TextAlign.center,
                        style: themesCB.regularStyleText,
                      )
                    : Text(
                        "ID no sistema: __new",
                        textAlign: TextAlign.center,
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
                    decoration: commonInputDecoration(context: context, labelText: "Nome da ordem de produção"),
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

                Row(
                  children: [
                    Text(
                      "Data de início: ",
                      style: themesCB.regularStyleText,
                    ),
                    TextButton(
                        onPressed: () async {
                          selectedDate = await selectDate(context: context, selectedDate: selectedDate);
                          setState(() {
                            selectedDate = selectedDate;
                          });
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.calendar_today_outlined,
                              color: themesCB.iconOffColor,
                            ),
                            Text(
                              "${formatterDate.format(selectedDate)}",
                              style: themesCB.boldHighLightStyleText,
                            ),
                          ],
                        ))
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Horário de início: ",
                      style: themesCB.regularStyleText,
                    ),
                    TextButton(
                        onPressed: () async {
                          selectedTime = await selectTime(context: context, selectedTime: selectedTime);
                          setState(() {
                            selectedTime = selectedTime;
                          });
                          // print(selectedTime.format(context));
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.calendar_today_outlined,
                              color: themesCB.iconOffColor,
                            ),
                            Text(
                              "${selectedTime.format(context)}",
                              style: themesCB.boldHighLightStyleText,
                            ),
                          ],
                        ))
                  ],
                ),
                SizedBox(
                  height: heightValue,
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Configuração: ",
                      textAlign: TextAlign.start,
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
                      child: DropdownButton<bool>(
                        value: model.schedulingOptimize == null ? model.schedulingOptimize = true : model.schedulingOptimize,
                        isExpanded: true,
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
                        onChanged: (bool newValue) {
                          setState(() {
                            model.schedulingOptimize = newValue;
                            if (auxCreate == false) {
                              formatAndSend();
                            }
                          });
                        },
                        items: [
                          DropdownMenuItem(
                            child: Text('Manual'),
                            value: false,
                          ),
                          DropdownMenuItem(
                            child: Text('Automático'),
                            value: true,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: heightValue,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Roteiros: ",
                      textAlign: TextAlign.start,
                      style: themesCB.regularStyleText,
                    ),
                    Row(
                      children: [
                        Flexible(
                          child: Container(
                            height: 45,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: themesCB.backColor,
                              border: Border.all(width: 0.5, color: themesCB.borderColor),
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                            ),
                            child: g.statusDropdownButton["roadmaps"] != "ok"
                                ? CupertinoActivityIndicator()
                                : DropdownButton<String>(
                                    isExpanded: true,
                                    value: auxList["roadmaps"],
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
                                        auxList["roadmaps"] = newValue;
                                      });
                                    },
                                    items: g.listKeyName["roadmaps"].map<DropdownMenuItem<String>>((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                  ),
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.add,
                            color: themesCB.iconOffColor,
                          ),
                          onPressed: () {
                            List h = g.auxListAdd["roadmaps"];
                            if (h.contains(auxList["roadmaps"]) == false && auxList["roadmaps"] != "Nenhum" && _formKey.currentState.validate()) {
                              //++++++++++++++++++++++++++++++++++++++++++++++++++
                              showDialog(
                                context: context,
                                barrierDismissible: false,
                                builder: (BuildContext context) {
                                  return CupertinoAlertDialog(
                                    title: Text(
                                      "${auxList["roadmaps"]}",
                                      style: themesCB.boldStyleText,
                                    ),
                                    content: Form(
                                      key: _formKey2,
                                      child: Material(
                                        color: Colors.transparent,
                                        child: Column(
                                          children: [
                                            Divider(
                                              height: 20,
                                              thickness: 1,
                                              indent: 0,
                                              endIndent: 0,
                                            ),
                                            SizedBox(
                                              height: heightValue,
                                            ),
                                            Text(
                                              "Qual a quantidade de unidades a serem fabricadas?",
                                              textAlign: TextAlign.center,
                                              style: themesCB.regularStyleText,
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(bottom: heightValue),
                                              child: TextFormField(
                                                autovalidateMode: validate,
                                                cursorColor: themesCB.cursorColor,
                                                keyboardType: TextInputType.numberWithOptions(decimal: true),
                                                inputFormatters: [
                                                  FilteringTextInputFormatter.allow(RegExp('[0-9.,]+')),
                                                ],
                                                textAlign: TextAlign.start,
                                                decoration: commonInputDecoration(context: context, labelText: "Quantidade"),
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: themesCB.highlightColor,
                                                ),
                                                validator: (value) {
                                                  if (value.isEmpty) {
                                                    return 'Campo em branco';
                                                  }
                                                  return null;
                                                },
                                                onSaved: (val) {
                                                  mapQty["${auxList["roadmaps"]}"] = val;
                                                },
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                buttonSecondary(
                                                  context: context,
                                                  func: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  widthx: 100,
                                                  text: "CANCELAR",
                                                ),
                                                SizedBox(width: 10),
                                                buttonPrimary(
                                                  context: context,
                                                  func: () async {
                                                    if (_formKey2.currentState.validate()) {
                                                      _formKey2.currentState.save();

                                                      h.add(auxList["roadmaps"]);
                                                      g.auxListAdd["roadmaps"] = h;

                                                      var ii = g.listKeyName["roadmaps"].indexWhere((element) => element == auxList["roadmaps"]);

                                                      List hId = g.auxListAddId["roadmaps"];
                                                      hId.add(g.listKeyId["roadmaps"][ii]);
                                                      g.auxListAddId["roadmaps"] = hId;

                                                      if (g.objMapKey.length > 1) {
                                                        for (int i = 0; i < g.objMapKey["roadmaps"].length; i++) {
                                                          if (g.objMapKey["roadmaps"][i]["name"] == auxList["roadmaps"]) {
                                                            addRoadmaps.add(g.objMapKey["roadmaps"][i]);
                                                          }
                                                        }
                                                        cxc();
                                                      }

                                                      Navigator.of(context).pop();
                                                      formatAndSend();
                                                      setState(() {});
                                                    }
                                                  },
                                                  widthx: 100,
                                                  text: "INSERIR",
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );

                              //++++++++++++++++++++++++++++++++++++++++++++++++++

                              setState(() {});
                            }
                          },
                        )
                      ],
                    ),
                    "${g.auxListAdd["roadmaps"]}" == "[]"
                        ? Container(
                            child: Text(
                              "*** Adicione um roteiro.",
                              style: TextStyle(color: Colors.red),
                            ),
                          )
                        : Container(),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                SingleChildScrollView(
                  // physics: ScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: g.auxListAdd["roadmaps"].length,
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
                                  Flexible(
                                    child: Container(
                                      width: double.infinity,
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              """${g.auxListAdd["roadmaps"][index]}""",
                                              textAlign: TextAlign.start,
                                              style: themesCB.boldStyleText,
                                            ),
                                            Text(
                                              """ID: ${g.auxListAddId["roadmaps"][index]} \nQty: ${mapQty["${g.auxListAdd["roadmaps"][index]}"]}""",
                                              textAlign: TextAlign.start,
                                              style: themesCB.regularStyleText,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  IconButton(
                                    padding: EdgeInsets.all(0),
                                    icon: Icon(
                                      IconsHawcons.icon_27_trash_can,
                                      color: themesCB.iconOffColor,
                                    ),
                                    onPressed: () {
                                      if (addRoadmaps.length > 0) {
                                        for (int i = 0; i < addRoadmaps.length; i++) {
                                          if (addRoadmaps[i]["_id"] == g.auxListAddId["roadmaps"][index]) {
                                            mapName.remove(addRoadmaps[i]["name"]);
                                            addRoadmaps.remove(addRoadmaps[i]);
                                          }
                                        }
                                        cxc();
                                      }

                                      List h = g.auxListAdd["roadmaps"];
                                      h.remove(g.auxListAdd["roadmaps"][index]);
                                      g.auxListAdd["roadmaps"] = h;

                                      List hId = g.auxListAddId["roadmaps"];
                                      hId.remove(g.auxListAddId["roadmaps"][index]);
                                      g.auxListAddId["roadmaps"] = hId;

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
                //########################################################
                SingleChildScrollView(
                  // physics: ScrollPhysics(),
                  child: model.schedulingOptimize == true
                      ? Container()
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: maxLength,
                                itemBuilder: (BuildContext context, int index2) {
                                  return Container(
                                    margin: EdgeInsets.only(top: 20),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(5)),
                                        gradient: LinearGradient(colors: [
                                          Color.fromRGBO(237, 37, 36, 1),
                                          Color.fromRGBO(242, 113, 33, 1),
                                        ])),
                                    child: ExpansionTile(
                                        iconColor: Colors.white,
                                        collapsedIconColor: Colors.white,
                                        initiallyExpanded: g.edit == true ? false : true,
                                        maintainState: true,
                                        title: Container(
                                          child: Text(
                                            "Estágio ${index2 + 1}",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ),
                                        children: [
                                          ListView.builder(
                                              shrinkWrap: true,
                                              physics: NeverScrollableScrollPhysics(),
                                              itemCount: mapMaxLength["step${index2 + 1}"].length,
                                              itemBuilder: (BuildContext context, int index3) {
                                                return Container(
                                                  margin: EdgeInsets.all(10),
                                                  padding: EdgeInsets.all(15),
                                                  decoration: BoxDecoration(
                                                    color: themesCB.backColor,
                                                    border: Border.all(width: 0.5, color: themesCB.borderColor),
                                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                                    boxShadow: [themesCB.shadow],
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        "${mapMaxLength["step${index2 + 1}"][index3]}:  ",
                                                        style: themesCB.regularStyleText,
                                                      ),
                                                      Flexible(
                                                        child: Container(
                                                          height: 45,
                                                          width: 75,
                                                          padding: EdgeInsets.all(10),
                                                          decoration: BoxDecoration(
                                                            border: Border.all(width: 0.5, color: themesCB.borderColor),
                                                            borderRadius: BorderRadius.all(Radius.circular(5)),
                                                          ),
                                                          child: DropdownButton<String>(
                                                            isExpanded: true,
                                                            value: auxList["step${index2 + 1}_priority${index3 + 1}"],
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
                                                              auxList["step${index2 + 1}_priority${index3 + 1}"] = newValue;

                                                              var t = mapName["${mapMaxLength["step${index2 + 1}"][index3]}"];
                                                              List<String> rt = t.split(',');
                                                              rt[index2] = newValue;
                                                              String a = rt.toString().replaceAll("]", "");
                                                              a = a.replaceAll("[", "");

                                                              mapName["${mapMaxLength["step${index2 + 1}"][index3]}"] = a;
                                                              setState(() {});
                                                            },
                                                            items: mapSteps["step${index2 + 1}"].map<DropdownMenuItem<String>>((String value) {
                                                              return DropdownMenuItem<String>(
                                                                value: value,
                                                                child: Text(value),
                                                              );
                                                            }).toList(),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              }),
                                        ]),
                                  );
                                }),
                          ],
                        ),
                ),

                SizedBox(
                  height: heightValue,
                ),
                apiProvider.objResponse["files_url"]["chart_gantt"] == null || apiProvider.objResponse["files_url"]["chart_gantt"] == ""
                    ? Container()
                    : Container(
                        padding: EdgeInsets.all(15),
                        width: MediaQuery.of(context).size.width * 1,
                        decoration: BoxDecoration(
                          color: themesCB.backColor,
                          border: Border.all(width: 0.5, color: themesCB.borderColor),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Gráfico de Gantt",
                              style: themesCB.boldStyleText,
                            ),
                            SizedBox(
                              height: heightValue,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 1,
                              height: 350,
                              child: SvgPicture.network(
                                apiProvider.objResponse["files_url"]["chart_gantt"],
                                // fit: BoxFit.cover,
                                // width: 300,
                                // height: 200,
                              ),
                            ),
                            Center(
                              child: Container(
                                padding: EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                  color: themesCB.backColor,
                                  border: Border.all(width: 0.5, color: themesCB.borderColor),
                                  borderRadius: BorderRadius.all(Radius.circular(5)),
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    formatAndSend();
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.replay_rounded,
                                        color: themesCB.iconOffColor,
                                      ),
                                      Text(
                                        "Atualizar gráfico",
                                        style: themesCB.regularStyleText,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
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
                          g.deleteDocument(
                            id: '${jsonx["_id"]}',
                            apiRoute: '${g.apiRoute}',
                            model: jsonx,
                            context: context,
                          );
                        }
                        snackbar.getshowSnackbar("Documento DELETADO com sucesso.");

                        Navigator.of(context).pushReplacementNamed(routes.routesAppSchedule['stageArea']);
                        routes.setForwardRoute(routes.routesAppSchedule['stageArea']);
                        routes.setBackRoute(ModalRoute.of(context).settings.name);
                      },
                      widthx: 100,
                      text: "CANCELAR",
                    ),
                    SizedBox(width: 10),
                    buttonPrimary(
                      context: context,
                      func: () async {
                        if (_formKey.currentState.validate() && "${g.auxListAdd["roadmaps"]}" != "[]") {
                          await formatAndSend();
                          Navigator.of(context).pushReplacementNamed(routes.routesAppSchedule["stageArea"]);
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
      ),
    );
  }
}
