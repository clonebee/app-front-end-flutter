import "dart:core";
import 'package:cbmes_v1/provider/global.provider.dart';
import 'package:cbmes_v1/provider/routes.Provider.dart';
import 'package:cbmes_v1/models/patterns/resources.models.dart';
import 'package:cbmes_v1/provider/themes/themes.provider.dart';
import 'package:cbmes_v1/ui/globalWidgets/buttons/button_primary.dart';
import 'package:cbmes_v1/ui/globalWidgets/buttons/button_secondary.dart';
import 'package:cbmes_v1/ui/globalWidgets/decoration/common_input_decoration.dart';
import 'package:cbmes_v1/ui/globalWidgets/photoPerfil.dart';
import "package:flutter/cupertino.dart";
import "package:provider/provider.dart";
import 'package:cbmes_v1/provider/apiProvider.dart';
import "package:flutter/material.dart";
import "package:cbmes_v1/themes/icons/IconsHawcons.dart";

class ResourcesForm extends StatefulWidget {
  @override
  _ResourcesFormState createState() => _ResourcesFormState();
}

class _ResourcesFormState extends State<ResourcesForm> {
  @override
  void initState() {
    super.initState();
  }

  AutovalidateMode validate = AutovalidateMode.onUserInteraction;
  FocusNode nameFocusNode = FocusNode();
  FocusNode descriptionFocusNode = FocusNode();
  var model = new ResourcesModel(
    sId: null,
    name: "",
    favorite: false,
    situation: true,
    description: "",
    docsRelations: null,
    docsRelationsIds: {},
    operatorActivities: {},
  );

  bool init = true;
  bool init2 = true;
  Map<String, String> auxList = {"": ""};
  List<String> listFields = ["sectors", "equipments", "devices", "sensors", "actuators", "transports", "users-operator"];

  String shift;
  String activities;

  final _formKey = GlobalKey<FormState>();
  final _formKey2 = GlobalKey<FormState>();
  String dropdownValue = "Ativado";
  double heightValue = 15.0;

