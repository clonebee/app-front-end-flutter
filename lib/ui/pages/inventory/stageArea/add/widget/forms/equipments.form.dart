import 'dart:convert';
import "dart:core";
import 'dart:io';
import 'package:cbmes_v1/provider/global.provider.dart';
import 'package:cbmes_v1/provider/routes.Provider.dart';
import "package:cbmes_v1/models/inventory/equipments.models.dart";
import 'package:cbmes_v1/provider/themes/themes.provider.dart';
import 'package:cbmes_v1/themes/icons/IconsLinear.dart';
import 'package:cbmes_v1/ui/globalWidgets/buttons/button_color.dart';
import 'package:cbmes_v1/ui/globalWidgets/buttons/button_primary.dart';
import 'package:cbmes_v1/ui/globalWidgets/buttons/button_secondary.dart';
import 'package:cbmes_v1/ui/globalWidgets/dateAndTime.dart';
import 'package:cbmes_v1/ui/globalWidgets/decoration/common_input_decoration.dart';
import 'package:cbmes_v1/ui/globalWidgets/dialog_message.dart';
import 'package:file_picker/file_picker.dart';
import "package:flutter/cupertino.dart";
import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';
import "package:provider/provider.dart";
import 'package:cbmes_v1/provider/apiProvider.dart';
import "package:flutter/material.dart";
import "package:cbmes_v1/themes/icons/IconsHawcons.dart";

class EquipmentsForm extends StatefulWidget {
  @override
  _EquipmentsFormState createState() => _EquipmentsFormState();
}

class _EquipmentsFormState extends State<EquipmentsForm> {
  var model = new EquipmentsModel(
    sId: null,
    name: "",
    brand: "",
    code: "",
    model: "",
    favorite: false,
    situation: true,
    dateOfInstallation: "${DateTime.now()}",
    dateOfManufacture: "${DateTime.now()}",
    datePurchase: "${DateTime.now()}",
    description: "",
    filesBase64Up: {
      "img1": "",
    },
    docsRelations: null,
    docsRelationsIds: {},
  );

  bool controlImageNetwork = false;

  AutovalidateMode validate = AutovalidateMode.onUserInteraction;
  FocusNode nameFocusNode = FocusNode();
  FocusNode codeFocusNode = FocusNode();
  FocusNode brandFocusNode = FocusNode();
  FocusNode modelFocusNode = FocusNode();
  FocusNode descriptionFocusNode = FocusNode();

  bool init1 = true;
  bool init2 = true;
  Map<String, String> auxList = {"": ""};
  List<String> listFields = ["sectors", "devices", "sensors", "actuators"];

  final _formKey = GlobalKey<FormState>();
  String dropdownValue = "Ativado";
  double heightValue = 30;

  DateTime selectedDate = DateTime.now().toLocal();
  var formatterDate = new DateFormat('dd/MM/yyyy');

