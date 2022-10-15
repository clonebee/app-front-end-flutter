import 'dart:convert';
import 'dart:core';
import 'dart:io';
import 'package:cbmes_v1/provider/global.provider.dart';
import 'package:cbmes_v1/provider/routes.Provider.dart';
import 'package:cbmes_v1/models/inventory/actuators.models.dart';
import 'package:cbmes_v1/provider/themes/themes.provider.dart';
import 'package:cbmes_v1/themes/icons/IconsLinear.dart';
import 'package:cbmes_v1/ui/globalWidgets/buttons/button_color.dart';
import 'package:cbmes_v1/ui/globalWidgets/buttons/button_primary.dart';
import 'package:cbmes_v1/ui/globalWidgets/buttons/button_secondary.dart';
import 'package:cbmes_v1/ui/globalWidgets/dateAndTime.dart';
import 'package:cbmes_v1/ui/globalWidgets/decoration/common_input_decoration.dart';
import 'package:cbmes_v1/ui/globalWidgets/dialog_message.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:cbmes_v1/provider/apiProvider.dart';
import 'package:flutter/material.dart';

class ActuatorsForm extends StatefulWidget {
  @override
  _ActuatorsFormState createState() => _ActuatorsFormState();
}

class _ActuatorsFormState extends State<ActuatorsForm> {
  @override
  void initState() {
    super.initState();
  }

  AutovalidateMode validate = AutovalidateMode.onUserInteraction;
  FocusNode nameFocusNode = FocusNode();
  FocusNode codeFocusNode = FocusNode();
  FocusNode brandFocusNode = FocusNode();
  FocusNode modelFocusNode = FocusNode();
  FocusNode descriptionFocusNode = FocusNode();

  bool controlImageNetwork = false;
  var model = new ActuatorsModel(
    sId: null,
    name: "",
    brand: "",
    code: "",
    model: "",
    favorite: false,
    situation: true,
    powerSupply: "220VAC",
    powerSupplyType: "Monofásica",
    dateOfInstallation: "${DateTime.now()}",
    dateOfManufacture: "${DateTime.now()}",
    datePurchase: "${DateTime.now()}",
    description: "",
    filesBase64Up: {
      "img1": "",
    },
  );
  bool init = true;

  final _formKey = GlobalKey<FormState>();
  String dropdownValue = 'Ativado';
  double heightValue = 15.0;

  DateTime selectedDate = DateTime.now();
  var formatterDate = new DateFormat('dd/MM/yyyy');

  @override
  Widget build(BuildContext context) {
    Routes routes = Provider.of<Routes>(context);
    GlobalProvider g = Provider.of<GlobalProvider>(context);
    APIProvider apiProvider = Provider.of<APIProvider>(context);
    ThemesCB themesCB = Provider.of<ThemesCB>(context);

    if (init == true) {
      init = false;

      if (g.edit == true) {
        model = g.getDynamicModel();

        if (model.powerSupply == null) {
          model.powerSupply = '220VAC';
        }
        if (model.powerSupplyType == null) {
          model.powerSupplyType = 'Monofásica';
        }
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
      }
    }

    if (g.edit == true) {
      model = g.getDynamicModel();
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
                  decoration: commonInputDecoration(context: context, labelText: "Nome do Atuador"),
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
              SizedBox(
                height: heightValue,
              ),
              Row(
                children: [
                  Text(
                    "Tipo de Tensão\nde Alimentação: ",
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
                    child: DropdownButton<String>(
                      value: model.powerSupplyType,
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
                          model.powerSupplyType = newValue;
                        });
                      },
                      items: [
                        'Contínua',
                        'Monofásica',
                        'Bifásica',
                        'Trifásica',
                      ].map<DropdownMenuItem<String>>((String value) {
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
                ],
              ),
              SizedBox(
                height: heightValue,
              ),
              Row(
                children: [
                  Text(
                    "Tensão de Alimentação: ",
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
                    child: DropdownButton<String>(
                      value: model.powerSupply,
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
                          model.powerSupply = newValue;
                        });
                      },
                      items: [
                        '127VAC',
                        '220VAC',
                        '380VAC',
                        '440VAC',
                        '1,8VDC',
                        '2,5VDC',
                        '3,3VDC',
                        '5VDC',
                        '10VDC',
                        '12VDC',
                        '18VDC',
                        '24VDC',
                        '32VDC',
                        '48VDC',
                        '96VDC',
                      ].map<DropdownMenuItem<String>>((String value) {
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
                ],
              ),
              SizedBox(
                height: heightValue,
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
                padding: EdgeInsets.only(bottom: heightValue),
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
                        "Foto do Atuador: ",
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
                                    model.filesBase64Up["img1"] = "";
                                    setState(() {});
                                  }),
                            ],
                          ),
                  ),
                ],
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
