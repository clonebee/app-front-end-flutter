import 'dart:convert';
import 'dart:io';
import 'package:cbmes_v1/provider/global.provider.dart';
import 'package:cbmes_v1/provider/routes.Provider.dart';
import 'package:cbmes_v1/models/manufacture/products.models.dart';
import 'package:cbmes_v1/provider/themes/themes.provider.dart';
import 'package:cbmes_v1/themes/icons/IconsHawcons.dart';
import 'package:cbmes_v1/themes/icons/IconsLinear.dart';
import 'package:cbmes_v1/ui/globalWidgets/buttons/button_color.dart';
import 'package:cbmes_v1/ui/globalWidgets/buttons/button_primary.dart';
import 'package:cbmes_v1/ui/globalWidgets/buttons/button_secondary.dart';
import 'package:cbmes_v1/ui/globalWidgets/decoration/common_input_decoration.dart';
import 'package:cbmes_v1/ui/globalWidgets/dialog_message.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
import 'package:cbmes_v1/provider/apiProvider.dart';
import 'package:flutter/material.dart';

class ProductsForm extends StatefulWidget {
  @override
  _ProductsFormState createState() => _ProductsFormState();
}

class _ProductsFormState extends State<ProductsForm> {
  @override
  void initState() {
    super.initState();
  }

  AutovalidateMode validate = AutovalidateMode.onUserInteraction;
  var model = new ProductsModel(
    sId: null,
    name: '',
    code: '',
    description: '',
    favorite: false,
    filesBase64Up: {
      "img1": "",
    },
    situation: true,
    docsRelations: null,
    docsRelationsIds: {},
  );
  bool init = true;
  bool init2 = true;
  bool controlImageNetwork = false;

  final _formKey = GlobalKey<FormState>();
  String dropdownValue = 'Ativado';
  double heightValue = 15.0;

  FocusNode nameFocusNode = FocusNode();
  FocusNode codeFocusNode = FocusNode();
  FocusNode descriptionFocusNode = FocusNode();

  Map<String, String> auxList = {"": ""};
  List<String> listFields = ["recipes", "geometries"];

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
        local: ["manufacture", "manufacture"],
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

          funcG("recipes", model.docsRelations["list_recipes"]);
          funcG("geometries", model.docsRelations["list_geometries"]);
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
                  decoration: commonInputDecoration(context: context, labelText: "Nome do Produto"),
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
                            style: themesCB.normalHighLightStyleText,
                          ),
                          value: true,
                        ),
                        DropdownMenuItem(
                          child: Text(
                            'Desativado',
                            style: themesCB.normalHighLightStyleText,
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
                        "Receitas: ",
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
                        child: g.statusDropdownButton["recipes"] != "ok"
                            ? CupertinoActivityIndicator()
                            : DropdownButton<String>(
                                value: auxList["recipes"],
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
                                    auxList["recipes"] = newValue;
                                  });
                                },
                                items: g.listKeyName["recipes"].map<DropdownMenuItem<String>>((String value) {
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
                          List h = g.auxListAdd["recipes"];
                          if (h.contains(auxList["recipes"]) == false && auxList["recipes"] != "Nenhum") {
                            h.add(auxList["recipes"]);
                            g.auxListAdd["recipes"] = h;

                            var ii = g.listKeyName["recipes"].indexWhere((element) => element == auxList["recipes"]);

                            List hId = g.auxListAddId["recipes"];
                            hId.add(g.listKeyId["recipes"][ii]);

                            g.auxListAddId["recipes"] = hId;

                            setState(() {});
                          }
                        },
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: SingleChildScrollView(
                      // physics: ScrollPhysics(),
                      child: Column(
                        children: [
                          Container(
                            child: MediaQuery.removePadding(
                              removeTop: true,
                              removeBottom: true,
                              context: context,
                              child: ListView.builder(
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: g.auxListAdd["recipes"].length,
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
                                                "${g.auxListAdd["recipes"][index]} \nID: ${g.auxListAddId["recipes"][index]}",
                                                style: themesCB.regularStyleText,
                                              ),
                                            ),
                                          ),
                                          IconButton(
                                            padding: EdgeInsets.all(0),
                                            icon: Icon(IconsHawcons.icon_27_trash_can),
                                            onPressed: () {
                                              List h = g.auxListAdd["recipes"];
                                              h.remove(g.auxListAdd["recipes"][index]);
                                              g.auxListAdd["recipes"] = h;

                                              List hId = g.auxListAddId["recipes"];
                                              hId.remove(g.auxListAddId["recipes"][index]);
                                              g.auxListAddId["recipes"] = hId;

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
                        "Geometrias: ",
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
                        child: g.statusDropdownButton["geometries"] != "ok"
                            ? CupertinoActivityIndicator()
                            : DropdownButton<String>(
                                value: auxList["geometries"],
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
                                    auxList["geometries"] = newValue;
                                  });
                                },
                                items: g.listKeyName["geometries"].map<DropdownMenuItem<String>>((String value) {
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
                          List h = g.auxListAdd["geometries"];
                          if (h.contains(auxList["geometries"]) == false && auxList["geometries"] != "Nenhum") {
                            h.add(auxList["geometries"]);
                            g.auxListAdd["geometries"] = h;

                            var ii = g.listKeyName["geometries"].indexWhere((element) => element == auxList["geometries"]);

                            List hId = g.auxListAddId["geometries"];
                            hId.add(g.listKeyId["geometries"][ii]);

                            g.auxListAddId["geometries"] = hId;

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
                              itemCount: g.auxListAdd["geometries"].length,
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
                                            "${g.auxListAdd["geometries"][index]} \nID: ${g.auxListAddId["geometries"][index]}",
                                            style: themesCB.regularStyleText,
                                          ),
                                        ),
                                      ),
                                      IconButton(
                                        padding: EdgeInsets.all(0),
                                        icon: Icon(IconsHawcons.icon_27_trash_can),
                                        onPressed: () {
                                          List h = g.auxListAdd["geometries"];
                                          h.remove(g.auxListAdd["geometries"][index]);
                                          g.auxListAdd["geometries"] = h;

                                          List hId = g.auxListAddId["geometries"];
                                          hId.remove(g.auxListAddId["geometries"][index]);
                                          g.auxListAddId["geometries"] = hId;

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
                      Navigator.of(context).pushReplacementNamed(routes.routesAppManufacture['stageArea']);
                      routes.setForwardRoute(routes.routesAppManufacture['stageArea']);
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

                        model.docsRelationsIds["list_recipes"] = g.auxListAddId["recipes"];
                        model.docsRelationsIds["list_geometries"] = g.auxListAddId["geometries"];

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
                            Navigator.of(context).pushReplacementNamed(routes.routesAppManufacture['stageArea']);
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
