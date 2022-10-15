import 'package:cbmes_v1/models/manufacture/recipes.models.dart';
import 'package:cbmes_v1/provider/global.provider.dart';
import 'package:cbmes_v1/provider/routes.Provider.dart';
import 'package:cbmes_v1/provider/themes/themes.provider.dart';
import 'package:cbmes_v1/themes/icons/IconsLinear.dart';
import 'package:cbmes_v1/ui/globalWidgets/buttons/button_primary.dart';
import 'package:cbmes_v1/ui/globalWidgets/buttons/button_secondary.dart';
import 'package:cbmes_v1/ui/globalWidgets/buttons/button_tertiary.dart';
import 'package:cbmes_v1/ui/globalWidgets/decoration/common_input_decoration.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:cbmes_v1/provider/apiProvider.dart';
import 'package:flutter/material.dart';

class RecipesForm extends StatefulWidget {
  @override
  _RecipesFormState createState() => _RecipesFormState();
}

class _RecipesFormState extends State<RecipesForm> {
  @override
  void initState() {
    super.initState();
  }

  AutovalidateMode validate = AutovalidateMode.onUserInteraction;
  var model = RecipesModel(
    sId: null,
    name: '',
    code: '',
    qty: {},
    description: '',
    favorite: false,
    filesBase64Up: {
      "img1": "",
    },
    situation: true,
  );
  bool init = true;
  bool boxSphereControl = true;

  int qtyIngredients = 1;

  final _formKey = GlobalKey<FormState>();
  double heightValue = 15.0;

  Map<int, String> auxMapName = {
    0: "Nenhum",
  };

  Map<String, String> mapRawMaterialsNameId = {"Nenhum": "Nenhum"};
  Map<String, String> mapRawMaterialsIdUnit = {"Nenhum": "unid"};
  Map<String, double> mapRawMaterialsIdPricePerUnit = {"Nenhum": 0.0};

  FocusNode nameFocusNode = FocusNode();
  FocusNode codeFocusNode = FocusNode();
  FocusNode descriptionFocusNode = FocusNode();

  Map<int, TextEditingController> qtyTextController = {0: TextEditingController()};
  Map<int, FocusNode> qtyFocusNode = {0: FocusNode()};

  bool controlImageNetwork = false;