  @override
  Widget build(BuildContext context) {
    Routes routes = Provider.of<Routes>(context);
    GlobalProvider g = Provider.of<GlobalProvider>(context);
    APIProvider apiProvider = Provider.of<APIProvider>(context);
    ThemesCB themesCB = Provider.of<ThemesCB>(context);

    if (init == true) {
      init = false;

      g.getListKey(
        context: context,
        func: () {},
        local: ["inventory", "inventory", "inventory", "inventory", "inventory", "inventory", "users"],
        listFields: listFields,
        key: ["\"_id\"", "\"name\"", "\"files_url\""],
      );

      for (int i = 0; i < listFields.length; i++) {
        g.auxListAdd[listFields[i]] = [];
        g.auxListAddId[listFields[i]] = [];
        g.auxListAddFilesUrl[listFields[i]] = [];
        g.statusDropdownButton[listFields[i]] = "";
      }
      g.auxListAdd["active_description"] = [];
      g.auxListAdd["shift"] = [];

      for (int i = 0; i < listFields.length; i++) {
        auxList[listFields[i]] = "Nenhum";
      }
    }

    if (g.edit == true) {
      model = g.getDynamicModel();

      if (init2 == true) {
        init2 = false;

        funcG(String value, dynamic obj) {
          Map x;
          if (obj != null) {
            for (int i = 0; i < obj.length; i++) {
              x = obj[i];
              g.auxListAdd[value] += [x["name"]];
              g.auxListAddId[value] += [x["_id"]];

              if (value == "users-operator") {
                g.auxListAddFilesUrl[value] += [x["files_url"]["img1"]];

                g.auxListAdd["active_description"] += [model.operatorActivities[x["_id"]]["active_description"]];
                g.auxListAdd["shift"] += [model.operatorActivities[x["_id"]]["shift"]];
              }
            }
          }
          // print("llllLLLLLLLLLLLLLLLLLLLLLLL");
          // print(g.auxListAdd["active_description"]);
          // print(g.auxListAdd["shift"]);
          // print("llllLLLLLLLLLLLLLLLLLLLLLLL");
        }

        funcG("sectors", model.docsRelations["list_sectors"]);
        funcG("equipments", model.docsRelations["list_equipments"]);
        funcG("devices", model.docsRelations["list_devices"]);
        funcG("sensors", model.docsRelations["list_sensors"]);
        funcG("actuators", model.docsRelations["list_actuators"]);
        funcG("transports", model.docsRelations["list_transports"]);
        funcG("users-operator", model.docsRelations["list_users_operator"]);
      }
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
                  decoration: commonInputDecoration(context: context, labelText: "Nome do Recurso"),
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
                    "Situação: ",
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
              Padding(
                padding: EdgeInsets.only(bottom: heightValue * 2),
                child: TextFormField(
                  autovalidateMode: validate,
                  focusNode: descriptionFocusNode,
                  cursorColor: themesCB.cursorColor,
                  initialValue: g.edit == true ? model.description : "",
                  keyboardType: TextInputType.text,
                  decoration: commonInputDecoration(context: context, labelText: "Descrição"),
                  style: TextStyle(
                    fontSize: 20,
                    color: themesCB.highlightColor,
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      FocusScope.of(context).requestFocus(descriptionFocusNode);
                      return 'Campo em branco';
                    }
                    return null;
                  },
                  onSaved: (val) {
                    model.description = val;
                  },
                ),
              ),
              SizedBox(
                height: heightValue * 2,
              ),
              Text(
                "Relacionamentos: ",
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
                  Text("Setores: "),
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
                            style: themesCB.boldHighLightStyleText,
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
                                child: Text(value),
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

                        List hId = g.auxListAddId["sectors"];
                        hId.add(g.listKeyId["sectors"][ii]);

                        g.auxListAddId["sectors"] = hId;

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
                    MediaQuery.removePadding(
                      removeTop: true,
                      removeBottom: true,
                      context: context,
                      child: ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: g.auxListAdd["sectors"].length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              margin: EdgeInsets.only(top: 5),
                              // height: 45,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                // color: themesCB.backColor
                                border: Border.all(width: 0.5, color: themesCB.borderColor),
                                borderRadius: BorderRadius.all(Radius.circular(5)),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("${g.auxListAdd["sectors"][index]} \nID: ${g.auxListAddId["sectors"][index]}"),
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
                    ),
                  ],
                ),
              ),
              Divider(
                height: 20,
                thickness: 2,
                indent: 0,
                endIndent: 0,
              ),
              Row(
                children: [
                  Text("Equipamentos: "),
                  Container(
                    height: 45,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: themesCB.backColor,
                      border: Border.all(width: 0.5, color: themesCB.borderColor),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: g.statusDropdownButton["equipments"] != "ok"
                        ? CupertinoActivityIndicator()
                        : DropdownButton<String>(
                            value: auxList["equipments"],
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
                                auxList["equipments"] = newValue;
                              });
                            },
                            items: g.listKeyName["equipments"].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                  ),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      List h = g.auxListAdd["equipments"];
                      if (h.contains(auxList["equipments"]) == false && auxList["equipments"] != "Nenhum") {
                        h.add(auxList["equipments"]);
                        g.auxListAdd["equipments"] = h;

                        var ii = g.listKeyName["equipments"].indexWhere((element) => element == auxList["equipments"]);

                        List hId = g.auxListAddId["equipments"];
                        hId.add(g.listKeyId["equipments"][ii]);

                        g.auxListAddId["equipments"] = hId;

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
                    MediaQuery.removePadding(
                      removeTop: true,
                      removeBottom: true,
                      context: context,
                      child: MediaQuery.removePadding(
                        removeTop: true,
                        removeBottom: true,
                        context: context,
                        child: ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: g.auxListAdd["equipments"].length,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                margin: EdgeInsets.only(top: 5),
                                // height: 45,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  // color: themesCB.backColor
                                  border: Border.all(width: 0.5, color: themesCB.borderColor),
                                  borderRadius: BorderRadius.all(Radius.circular(5)),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text("${g.auxListAdd["equipments"][index]} \nID: ${g.auxListAddId["equipments"][index]}"),
                                    IconButton(
                                      padding: EdgeInsets.all(0),
                                      icon: Icon(IconsHawcons.icon_27_trash_can),
                                      onPressed: () {
                                        List h = g.auxListAdd["equipments"];
                                        h.remove(g.auxListAdd["equipments"][index]);
                                        g.auxListAdd["equipments"] = h;

                                        List hId = g.auxListAddId["equipments"];
                                        hId.remove(g.auxListAddId["equipments"][index]);
                                        g.auxListAddId["equipments"] = hId;

                                        setState(() {});
                                      },
                                    )
                                  ],
                                ),
                              );
                            }),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 20,
                thickness: 2,
                indent: 0,
                endIndent: 0,
              ),
              Row(
                children: [
                  Text("Dispositivos: "),
                  Container(
                    height: 45,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: themesCB.backColor,
                      border: Border.all(width: 0.5, color: themesCB.borderColor),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: g.statusDropdownButton["devices"] != "ok"
                        ? CupertinoActivityIndicator()
                        : DropdownButton<String>(
                            value: auxList["devices"],
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
                                auxList["devices"] = newValue;
                              });
                            },
                            items: g.listKeyName["devices"].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                  ),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      List h = g.auxListAdd["devices"];
                      if (h.contains(auxList["devices"]) == false && auxList["devices"] != "Nenhum") {
                        h.add(auxList["devices"]);
                        g.auxListAdd["devices"] = h;

                        var ii = g.listKeyName["devices"].indexWhere((element) => element == auxList["devices"]);

                        List hId = g.auxListAddId["devices"];
                        hId.add(g.listKeyId["devices"][ii]);

                        g.auxListAddId["devices"] = hId;

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
                    MediaQuery.removePadding(
                      removeTop: true,
                      removeBottom: true,
                      context: context,
                      child: ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: g.auxListAdd["devices"].length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              margin: EdgeInsets.only(top: 5),
                              // height: 45,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                // color: themesCB.backColor
                                border: Border.all(width: 0.5, color: themesCB.borderColor),
                                borderRadius: BorderRadius.all(Radius.circular(5)),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("${g.auxListAdd["devices"][index]} \nID: ${g.auxListAddId["devices"][index]}"),
                                  IconButton(
                                    padding: EdgeInsets.all(0),
                                    icon: Icon(IconsHawcons.icon_27_trash_can),
                                    onPressed: () {
                                      List h = g.auxListAdd["devices"];
                                      h.remove(g.auxListAdd["devices"][index]);
                                      g.auxListAdd["devices"] = h;

                                      List hId = g.auxListAddId["devices"];
                                      hId.remove(g.auxListAddId["devices"][index]);
                                      g.auxListAddId["devices"] = hId;

                                      setState(() {});
                                    },
                                  )
                                ],
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 20,
                thickness: 2,
                indent: 0,
                endIndent: 0,
              ),
              Row(
                children: [
                  Text("Sensores: "),
                  Container(
                    height: 45,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: themesCB.backColor,
                      border: Border.all(width: 0.5, color: themesCB.borderColor),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: g.statusDropdownButton["sensors"] != "ok"
                        ? CupertinoActivityIndicator()
                        : DropdownButton<String>(
                            value: auxList["sensors"],
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
                                auxList["sensors"] = newValue;
                              });
                            },
                            items: g.listKeyName["sensors"].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                  ),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      List h = g.auxListAdd["sensors"];
                      if (h.contains(auxList["sensors"]) == false && auxList["sensors"] != "Nenhum") {
                        h.add(auxList["sensors"]);
                        g.auxListAdd["sensors"] = h;

                        var ii = g.listKeyName["sensors"].indexWhere((element) => element == auxList["sensors"]);

                        List hId = g.auxListAddId["sensors"];
                        hId.add(g.listKeyId["sensors"][ii]);

                        g.auxListAddId["sensors"] = hId;

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
                    MediaQuery.removePadding(
                      removeTop: true,
                      removeBottom: true,
                      context: context,
                      child: ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: g.auxListAdd["sensors"].length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              margin: EdgeInsets.only(top: 5),
                              // height: 45,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                // color: themesCB.backColor
                                border: Border.all(width: 0.5, color: themesCB.borderColor),
                                borderRadius: BorderRadius.all(Radius.circular(5)),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("${g.auxListAdd["sensors"][index]} \nID: ${g.auxListAddId["sensors"][index]}"),
                                  IconButton(
                                    padding: EdgeInsets.all(0),
                                    icon: Icon(IconsHawcons.icon_27_trash_can),
                                    onPressed: () {
                                      List h = g.auxListAdd["sensors"];
                                      h.remove(g.auxListAdd["sensors"][index]);
                                      g.auxListAdd["sensors"] = h;

                                      List hId = g.auxListAddId["sensors"];
                                      hId.remove(g.auxListAddId["sensors"][index]);
                                      g.auxListAddId["sensors"] = hId;

                                      setState(() {});
                                    },
                                  )
                                ],
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 20,
                thickness: 2,
                indent: 0,
                endIndent: 0,
              ),
              Row(
                children: [
                  Text("Atuadores: "),
                  Container(
                    height: 45,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: themesCB.backColor,
                      border: Border.all(width: 0.5, color: themesCB.borderColor),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: g.statusDropdownButton["actuators"] != "ok"
                        ? CupertinoActivityIndicator()
                        : DropdownButton<String>(
                            value: auxList["actuators"],
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
                                auxList["actuators"] = newValue;
                              });
                            },
                            items: g.listKeyName["actuators"].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                  ),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      List h = g.auxListAdd["actuators"];
                      if (h.contains(auxList["actuators"]) == false && auxList["actuators"] != "Nenhum") {
                        h.add(auxList["actuators"]);
                        g.auxListAdd["actuators"] = h;

                        var ii = g.listKeyName["actuators"].indexWhere((element) => element == auxList["actuators"]);

                        List hId = g.auxListAddId["actuators"];
                        hId.add(g.listKeyId["actuators"][ii]);

                        g.auxListAddId["actuators"] = hId;

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
                    MediaQuery.removePadding(
                      removeTop: true,
                      removeBottom: true,
                      context: context,
                      child: ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: g.auxListAdd["actuators"].length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              margin: EdgeInsets.only(top: 5),
                              // height: 45,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                // color: themesCB.backColor
                                border: Border.all(width: 0.5, color: themesCB.borderColor),
                                borderRadius: BorderRadius.all(Radius.circular(5)),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("${g.auxListAdd["actuators"][index]} \nID: ${g.auxListAddId["actuators"][index]}"),
                                  IconButton(
                                    padding: EdgeInsets.all(0),
                                    icon: Icon(IconsHawcons.icon_27_trash_can),
                                    onPressed: () {
                                      List h = g.auxListAdd["actuators"];
                                      h.remove(g.auxListAdd["actuators"][index]);
                                      g.auxListAdd["actuators"] = h;

                                      List hId = g.auxListAddId["actuators"];
                                      hId.remove(g.auxListAddId["actuators"][index]);
                                      g.auxListAddId["actuators"] = hId;

                                      setState(() {});
                                    },
                                  )
                                ],
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 20,
                thickness: 2,
                indent: 0,
                endIndent: 0,
              ),
              Row(
                children: [
                  Text("Transportes: "),
                  Container(
                    height: 45,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: themesCB.backColor,
                      border: Border.all(width: 0.5, color: themesCB.borderColor),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: g.statusDropdownButton["transports"] != "ok"
                        ? CupertinoActivityIndicator()
                        : DropdownButton<String>(
                            value: auxList["transports"],
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
                                auxList["transports"] = newValue;
                              });
                            },
                            items: g.listKeyName["transports"].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                  ),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      List h = g.auxListAdd["transports"];
                      if (h.contains(auxList["transports"]) == false && auxList["transports"] != "Nenhum") {
                        h.add(auxList["transports"]);
                        g.auxListAdd["transports"] = h;

                        var ii = g.listKeyName["transports"].indexWhere((element) => element == auxList["transports"]);

                        List hId = g.auxListAddId["transports"];
                        hId.add(g.listKeyId["transports"][ii]);

                        g.auxListAddId["transports"] = hId;

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
                    MediaQuery.removePadding(
                      removeTop: true,
                      removeBottom: true,
                      context: context,
                      child: ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: g.auxListAdd["transports"].length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              margin: EdgeInsets.only(top: 5),
                              // height: 45,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                // color: themesCB.backColor
                                border: Border.all(width: 0.5, color: themesCB.borderColor),
                                borderRadius: BorderRadius.all(Radius.circular(5)),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("${g.auxListAdd["transports"][index]} \nID: ${g.auxListAddId["transports"][index]}"),
                                  IconButton(
                                    padding: EdgeInsets.all(0),
                                    icon: Icon(IconsHawcons.icon_27_trash_can),
                                    onPressed: () {
                                      List h = g.auxListAdd["transports"];
                                      h.remove(g.auxListAdd["transports"][index]);
                                      g.auxListAdd["transports"] = h;

                                      List hId = g.auxListAddId["transports"];
                                      hId.remove(g.auxListAddId["transports"][index]);
                                      g.auxListAddId["transports"] = hId;

                                      setState(() {});
                                    },
                                  )
                                ],
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 20,
                thickness: 2,
                indent: 0,
                endIndent: 0,
              ),
              Row(
                children: [
                  Text("Colaboradores: "),
                  Container(
                    height: 45,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: themesCB.backColor,
                      border: Border.all(width: 0.5, color: themesCB.borderColor),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: g.statusDropdownButton["users-operator"] != "ok"
                        ? CupertinoActivityIndicator()
                        : DropdownButton<String>(
                            value: auxList["users-operator"],
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
                                auxList["users-operator"] = newValue;
                              });
                            },
                            items: g.listKeyName["users-operator"].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                  ),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      List h = g.auxListAdd["users-operator"];
                      if (h.contains(auxList["users-operator"]) == false && auxList["users-operator"] != "Nenhum") {
                        showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (BuildContext context) {
                            return CupertinoAlertDialog(
                              title: Text("${auxList["users-operator"]}"),
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
                                        "Descreva as atividades do colaborador neste recurso",
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
                                          keyboardType: TextInputType.text,
                                          decoration: commonInputDecoration(context: context, labelText: "Atividades"),
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
                                            activities = val;
                                          },
                                        ),
                                      ),
                                      Text(
                                        "Descreva o turno do colaborador neste recurso",
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
                                          keyboardType: TextInputType.text,
                                          decoration: commonInputDecoration(context: context, labelText: "Turno"),
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
                                            shift = val;
                                          },
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

                                                List ga = g.auxListAdd["active_description"];
                                                ga.add(activities);
                                                g.auxListAdd["active_description"] = ga;

                                                List gs = g.auxListAdd["shift"];
                                                gs.add(shift);
                                                g.auxListAdd["shift"] = gs;

                                                h.add(auxList["users-operator"]);
                                                g.auxListAdd["users-operator"] = h;
                                                var ii = g.listKeyName["users-operator"].indexWhere((element) => element == auxList["users-operator"]);
                                                // print("!!!!!!!!!!!!!!!!!!!!!!!!!!%%%%%%%%%%%%%");
                                                // print(g.auxListAddId["users-operator"]);
                                                List gId = g.auxListAddId["users-operator"];
                                                gId.add(g.listKeyId["users-operator"][ii]);
                                                g.auxListAddId["users-operator"] = gId;

                                                List hFilesUrl = g.auxListAddFilesUrl["users-operator"];
                                                hFilesUrl.add(g.listKeyFilesUrl["users-operator"][ii - 1]); //Nenhum
                                                g.auxListAddFilesUrl["users-operator"] = hFilesUrl;

                                                Navigator.of(context).pop();
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
                    MediaQuery.removePadding(
                      removeTop: true,
                      removeBottom: true,
                      context: context,
                      child: ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: g.auxListAdd["users-operator"].length,
                          itemBuilder: (BuildContext context, int index) {
                            return Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 5),
                                  child: photoPerfil(
                                    context: context,
                                    circularSize: 50,
                                    iconSize: 20,
                                    obj: "${g.auxListAddFilesUrl["users-operator"][index]}",
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(top: 5),
                                    // height: 45,
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      // color: themesCB.backColor
                                      border: Border.all(width: 0.5, color: themesCB.borderColor),
                                      borderRadius: BorderRadius.all(Radius.circular(5)),
                                    ),
                                    child: Container(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            "${g.auxListAdd["users-operator"][index]} \nID: ${g.auxListAddId["users-operator"][index]} \nAtividades: ${g.auxListAdd["active_description"][index]} \nTurno: ${g.auxListAdd["shift"][index]}",
                                            style: themesCB.regularStyleText,
                                          ),
                                          IconButton(
                                            padding: EdgeInsets.all(0),
                                            icon: Icon(IconsHawcons.icon_27_trash_can),
                                            onPressed: () {
                                              List h = g.auxListAdd["users-operator"];
                                              h.remove(g.auxListAdd["users-operator"][index]);
                                              g.auxListAdd["users-operator"] = h;

                                              List h1 = g.auxListAdd["active_description"];
                                              h1.remove(g.auxListAdd["active_description"][index]);
                                              g.auxListAdd["active_description"] = h1;

                                              List h2 = g.auxListAdd["shift"];
                                              h2.remove(g.auxListAdd["shift"][index]);
                                              g.auxListAdd["shift"] = h2;

                                              List hId = g.auxListAddId["users-operator"];
                                              hId.remove(g.auxListAddId["users-operator"][index]);
                                              g.auxListAddId["users-operator"] = hId;

                                              List hFilesUrl = g.auxListAddFilesUrl["users-operator"];
                                              hFilesUrl.remove(g.auxListAddFilesUrl["users-operator"][index]);
                                              g.auxListAddFilesUrl["users-operator"] = hFilesUrl;

                                              setState(() {});
                                            },
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          }),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: heightValue * 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buttonSecondary(
                    context: context,
                    func: () {
                      g.global = true;
                      g.edit = false;
                      Navigator.of(context).pushReplacementNamed(routes.routesAppPatterns["stageArea"]);
                      routes.setForwardRoute(routes.routesAppPatterns["stageArea"]);
                      routes.setBackRoute(ModalRoute.of(context).settings.name);
                    },
                    widthx: 100,
                    text: "CANCELAR",
                  ),
                  SizedBox(width: 10),
                  buttonPrimary(
                    context: context,
                    func: () async {
                      if (g.auxListAdd["users-operator"].length > 0 && g.auxListAdd["sectors"].length > 0) {
                        if (_formKey.currentState.validate()) {
                          _formKey.currentState.save();

                          if (g.edit == false) {
                            model.sId = null;
                          }

                          model.docsRelationsIds["list_sectors"] = g.auxListAddId["sectors"];
                          model.docsRelationsIds["list_equipments"] = g.auxListAddId["equipments"];
                          model.docsRelationsIds["list_devices"] = g.auxListAddId["devices"];
                          model.docsRelationsIds["list_sensors"] = g.auxListAddId["sensors"];
                          model.docsRelationsIds["list_actuators"] = g.auxListAddId["actuators"];
                          model.docsRelationsIds["list_transports"] = g.auxListAddId["transports"];
                          model.docsRelationsIds["list_users_operator"] = [];

                          for (int i = 0; i < g.auxListAddId["users-operator"].length; i++) {
                            model.operatorActivities[g.auxListAddId["users-operator"][i]] = {
                              "active_description": g.auxListAdd["active_description"][i],
                              "shift": g.auxListAdd["shift"][i],
                            };
                          }

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
                              Navigator.of(context).pushReplacementNamed(routes.routesAppPatterns['stageArea']);
                            },
                            funcNoAcept: () {},
                            message: g.edit == true ? "Documento ATUALIZADO com sucesso." : "Documento CRIADO com sucesso.",
                          );
                        }
                      } else {
                        showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (BuildContext context) {
                            return CupertinoAlertDialog(
                              title: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("Condição:"),
                                ],
                              ),
                              content: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text("1) Adicione ao menos um colaborador. \n 2) Adicione ao menos um setor."),
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text("FECHAR"),
                                )
                              ],
                            );
                          },
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