  @override
  Widget build(BuildContext context) {
    Routes routes = Provider.of<Routes>(context);
    GlobalProvider g = Provider.of<GlobalProvider>(context);
    APIProvider apiProvider = Provider.of<APIProvider>(context);
    ThemesCB themesCB = Provider.of<ThemesCB>(context);

    if (init1 == true) {
      init1 = false;
      g.getListKey(
        context: context,
        func: () {},
        local: ["inventory", "inventory", "inventory", "inventory"],
        listFields: listFields,
        key: ["\"name\""],
      );

      for (int i = 0; i < listFields.length; i++) {
        g.auxListAdd[listFields[i]] = [];
        g.auxListAddId[listFields[i]] = [];
        g.statusDropdownButton[listFields[i]] = "";
      }
      for (int i = 0; i < listFields.length; i++) {
        auxList[listFields[i]] = "Nenhum";
      }
      if (g.edit == true) {
        model = g.getDynamicModel();

        if (model.filesUrl == null || model.filesUrl.length < 1) {
          model.filesUrl = {
            "img1": "",
          };
        }
        if (model.filesUrl["img1"] != "") {
          controlImageNetwork = true;
          model.filesBase64Up = {};
        } else {
          model.filesBase64Up = {
            "img1": "",
          };
        }

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
          funcG("devices", model.docsRelations["list_devices"]);
          funcG("sensors", model.docsRelations["list_sensors"]);
          funcG("actuators", model.docsRelations["list_actuators"]);
        }
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
                  decoration: commonInputDecoration(context: context, labelText: "Nome do Equipamento"),
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
              Padding(
                padding: EdgeInsets.only(bottom: heightValue),
                child: TextFormField(
                  autovalidateMode: validate,
                  focusNode: codeFocusNode,
                  cursorColor: themesCB.cursorColor,
                  initialValue: g.edit == true ? model.code : "",
                  keyboardType: TextInputType.text,
                  decoration: commonInputDecoration(context: context, labelText: "Código de Fábrica"),
                  style: TextStyle(
                    fontSize: 20,
                    color: themesCB.highlightColor,
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      FocusScope.of(context).requestFocus(codeFocusNode);
                      return 'Campo em branco';
                    }
                    return null;
                  },
                  onSaved: (val) {
                    model.code = val;
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
                padding: EdgeInsets.only(bottom: heightValue),
                child: TextFormField(
                  autovalidateMode: validate,
                  focusNode: brandFocusNode,
                  cursorColor: themesCB.cursorColor,
                  initialValue: g.edit == true ? model.brand : "",
                  keyboardType: TextInputType.text,
                  decoration: commonInputDecoration(context: context, labelText: "Marca"),
                  style: TextStyle(
                    fontSize: 20,
                    color: themesCB.highlightColor,
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      FocusScope.of(context).requestFocus(brandFocusNode);
                      return 'Campo em branco';
                    }
                    return null;
                  },
                  onSaved: (val) {
                    model.brand = val;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: heightValue),
                child: TextFormField(
                  autovalidateMode: validate,
                  focusNode: modelFocusNode,
                  cursorColor: themesCB.cursorColor,
                  initialValue: g.edit == true ? model.model : "",
                  keyboardType: TextInputType.text,
                  decoration: commonInputDecoration(context: context, labelText: "Modelo"),
                  style: TextStyle(
                    fontSize: 20,
                    color: themesCB.highlightColor,
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      FocusScope.of(context).requestFocus(modelFocusNode);
                      return 'Campo em branco';
                    }
                    return null;
                  },
                  onSaved: (val) {
                    model.model = val;
                  },
                ),
              ),
              Container(
                width: double.infinity,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Data de fabricação: ",
                            style: TextStyle(
                              fontSize: 16,
                              color: themesCB.fontColor,
                            ),
                          ),
                          TextButton(
                              onPressed: () async {
                                selectedDate = await selectDate(
                                  context: context,
                                  selectedDate: DateTime.parse(model.dateOfManufacture),
                                );
                                setState(() {
                                  model.dateOfManufacture = selectedDate.toString();
                                });
                              },
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.calendar_today_outlined,
                                    color: themesCB.iconOffColor,
                                  ),
                                  Text(
                                    "${formatterDate.format(DateTime.parse(model.dateOfManufacture))}",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: themesCB.highlightColor,
                                    ),
                                  ),
                                ],
                              ))
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Data da compra: ",
                            style: TextStyle(
                              fontSize: 16,
                              color: themesCB.fontColor,
                            ),
                          ),
                          TextButton(
                              onPressed: () async {
                                selectedDate = await selectDate(
                                  context: context,
                                  selectedDate: DateTime.parse(model.datePurchase),
                                );
                                setState(() {
                                  model.datePurchase = selectedDate.toString();
                                });
                              },
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.calendar_today_outlined,
                                    color: themesCB.iconOffColor,
                                  ),
                                  Text(
                                    "${formatterDate.format(DateTime.parse(model.datePurchase))}",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: themesCB.highlightColor,
                                    ),
                                  ),
                                ],
                              ))
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Data da instalação: ",
                            style: TextStyle(
                              fontSize: 16,
                              color: themesCB.fontColor,
                            ),
                          ),
                          TextButton(
                              onPressed: () async {
                                selectedDate = await selectDate(
                                  context: context,
                                  selectedDate: DateTime.parse(model.dateOfInstallation),
                                );
                                setState(() {
                                  model.dateOfInstallation = selectedDate.toString();
                                });
                              },
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.calendar_today_outlined,
                                    color: themesCB.iconOffColor,
                                  ),
                                  Text(
                                    "${formatterDate.format(DateTime.parse(model.dateOfInstallation))}",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: themesCB.highlightColor,
                                    ),
                                  ),
                                ],
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
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
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Foto do Equipamento: ",
                        style: TextStyle(
                          fontFamily: themesCB.fontFamily,
                          color: themesCB.fontColor,
                        ),
                      ),
                      buttonColor(
                        context: context,
                        func: () async {
                          FilePickerResult result = await FilePicker.platform.pickFiles(
                            type: FileType.image,
                            // allowedExtensions: ['jpg', 'jpeg', 'png'],
                          );
                          if (result != null) {
                            if (kIsWeb == true) {
                              var file = result.files.first.bytes;
                              setState(() {
                                controlImageNetwork = false;
                                model.filesBase64Up["img1"] = "data:image/png;base64,${base64.encode(file)}";
                              });
                            } else {
                              File file = File(result.files.single.path);
                              setState(() {
                                controlImageNetwork = false;
                                model.filesBase64Up["img1"] = "data:image/png;base64,${base64.encode(file.readAsBytesSync())}";
                              });
                            }
                          } else {
                            showDialog(
                              context: context,
                              barrierDismissible: false,
                              builder: (BuildContext context) {
                                return DialogMessage(
                                  message: "Escolha um formato válido de imagem (jpg ou png).",
                                );
                              },
                            );
                          }
                        },
                        widthx: 150,
                        heigthx: 40,
                        backColor: themesCB.backColor2,
                        borderColor: themesCB.borderColor,
                        textColor: themesCB.fontColor,
                        text: "Selecionar Imagem",
                        textSize: 14.0,
                        textWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: themesCB.backColor,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      border: Border.all(color: themesCB.borderColor, width: 0.5),
                      boxShadow: [themesCB.shadow],
                    ),
                    child: model.filesBase64Up["img1"] == ""
                        ? Center(
                            child: Icon(
                              Icons.image_not_supported_outlined,
                              color: themesCB.iconOffColor,
                            ),
                          )
                        : Column(
                            children: [
                              controlImageNetwork == false
                                  ? Image.memory(
                                      base64Decode("${model.filesBase64Up['img1']}".replaceAll("data:image/png;base64,", "")),
                                    )
                                  : Image.network(model.filesUrl['img1']),
                              IconButton(
                                  icon: Icon(
                                    IconsLinear.trash,
                                    color: themesCB.iconOffColor,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      model.filesBase64Up["img1"] = "";
                                      controlImageNetwork = false;
                                    });
                                  }),
                            ],
                          ),
                  ),
                ],
              ),
              SizedBox(
                height: heightValue * 2,
              ),
              Column(
                children: [
                  Text(
                    "Relacionamentos: ",
                    style: themesCB.boldStyleText,
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
                        "Setores: ",
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
                                style: TextStyle(color: themesCB.highlightColor),
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
                                      style: themesCB.boldHighLightStyleText,
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
                                            style: themesCB.regularStyleText,
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
                      Text(
                        "Dispositivos: ",
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
                                style: TextStyle(color: themesCB.highlightColor),
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
                                    child: Text(
                                      value,
                                      style: themesCB.boldHighLightStyleText,
                                    ),
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
                                            "${g.auxListAdd["devices"][index]} \nID: ${g.auxListAddId["devices"][index]}",
                                            style: themesCB.regularStyleText,
                                          ),
                                        ),
                                      ),
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
                      Text(
                        "Sensores: ",
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
                                style: TextStyle(color: themesCB.highlightColor),
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
                                    child: Text(
                                      value,
                                      style: themesCB.boldHighLightStyleText,
                                    ),
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
                                            "${g.auxListAdd["sensors"][index]} \nID: ${g.auxListAddId["sensors"][index]}",
                                            style: themesCB.regularStyleText,
                                          ),
                                        ),
                                      ),
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
                      Text(
                        "Atuadores: ",
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
                                style: TextStyle(color: themesCB.highlightColor),
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
                                    child: Text(
                                      value,
                                      style: themesCB.boldHighLightStyleText,
                                    ),
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
                                            "${g.auxListAdd["actuators"][index]} \nID: ${g.auxListAddId["actuators"][index]}",
                                            style: themesCB.regularStyleText,
                                          ),
                                        ),
                                      ),
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
                ],
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
                      g.edit = false;
                      Navigator.of(context).pushReplacementNamed(routes.routesAppInventory['stageArea']);
                      routes.setForwardRoute(routes.routesAppInventory['stageArea']);
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

                        model.docsRelationsIds["list_sectors"] = g.auxListAddId["sectors"];
                        model.docsRelationsIds["list_devices"] = g.auxListAddId["devices"];
                        model.docsRelationsIds["list_sensors"] = g.auxListAddId["sensors"];
                        model.docsRelationsIds["list_actuators"] = g.auxListAddId["actuators"];

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
                            Navigator.of(context).pushReplacementNamed(routes.routesAppInventory['stageArea']);
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
