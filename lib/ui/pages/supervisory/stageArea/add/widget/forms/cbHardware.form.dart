import 'package:cbmes_v1/provider/global.provider.dart';
import 'package:cbmes_v1/provider/routes.Provider.dart';
import 'package:cbmes_v1/models/supervisory/cbhardware.models.dart';
import 'package:cbmes_v1/provider/themes/themes.provider.dart';
import 'package:cbmes_v1/themes/icons/IconsHawcons.dart';
import 'package:cbmes_v1/ui/globalWidgets/buttons/button_primary.dart';
import 'package:cbmes_v1/ui/globalWidgets/buttons/button_secondary.dart';
import 'package:cbmes_v1/ui/globalWidgets/dateAndTime.dart';
import 'package:cbmes_v1/ui/globalWidgets/decoration/common_input_decoration.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:cbmes_v1/provider/apiProvider.dart';
import 'package:flutter/material.dart';

class CBHardwareForm extends StatefulWidget {
  @override
  _CBHardwareFormState createState() => _CBHardwareFormState();
}

class _CBHardwareFormState extends State<CBHardwareForm> {
  @override
  void initState() {
    super.initState();
  }

  AutovalidateMode validate = AutovalidateMode.onUserInteraction;
  FocusNode nameFocusNode = FocusNode();
  FocusNode serialFocusNode = FocusNode();

  var model = new CBHardwareModel(
    favorite: false,
    axisX: "minute",
    serialNumber: "",
    output1: false,
    output2: false,
    output3: false,
    output4: false,
    output5: false,
  );
  bool init = true;
  bool init2 = true;
  bool initEdit = true;

  var a = {};
  Map<String, dynamic> auxList = {"": ""};
  List<String> local = ["inventory", "inventory", "inventory", "patterns"];
  List<String> listFields = ["sectors", "sensors", "devices", "resources"];

  final _formKey = GlobalKey<FormState>();
  double heightValue = 15.0;

  DateTime selectedDate = DateTime.now();
  var formatterDate = new DateFormat('dd/MM/yyyy');

  int qtyInputs = 18;

  Map<String, dynamic> inputs = {
    'input1': {},
    'input2': {},
    'input3': {},
    'input4': {},
    'input5': {},
    'input6': {},
    'input7': {},
    'input8': {},
    'input9': {},
    'input10': {},
    'input11': {},
    'input12': {},
    'input13': {},
    'input14': {},
    'input15': {},
    'input16': {},
    'input17': {},
    'input18': {},
  };
  Map<dynamic, dynamic> inputsInside = {
    "sensors": [],
    "devices": [],
    "resources": [],
    "operation_type": 'Contagem',
    'activation_value': 0.0,
    "operation_info": {
      "task_off": {
        "active": true,
      },
      "task_play": {
        "active": true,
        "type_items": 'Itens Bons',
      },
      "task_pause": {
        "active": false,
        "reason": 'Falta de Operador',
      },
      "task_stop": {
        "active": false,
      }
    },
  };