  @override
  Widget build(BuildContext context) {
    Routes routes = Provider.of<Routes>(context);
    GlobalProvider g = Provider.of<GlobalProvider>(context);
    APIProvider apiProvider = Provider.of<APIProvider>(context);
    ThemesCB themesCB = Provider.of<ThemesCB>(context);

    if (init == true) {
      init = false;

      //Para a primeira multiplicação
      qtyTextController[0].text = "0.0";

      g.getGlobalAll(
        context: context,
        apiRoute: 'manufacture/raw-materials',
        typeClass: "raw-materials",
        id: '''?filter_project=['_id','name','unit','price_per_unit']''',
        func: () {
          if (g.allDocuments[0] != "1" && g.allDocuments[0] != "2") {
            for (var j in g.allDocuments) {
              mapRawMaterialsNameId[j.name] = j.sId;
              mapRawMaterialsIdUnit[j.sId] = j.unit;
              if (j.pricePerUnit == null) {
                mapRawMaterialsIdPricePerUnit[j.sId] = 0.0;
              } else {
                mapRawMaterialsIdPricePerUnit[j.sId] = j.pricePerUnit;
              }
            }
          }
        },
      );
      if (g.edit == true) {
        model = g.getDynamicModel();
        qtyIngredients = model.qty.length;
        List h1 = model.qty.keys.toList();
        List h2 = model.qty.values.toList();

        for (int i = 0; i < qtyIngredients; i++) {
          auxMapName[i] = h1[i];
          qtyTextController[i] = TextEditingController();
          qtyFocusNode[i] = FocusNode();
          qtyTextController[i].text = h2[i].toString();
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
                  decoration: commonInputDecoration(context: context, labelText: "Nome da Receita"),
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
              SizedBox(
                height: heightValue,
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: qtyIngredients,
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
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Ingrediente ${index + 1}",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
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
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Matéria-prima: ",
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
                                    child: mapRawMaterialsNameId.length < 2
                                        ? CupertinoActivityIndicator()
                                        : DropdownButton<String>(
                                            value: auxMapName[index],
                                            isExpanded: true,
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
                                                auxMapName[index] = newValue;
                                              });
                                            },
                                            items: mapRawMaterialsNameId.keys.map<DropdownMenuItem<String>>((String value) {
                                              return DropdownMenuItem<String>(
                                                value: mapRawMaterialsNameId[value],
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
                              Padding(
                                padding: EdgeInsets.only(bottom: heightValue),
                                child: TextFormField(
                                  autovalidateMode: validate,
                                  controller: qtyTextController[index],
                                  focusNode: qtyFocusNode[index],
                                  cursorColor: themesCB.cursorColor,
                                  // initialValue: g.edit == true ? model.qty[auxListName[index]].toString() : "",
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    labelText: "Quantidade",
                                    suffixText: mapRawMaterialsIdUnit[auxMapName[index]],
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: themesCB.borderColor, width: 0.5),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: themesCB.borderColor, width: 0.5),
                                    ),
                                    fillColor: Colors.transparent,
                                    labelStyle: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontFamily: themesCB.fontFamily,
                                      fontSize: 16,
                                      color: themesCB.fontColor,
                                    ),
                                    errorStyle: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontFamily: themesCB.fontFamily,
                                      fontSize: 16,
                                      color: themesCB.fontColor,
                                    ),
                                  ),
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: themesCB.highlightColor,
                                  ),
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      FocusScope.of(context).requestFocus(qtyFocusNode[index]);
                                      return 'Campo em branco';
                                    }
                                    return null;
                                  },
                                  onSaved: (val) {
                                    if (val == null || val == "") {
                                      model.qty[auxMapName[index]] = 0;
                                    } else {
                                      model.qty[auxMapName[index]] = double.parse(val);
                                    }
                                  },
                                ),
                              ),
                              mapRawMaterialsIdPricePerUnit[auxMapName[index]] == null
                                  ? CupertinoActivityIndicator()
                                  : Container(
                                      child: RichText(
                                        text: TextSpan(
                                          style: DefaultTextStyle.of(context).style,
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: "Total: ",
                                              style: themesCB.normalHighLightStyleText,
                                            ),
                                            TextSpan(
                                              text:
                                                  "${NumberFormat.simpleCurrency(locale: 'pt_BR').format(mapRawMaterialsIdPricePerUnit[auxMapName[index]] * double.parse(qtyTextController[index].text)).toString()}",
                                              style: themesCB.normalHighLightStyleText,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: IconButton(
                                      icon: Icon(
                                        IconsLinear.trash,
                                        color: themesCB.iconOffColor,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          //Remove
                                          qtyTextController.remove(index);
                                          qtyFocusNode.remove(index);
                                          auxMapName.remove(index);
                                          qtyIngredients -= 1;

                                          //Restart index
                                          List h1 = auxMapName.values.toList();
                                          List<TextEditingController> h2 = qtyTextController.values.toList();
                                          List<FocusNode> h3 = qtyFocusNode.values.toList();

                                          auxMapName = {};
                                          qtyTextController = {};
                                          qtyFocusNode = {};

                                          for (int i = 0; i < h1.length; i++) {
                                            auxMapName[i] = h1[i];
                                          }
                                          for (int i = 0; i < h2.length; i++) {
                                            qtyTextController[i] = h2[i];
                                            qtyFocusNode[i] = h3[i];
                                          }
                                        });
                                      }),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              SizedBox(
                height: heightValue,
              ),
              buttonTertiary(
                context: context,
                func: () {
                  setState(() {
                    //qtyIngredients começa em 1 e não em 0
                    auxMapName[qtyIngredients] = "Nenhum";
                    qtyFocusNode[qtyIngredients] = FocusNode();
                    qtyTextController[qtyIngredients] = TextEditingController();
                    qtyTextController[qtyIngredients].text = "0.0";
                    //Deve ser a última linha de código no add novo ingrediente
                    qtyIngredients += 1;
                  });
                },
                width: 300,
                text: "Adicionar Novo Ingrediente",
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

                        //Reordenando em ordem de add -> pq a ordem importa na Receita
                        var h = model.qty;
                        model.qty = {};
                        for (int i = 0; i < h.length; i++) {
                          model.qty[auxMapName[i]] = h[auxMapName[i]];
                        }

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