  @override
  Widget build(BuildContext context) {
    Routes routes = Provider.of<Routes>(context);
    GlobalProvider g = Provider.of<GlobalProvider>(context);
    ThemesCB themesCB = Provider.of<ThemesCB>(context);
    APIProvider apiProvider = Provider.of<APIProvider>(context);

    if (init == true) {
      init = false;

      for (int i = 1; i <= model.sensorsNamePt.length; i++) {
        // inputs['input$i'] = inputsInside;
        auxList['activation_value$i'] = 0;
        auxList['operation_type$i'] = 'Contagem';
        auxList['operation_info$i'] = 'play';
        auxList['playTypeItens$i'] = 'Itens Bons';
        auxList['pauseReason$i'] = 'Falta de Operador';
      }
      g.getListSerialNumberCB(
        context: context,
        func: () {
          if (g.edit == true) {
            g.selectSerialNumber = model.serialNumber;
          }
        },
      );

      g.getListKey(
        context: context,
        local: local,
        listFields: listFields,
        key: ["\"_id\"", "\"name\""],
        func: () {
          initEdit = false;
          if (g.edit == true) {
            model = g.getDynamicModel();
            g.selectSerialNumber = model.serialNumber;

            if (init2 == true) {
              init2 = false;

              funcG(String value, dynamic obj) {
                Map x;
                if (obj != null) {
                  for (int i = 0; i < obj.length; i++) {
                    x = obj[i];
                    g.auxListAdd[value] += [x["name"]];
                    g.auxListAddId[value] += [x["_id"]];
                  }
                }
              }

              funcG("sectors", model.docsRelations["list_sectors"]);
            }

            inputs['input1'] = model.input1NPNOrPNP;
            inputs['input2'] = model.input2NPNOrPNP;
            inputs['input3'] = model.input3NPNOrPNP;
            inputs['input4'] = model.input4NPNOrPNP;
            inputs['input5'] = model.input5NPNOrPNP;
            inputs['input6'] = model.input6NPNOrPNP;
            inputs['input7'] = model.input70To10v;
            inputs['input8'] = model.input80To10v;
            inputs['input9'] = model.input94To20Am;
            inputs['input10'] = model.input10RS485;
            inputs['input11'] = model.input11RS232;
            inputs['input12'] = model.input12LoadCell;
            inputs['input13'] = model.input13Thermocouple;
            inputs['input14'] = model.input14TemperatureIR;
            inputs['input15'] = model.input15v;
            inputs['input16'] = model.input16v;
            inputs['input17'] = model.input17v;
            inputs['input18'] = model.input18v;

            for (int i = 1; i <= model.sensorsNamePt.length; i++) {
              if (inputs["input$i"]["sensors"] != null) {
                if (inputs["input$i"]["sensors"].length >= 1) {
                  var h = inputs["input$i"]["sensors"][0];
                  var ii = g.listKeyId["sensors"].indexWhere((element) => element == h);
                  auxList["sensors$i"] = g.listKeyName["sensors"][ii];
                }
              }
              if (inputs["input$i"]["devices"] != null) {
                if (inputs["input$i"]["devices"].length >= 1) {
                  var h = inputs["input$i"]["devices"][0];
                  var ii = g.listKeyId["devices"].indexWhere((element) => element == h);
                  auxList["devices$i"] = g.listKeyName["devices"][ii];
                }
              }
              if (inputs["input$i"]["resources"] != null) {
                if (inputs["input$i"]["resources"].length >= 1) {
                  var h = inputs["input$i"]["resources"][0];
                  var ii = g.listKeyId["resources"].indexWhere((element) => element == h);
                  auxList["resources$i"] = g.listKeyName["resources"][ii];
                }
              }
              if (inputs["input$i"]["operation_type"] != null) {
                auxList["operation_type$i"] = inputs["input$i"]["operation_type"];
              }
              if (inputs["input$i"]["activation_value"] != null) {
                auxList["activation_value$i"] = inputs["input$i"]["activation_value"];
              }

              if (inputs["input$i"]["operation_info"] != null) {
                if (inputs["input$i"]["operation_info"]["task_off"]["active"] == true) {
                  auxList["operation_info$i"] = 'off';
                }
                if (inputs["input$i"]["operation_info"]["task_play"]["active"] == true) {
                  auxList["operation_info$i"] = 'play';
                  auxList["playTypeItens$i"] = inputs["input$i"]["operation_info"]["task_play"]["type_items"];
                }
                if (inputs["input$i"]["operation_info"]["task_pause"]["active"] == true) {
                  auxList["operation_info$i"] = 'pause';
                  auxList["pauseReason$i"] = inputs["input$i"]["operation_info"]["task_pause"]["reason"];
                }
                if (inputs["input$i"]["operation_info"]["task_stop"]["active"] == true) {
                  auxList["operation_info$i"] = 'stop';
                }
              }
            }
          }
          setState(() {});
        },
      );

      for (int i = 0; i < listFields.length; i++) {
        auxList[listFields[i]] = "Nenhum";
      }

      model.installationDate = selectedDate.toString();

      for (int i = 0; i < listFields.length; i++) {
        g.auxListAdd[listFields[i]] = [];
        g.auxListAddId[listFields[i]] = [];
        g.statusDropdownButton[listFields[i]] = "";
      }
      for (int v = 0; v <= model.sensorsNamePt.length; v++) {
        for (int i = 0; i < listFields.length; i++) {
          auxList["${listFields[i]}$v"] = "Nenhum";
        }
      }
    }

    return (g.edit == true && initEdit == true)
        ? Center(
            child: CupertinoActivityIndicator(),
          )
        : SingleChildScrollView(
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
                            style: TextStyle(
                              color: themesCB.fontColor,
                            ),
                          )
                        : Text(
                            "ID no sistema: __new",
                            style: TextStyle(
                              color: themesCB.fontColor,
                            ),
                          ),
                    SizedBox(
                      height: heightValue / 2,
                    ),
                    Container(
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
                            "Dados do Clone Bee Hardware",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: themesCB.backColor,
                              border: Border.all(width: 0.5, color: themesCB.borderColor),
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(bottom: heightValue),
                                  child: TextFormField(
                                    autovalidateMode: validate,
                                    focusNode: nameFocusNode,
                                    cursorColor: themesCB.cursorColor,
                                    initialValue: g.edit == true ? model.name : "",
                                    keyboardType: TextInputType.text,
                                    decoration: commonInputDecoration(context: context, labelText: "Nome do CB Hardware"),
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
                                      "Serial Number: ",
                                      style: TextStyle(
                                        color: themesCB.fontColor,
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
                                      child: g.objSerialNumberCB[0] != "ok"
                                          ? CupertinoActivityIndicator()
                                          : DropdownButton<String>(
                                              value: g.selectSerialNumber,
                                              icon: Icon(
                                                Icons.arrow_downward,
                                                color: themesCB.iconOffColor,
                                              ),
                                              iconSize: 24,
                                              elevation: 16,
                                              style: TextStyle(color: Theme.of(context).hintColor),
                                              underline: Container(
                                                height: 0,
                                                color: themesCB.highlightColor,
                                              ),
                                              onChanged: (String newValue) {
                                                setState(() {
                                                  g.selectSerialNumber = newValue;
                                                  model.serialNumber = newValue;
                                                });
                                              },
                                              items: g.objSerialNumberCB[1].map<DropdownMenuItem<String>>((String value) {
                                                return DropdownMenuItem<String>(
                                                  value: value,
                                                  child: Text(
                                                    value,
                                                    style: TextStyle(
                                                      color: themesCB.highlightColor,
                                                    ),
                                                  ),
                                                );
                                              }).toList(),
                                            ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: heightValue,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Situação: ",
                                      style: TextStyle(
                                        color: themesCB.fontColor,
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
                                      child: DropdownButton<bool>(
                                        value: model.situation == null ? model.situation = true : model.situation,
                                        icon: Icon(
                                          Icons.arrow_downward,
                                          color: themesCB.iconOffColor,
                                        ),
                                        iconSize: 24,
                                        elevation: 16,
                                        style: TextStyle(color: themesCB.highlightColor),
                                        underline: Container(
                                          height: 0,
                                          color: themesCB.highlightColor,
                                        ),
                                        onChanged: (bool newValue) {
                                          setState(() {
                                            model.situation = newValue;
                                          });
                                        },
                                        items: [
                                          DropdownMenuItem(
                                            child: Text(
                                              'Ativado',
                                              style: TextStyle(
                                                color: themesCB.highlightColor,
                                              ),
                                            ),
                                            value: true,
                                          ),
                                          DropdownMenuItem(
                                            child: Text(
                                              'Desativado',
                                              style: TextStyle(
                                                color: themesCB.highlightColor,
                                              ),
                                            ),
                                            value: false,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: heightValue,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Data da instalação: ",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                        color: themesCB.fontColor,
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () async {
                                        selectedDate = await selectDate(
                                          context: context,
                                          selectedDate: DateTime.parse(model.installationDate),
                                        );
                                        setState(() {
                                          model.installationDate = selectedDate.toString();
                                        });
                                      },
                                      child: Row(
                                        children: [
                                          Icon(Icons.calendar_today_outlined),
                                          Text(
                                            "${formatterDate.format(DateTime.parse(model.installationDate))}",
                                            style: TextStyle(
                                              color: themesCB.fontColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: heightValue,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Setores: ",
                                      style: TextStyle(
                                        color: themesCB.fontColor,
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
                                      child: g.statusDropdownButton["sectors"] != "ok"
                                          ? CupertinoActivityIndicator()
                                          : DropdownButton<String>(
                                              value: auxList["sectors"],
                                              icon: Icon(
                                                Icons.arrow_downward,
                                                color: themesCB.iconOffColor,
                                              ),
                                              iconSize: 24,
                                              elevation: 16,
                                              style: TextStyle(color: Theme.of(context).hintColor),
                                              underline: Container(
                                                height: 0,
                                                color: themesCB.highlightColor,
                                              ),
                                              onChanged: (String newValue) {
                                                setState(() {
                                                  auxList["sectors"] = newValue;
                                                });
                                              },
                                              items: g.listKeyName["sectors"].map<DropdownMenuItem<String>>((String value) {
                                                return DropdownMenuItem<String>(
                                                  value: value,
                                                  child: Text(
                                                    value,
                                                    style: TextStyle(
                                                      color: themesCB.highlightColor,
                                                    ),
                                                  ),
                                                );
                                              }).toList(),
                                            ),
                                    ),
                                    IconButton(
                                      icon: Icon(Icons.add),
                                      onPressed: () {
                                        List h = g.auxListAdd["sectors"];
                                        if (h.contains(auxList["sectors"]) == false && auxList["sectors"] != "Nenhum") {
                                          h.add(auxList["sectors"]);
                                          g.auxListAdd["sectors"] = h;

                                          var ii = g.listKeyName["sectors"].indexWhere((element) => element == auxList["sectors"]);

                                          List gId = g.auxListAddId["sectors"];
                                          gId.add(g.listKeyId["sectors"][ii]);

                                          g.auxListAddId["sectors"] = gId;

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
                                          itemCount: g.auxListAdd["sectors"].length,
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
                                                  Expanded(
                                                    child: SingleChildScrollView(
                                                      scrollDirection: Axis.horizontal,
                                                      child: Text(
                                                        "${g.auxListAdd["sectors"][index]} \nID: ${g.auxListAddId["sectors"][index]}",
                                                        style: TextStyle(color: themesCB.fontColor),
                                                      ),
                                                    ),
                                                  ),
                                                  IconButton(
                                                    padding: EdgeInsets.all(0),
                                                    icon: Icon(IconsHawcons.icon_27_trash_can),
                                                    onPressed: () {
                                                      List h = g.auxListAdd["sectors"];
                                                      h.remove(g.auxListAdd["sectors"][index]);
                                                      g.auxListAdd["sectors"] = h;

                                                      List hId = g.auxListAddId["sectors"];
                                                      hId.remove(g.auxListAddId["sectors"][index]);
                                                      g.auxListAddId["sectors"] = hId;

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
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: heightValue / 3,
                    ),
                    ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: model.sensorsNamePt.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            margin: EdgeInsets.only(top: 20),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(5)),
                                gradient: LinearGradient(colors: [
                                  Color.fromRGBO(237, 37, 36, 1),
                                  Color.fromRGBO(242, 113, 33, 1),
                                ])),
                            child: ExpansionTile(
                              initiallyExpanded: g.edit == true ? false : true,
                              iconColor: Colors.white,
                              collapsedIconColor: Colors.white,
                              maintainState: true,
                              title: Container(
                                child: Text(
                                  model.sensorsNamePt[index],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                              children: [
                                Container(
                                  margin: EdgeInsets.all(10),
                                  padding: EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                    color: themesCB.backColor,
                                    border: Border.all(width: 0.5, color: themesCB.borderColor),
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.1),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: Offset(0, 3), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Sensor: ",
                                            style: TextStyle(
                                              color: themesCB.fontColor,
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              height: 45,
                                              padding: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                // color: themesCB.backColor,
                                                border: Border.all(width: 0.5, color: themesCB.borderColor),
                                                borderRadius: BorderRadius.all(Radius.circular(5)),
                                              ),
                                              child: g.statusDropdownButton["sensors"] != "ok"
                                                  ? CupertinoActivityIndicator()
                                                  : DropdownButton<String>(
                                                      isExpanded: true,
                                                      value: auxList["sensors${index + 1}"],
                                                      icon: Icon(
                                                        Icons.arrow_downward,
                                                        color: themesCB.iconOffColor,
                                                      ),
                                                      iconSize: 24,
                                                      elevation: 16,
                                                      style: TextStyle(color: Theme.of(context).hintColor),
                                                      underline: Container(
                                                        height: 0,
                                                        color: themesCB.highlightColor,
                                                      ),
                                                      onChanged: (String newValue) {
                                                        setState(() {
                                                          auxList["sensors${index + 1}"] = newValue;
                                                          if (auxList["sensors${index + 1}"] != "Nenhum") {
                                                            var ii = g.listKeyName["sensors"].indexWhere((element) => element == auxList["sensors${index + 1}"]);
                                                            inputs["input${index + 1}"]["sensors"] = [g.listKeyId["sensors"][ii]];
                                                          } else {
                                                            inputs["input${index + 1}"]["sensors"] = [];
                                                          }
                                                        });
                                                      },
                                                      items: g.listKeyName["sensors"].map<DropdownMenuItem<String>>((String value) {
                                                        return DropdownMenuItem<String>(
                                                          value: value,
                                                          child: Text(
                                                            value,
                                                            style: TextStyle(
                                                              color: themesCB.highlightColor,
                                                            ),
                                                          ),
                                                        );
                                                      }).toList(),
                                                    ),
                                            ),
                                          ),
                                        ],
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
                                            "Dispositivo: ",
                                            style: TextStyle(
                                              color: themesCB.fontColor,
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              height: 45,
                                              padding: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                border: Border.all(width: 0.5, color: themesCB.borderColor),
                                                borderRadius: BorderRadius.all(Radius.circular(5)),
                                              ),
                                              child: g.statusDropdownButton["devices"] != "ok"
                                                  ? CupertinoActivityIndicator()
                                                  : DropdownButton<String>(
                                                      isExpanded: true,
                                                      value: auxList["devices${index + 1}"],
                                                      icon: Icon(
                                                        Icons.arrow_downward,
                                                        color: themesCB.iconOffColor,
                                                      ),
                                                      iconSize: 24,
                                                      elevation: 16,
                                                      style: TextStyle(color: themesCB.highlightColor),
                                                      underline: Container(
                                                        height: 0,
                                                        color: themesCB.highlightColor,
                                                      ),
                                                      onChanged: (String newValue) {
                                                        setState(() {
                                                          auxList["devices${index + 1}"] = newValue;
                                                          if (auxList["devices${index + 1}"] != "Nenhum") {
                                                            var ii = g.listKeyName["devices"].indexWhere((element) => element == auxList["devices${index + 1}"]);
                                                            inputs["input${index + 1}"]["devices"] = [g.listKeyId["devices"][ii]];
                                                          } else {
                                                            inputs["input${index + 1}"]["devices"] = [];
                                                          }
                                                        });
                                                      },
                                                      items: g.listKeyName["devices"].map<DropdownMenuItem<String>>((String value) {
                                                        return DropdownMenuItem<String>(
                                                          value: value,
                                                          child: Text(
                                                            value,
                                                            style: TextStyle(
                                                              color: themesCB.highlightColor,
                                                            ),
                                                          ),
                                                        );
                                                      }).toList(),
                                                    ),
                                            ),
                                          )
                                        ],
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
                                            "Recurso: ",
                                            style: TextStyle(
                                              color: themesCB.fontColor,
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              height: 45,
                                              padding: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                border: Border.all(width: 0.5, color: themesCB.borderColor),
                                                borderRadius: BorderRadius.all(Radius.circular(5)),
                                              ),
                                              child: g.statusDropdownButton["resources"] != "ok"
                                                  ? CupertinoActivityIndicator()
                                                  : DropdownButton<String>(
                                                      isExpanded: true,
                                                      value: auxList["resources${index + 1}"],
                                                      icon: Icon(
                                                        Icons.arrow_downward,
                                                        color: themesCB.iconOffColor,
                                                      ),
                                                      iconSize: 24,
                                                      elevation: 16,
                                                      style: TextStyle(color: themesCB.highlightColor),
                                                      underline: Container(
                                                        height: 0,
                                                        color: themesCB.highlightColor,
                                                      ),
                                                      onChanged: (String newValue) {
                                                        setState(() {
                                                          auxList["resources${index + 1}"] = newValue;
                                                          if (auxList["resources${index + 1}"] != "Nenhum") {
                                                            var ii = g.listKeyName["resources"].indexWhere((element) => element == auxList["resources${index + 1}"]);
                                                            inputs["input${index + 1}"]["resources"] = [g.listKeyId["resources"][ii]];
                                                          } else {
                                                            inputs["input${index + 1}"]["resources"] = [];
                                                          }
                                                        });
                                                      },
                                                      items: g.listKeyName["resources"].map<DropdownMenuItem<String>>((String value) {
                                                        return DropdownMenuItem<String>(
                                                          value: value,
                                                          child: Text(
                                                            value,
                                                            style: TextStyle(
                                                              color: themesCB.highlightColor,
                                                            ),
                                                          ),
                                                        );
                                                      }).toList(),
                                                    ),
                                            ),
                                          )
                                        ],
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
                                            "Tipo do sensor: ",
                                            style: TextStyle(
                                              color: themesCB.fontColor,
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              height: 45,
                                              padding: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                border: Border.all(width: 0.5, color: themesCB.borderColor),
                                                borderRadius: BorderRadius.all(Radius.circular(5)),
                                              ),
                                              child: DropdownButton<String>(
                                                isExpanded: true,
                                                value: auxList["operation_type${index + 1}"],
                                                icon: Icon(
                                                  Icons.arrow_downward,
                                                  color: themesCB.iconOffColor,
                                                ),
                                                iconSize: 24,
                                                elevation: 16,
                                                style: TextStyle(color: themesCB.highlightColor),
                                                underline: Container(
                                                  height: 0,
                                                  color: themesCB.highlightColor,
                                                ),
                                                onChanged: (String newValue) {
                                                  setState(() {
                                                    auxList["operation_type${index + 1}"] = newValue;
                                                    inputs["input${index + 1}"]["operation_type"] = newValue;
                                                  });
                                                },
                                                items: ['Contagem', 'Grandeza Física'].map<DropdownMenuItem<String>>((String value) {
                                                  return DropdownMenuItem<String>(
                                                    value: value,
                                                    child: Text(
                                                      value,
                                                      style: TextStyle(
                                                        color: themesCB.highlightColor,
                                                      ),
                                                    ),
                                                  );
                                                }).toList(),
                                              ),
                                            ),
                                          )
                                        ],
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
                                            "Valor de Ativação: ",
                                            style: TextStyle(
                                              color: themesCB.fontColor,
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              height: 45,
                                              padding: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                border: Border.all(width: 0.5, color: themesCB.borderColor),
                                                borderRadius: BorderRadius.all(Radius.circular(5)),
                                              ),
                                              child: DropdownButton<int>(
                                                key: Key('activation_value${index + 1}'),
                                                isExpanded: true,
                                                value: auxList["activation_value${index + 1}"],
                                                icon: Icon(
                                                  Icons.arrow_downward,
                                                  color: themesCB.iconOffColor,
                                                ),
                                                iconSize: 24,
                                                elevation: 16,
                                                style: TextStyle(color: themesCB.highlightColor),
                                                underline: Container(
                                                  height: 0,
                                                  color: themesCB.highlightColor,
                                                ),
                                                onChanged: (int newValue) {
                                                  setState(() {
                                                    auxList["activation_value${index + 1}"] = newValue;
                                                    inputs["input${index + 1}"]["activation_value"] = newValue;
                                                  });
                                                },
                                                items: [0, 1].map<DropdownMenuItem<int>>((int value) {
                                                  return DropdownMenuItem<int>(
                                                    key: Key('activation_value${index + 1}'),
                                                    value: value,
                                                    child: Text(
                                                      value.toString(),
                                                      style: TextStyle(
                                                        color: themesCB.highlightColor,
                                                      ),
                                                    ),
                                                  );
                                                }).toList(),
                                              ),
                                            ),
                                          )
                                        ],
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
                                            "Tipo de operação: ",
                                            style: TextStyle(
                                              color: themesCB.fontColor,
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              height: 45,
                                              padding: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                border: Border.all(width: 0.5, color: themesCB.borderColor),
                                                borderRadius: BorderRadius.all(Radius.circular(5)),
                                              ),
                                              child: DropdownButton<String>(
                                                isExpanded: true,
                                                value: auxList["operation_info${index + 1}"],
                                                icon: Icon(
                                                  Icons.arrow_downward,
                                                  color: themesCB.iconOffColor,
                                                ),
                                                iconSize: 24,
                                                elevation: 16,
                                                style: TextStyle(color: themesCB.highlightColor),
                                                underline: Container(
                                                  height: 0,
                                                  color: themesCB.highlightColor,
                                                ),
                                                onChanged: (String newValue) {
                                                  auxList["operation_info${index + 1}"] = newValue;
                                                  if (newValue == 'off') {
                                                    inputs["input${index + 1}"]["operation_info"] = {
                                                      "task_off": {"active": true},
                                                      "task_play": {
                                                        "active": false,
                                                        "type_items": "Itens Bons",
                                                      },
                                                      "task_pause": {
                                                        "active": false,
                                                        "reason": "Falta de Operador",
                                                      },
                                                      "task_stop": {"active": false}
                                                    };
                                                  }
                                                  if (newValue == 'play') {
                                                    inputs["input${index + 1}"]["operation_info"] = {
                                                      "task_off": {"active": false},
                                                      "task_play": {
                                                        "active": true,
                                                        "type_items": "Itens Bons",
                                                      },
                                                      "task_pause": {
                                                        "active": false,
                                                        "reason": "Falta de Operador",
                                                      },
                                                      "task_stop": {"active": false}
                                                    };
                                                  }
                                                  if (newValue == 'pause') {
                                                    inputs["input${index + 1}"]["operation_info"] = {
                                                      "task_off": {"active": false},
                                                      "task_play": {
                                                        "active": false,
                                                        "type_items": "Itens Bons",
                                                      },
                                                      "task_pause": {
                                                        "active": true,
                                                        "reason": "Falta de Operador",
                                                      },
                                                      "task_stop": {"active": false}
                                                    };
                                                  }
                                                  if (newValue == 'stop') {
                                                    inputs["input${index + 1}"]["operation_info"] = {
                                                      "task_off": {"active": false},
                                                      "task_play": {
                                                        "active": false,
                                                        "type_items": "Itens Bons",
                                                      },
                                                      "task_pause": {
                                                        "active": false,
                                                        "reason": "Falta de Operador",
                                                      },
                                                      "task_stop": {"active": true}
                                                    };
                                                  }
                                                  auxList["playTypeItens${index + 1}"] = 'Itens Bons';
                                                  auxList["pauseReason${index + 1}"] = 'Falta de Operador';
                                                  setState(() {});
                                                },
                                                items: ['off', 'play', 'pause', 'stop'].map<DropdownMenuItem<String>>((String value) {
                                                  return DropdownMenuItem<String>(
                                                    value: value,
                                                    child: Text(
                                                      value,
                                                      style: TextStyle(
                                                        color: themesCB.highlightColor,
                                                      ),
                                                    ),
                                                  );
                                                }).toList(),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: heightValue / 2,
                                      ),
                                      auxList["operation_info${index + 1}"] == 'play'
                                          ? Row(
                                              children: [
                                                Text(
                                                  "Tipo de item: ",
                                                  style: TextStyle(
                                                    color: themesCB.fontColor,
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    height: 45,
                                                    padding: EdgeInsets.all(10),
                                                    decoration: BoxDecoration(
                                                      border: Border.all(width: 0.5, color: themesCB.borderColor),
                                                      borderRadius: BorderRadius.all(Radius.circular(5)),
                                                    ),
                                                    child: DropdownButton<String>(
                                                      isExpanded: true,
                                                      value: auxList["playTypeItens${index + 1}"],
                                                      icon: Icon(
                                                        Icons.arrow_downward,
                                                        color: themesCB.iconOffColor,
                                                      ),
                                                      iconSize: 24,
                                                      elevation: 16,
                                                      style: TextStyle(color: themesCB.highlightColor),
                                                      underline: Container(
                                                        height: 0,
                                                        color: themesCB.highlightColor,
                                                      ),
                                                      onChanged: (String newValue) {
                                                        auxList["playTypeItens${index + 1}"] = newValue;
                                                        inputs["input${index + 1}"]["operation_info"]["task_play"]["type_items"] = newValue;
                                                        setState(() {});
                                                      },
                                                      items: ['Itens Bons', 'Itens Perdidos', 'Itens Reprovados'].map<DropdownMenuItem<String>>((String value) {
                                                        return DropdownMenuItem<String>(
                                                          value: value,
                                                          child: Text(
                                                            value,
                                                            style: TextStyle(
                                                              color: themesCB.highlightColor,
                                                            ),
                                                          ),
                                                        );
                                                      }).toList(),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            )
                                          : Container(),
                                      auxList["operation_info${index + 1}"] == 'pause'
                                          ? Row(
                                              children: [
                                                Text(
                                                  "Tipo de item: ",
                                                  style: TextStyle(
                                                    color: themesCB.fontColor,
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    height: 45,
                                                    padding: EdgeInsets.all(10),
                                                    decoration: BoxDecoration(
                                                      border: Border.all(width: 0.5, color: themesCB.borderColor),
                                                      borderRadius: BorderRadius.all(Radius.circular(5)),
                                                    ),
                                                    child: DropdownButton<String>(
                                                      isExpanded: true,
                                                      value: auxList["pauseReason${index + 1}"],
                                                      icon: Icon(
                                                        Icons.arrow_downward,
                                                        color: themesCB.iconOffColor,
                                                      ),
                                                      iconSize: 24,
                                                      elevation: 16,
                                                      style: TextStyle(color: themesCB.highlightColor),
                                                      underline: Container(
                                                        height: 0,
                                                        color: themesCB.highlightColor,
                                                      ),
                                                      onChanged: (String newValue) {
                                                        auxList["pauseReason${index + 1}"] = newValue;
                                                        inputs["input${index + 1}"]["operation_info"]["task_pause"]["reason"] = newValue;
                                                        setState(() {});
                                                      },
                                                      items: [
                                                        'Falta de Operador',
                                                        'Queima de Sensor',
                                                        'Falta de Energia',
                                                        'Falta de Matéria-prima',
                                                        'Falha Desconhecida na Máquina',
                                                        'Outros',
                                                      ].map<DropdownMenuItem<String>>((String value) {
                                                        return DropdownMenuItem<String>(
                                                          value: value,
                                                          child: Text(
                                                            value,
                                                            style: TextStyle(
                                                              color: themesCB.highlightColor,
                                                            ),
                                                          ),
                                                        );
                                                      }).toList(),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            )
                                          : Container(),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
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
                            g.edit = false;
                            Navigator.of(context).pushReplacementNamed(routes.routesAppSupervisory['stageArea']);
                            routes.setForwardRoute(routes.routesAppSupervisory['stageArea']);
                            routes.setBackRoute(ModalRoute.of(context).settings.name);
                          },
                          widthx: 100,
                          text: "CANCELAR",
                        ),
                        SizedBox(width: 10),
                        buttonPrimary(
                          context: context,
                          func: () async {
                            if (_formKey.currentState.validate()) {
                              _formKey.currentState.save();

                              if (g.edit == false) {
                                model.sId = null;
                              }
                              model.serialNumber = g.selectSerialNumber;

                              model.periodStart = "${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day} ${DateTime.now().hour}:${DateTime.now().minute}:00";
                              model.periodEnd = "${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day} ${DateTime.now().hour}:${DateTime.now().minute}:00";

                              model.input1NPNOrPNP = inputs['input1'];
                              model.input2NPNOrPNP = inputs['input2'];
                              model.input3NPNOrPNP = inputs['input3'];
                              model.input4NPNOrPNP = inputs['input4'];
                              model.input5NPNOrPNP = inputs['input5'];
                              model.input6NPNOrPNP = inputs['input6'];
                              model.input70To10v = inputs['input7'];
                              model.input80To10v = inputs['input8'];
                              model.input94To20Am = inputs['input9'];
                              model.input10RS485 = inputs['input10'];
                              model.input11RS232 = inputs['input11'];
                              model.input12LoadCell = inputs['input12'];
                              model.input13Thermocouple = inputs['input13'];
                              model.input14TemperatureIR = inputs['input14'];
                              model.input15v = inputs['input15'];
                              model.input16v = inputs['input16'];
                              model.input17v = inputs['input17'];
                              model.input18v = inputs['input18'];

                              model.docsRelationsIds = {
                                "list_sectors": g.auxListAddId["sectors"],
                                // "list_sensors": g.auxListAddId["sensor"],
                                // "list_devices": g.auxListAddId["devices"],
                              };

                              // print(model.toJson());

                              await g.send(
                                id: g.edit == true ? '/${model.sId}' : '',
                                model: model,
                                context: context,
                                create: g.edit == true ? false : true,
                                withToken: true,
                                apiRoute: '${g.apiRoute}',
                                funcAcept: () {
                                  g.global = true;
                                  g.edit = false;
                                  apiProvider.progress = "0";
                                  Navigator.of(context).pushReplacementNamed(routes.routesAppSupervisory['stageArea']);
                                },
                                funcNoAcept: () {},
                                message: g.edit == true ? "Documento ATUALIZADO com sucesso." : "Documento CRIADO com sucesso.",
                              );
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
