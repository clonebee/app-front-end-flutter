import 'package:cbmes_v1/provider/apiProvider.dart';
import 'package:cbmes_v1/provider/global.provider.dart';
import 'package:cbmes_v1/provider/jsonx/jsonx.provider.dart';
import 'package:cbmes_v1/provider/routes.Provider.dart';
import 'package:cbmes_v1/models/patterns/roadmap.models.dart';
import 'package:cbmes_v1/provider/themes/themes.provider.dart';
import 'package:cbmes_v1/themes/icons/IconsHawcons.dart';
import 'package:cbmes_v1/ui/globalWidgets/buttons/button_primary.dart';
import 'package:cbmes_v1/ui/globalWidgets/buttons/button_secondary.dart';
import 'package:cbmes_v1/ui/globalWidgets/decoration/common_input_decoration.dart';
import 'package:cbmes_v1/ui/globalWidgets/decoration/primaryBoxDecoration.dart';
import 'package:cbmes_v1/ui/globalWidgets/global_scaffoldKey.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:quiver/iterables.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RoadMapForm extends StatefulWidget {
  @override
  _RoadMapFormState createState() => _RoadMapFormState();
}

class _RoadMapFormState extends State<RoadMapForm> {
  @override
  void initState() {
    super.initState();
  }

  var model = new RoadMapModel(
    sId: null,
    name: "",
    favorite: false,
    situation: true,
    filesBase64Up: {
      "chart": "",
    },
    filesUrl: {
      "chart": "",
    },
    docsRelations: null,
    docsRelationsIds: {},
  );
  var snackbar = GlobalScaffold();

  bool updateGraph = false;

  AutovalidateMode validate = AutovalidateMode.onUserInteraction;
  FocusNode nameFocusNode = FocusNode();

  final _formKey = GlobalKey<FormState>();
  final _formKey2 = GlobalKey<FormState>();
  bool init = true;
  bool initEdit = true;
  bool initEdit2 = false;
  bool auxCreate = true;
  int auxCount = 1;

  bool next = false;

  Map<String, String> auxList = {
    "products": "Nenhum",
    "taskName": "Nenhum",
    "taskName0": "Nenhum",
    "resources": "Nenhum",
  };
  Map jsonx;
  // List<String> auxTaskname = ["Nenhum"];
  // List<int> tasknameHashCode = [];
  List<String> listFields = ["products", "resources"];
  double heightValue = 15.0;
  String svg = "";

  Map<String, bool> auxAddIconResources = {};

  @override
  Widget build(BuildContext context) {
    GlobalProvider g = Provider.of<GlobalProvider>(context);
    JsonX jx = Provider.of<JsonX>(context);
    jx.apiRoute = "patterns/roadmaps-data";
    Routes routes = Provider.of<Routes>(context);
    APIProvider apiProvider = Provider.of<APIProvider>(context, listen: false);
    ThemesCB themesCB = Provider.of<ThemesCB>(context);

    if (init == true) {
      init = false;
      apiProvider.objResponse = {
        "_id": model.sId,
        "files_url": {
          "chart": model.filesUrl["chart"],
        }
      };
      jx.clearAll();

      g.getListKey(
        context: context,
        func: () {},
        local: ["manufacture", "patterns"],
        listFields: listFields,
        key: ["\"_id\"", "\"name\""],
      );

      for (int i = 0; i < listFields.length; i++) {
        jx.auxListRe[listFields[i]] = [];
        jx.auxListReId[listFields[i]] = [];
        g.statusDropdownButton[listFields[i]] = "";
      }
      // model.taskName = ["Nenhum"];
      // model.percentageOfCompletionForDispatch = ["Nenhum"];
      // model.description = ["Nenhum"];

      jx.allTasks = ["Nenhum"];
      jx.auxTaskName["taskName1"] = "";
      jx.auxTaskDescription["taskDescription1"] = "";
      jx.auxTaskPercent["taskPercent1"] = 100.0;
      jx.auxTaskScaleRatio["scaleRatio1"] = 1.0;

      jx.auxListRe["resources1"] = [];
      jx.auxListReId["resources1"] = [];
      jx.auxListReQty["resources1"] = [];
      jx.auxListReSetup["resources1"] = [];
      jx.auxListTaskPre["taskName1"] = [];
      auxList["taskName1"] = "Nenhum";
    }

    if (g.edit == true && initEdit == true) {
      initEdit = false;
      initEdit2 = true;
      model = g.getDynamicModel();

      Map gh = model.docsRelations["list_products"][0];
      model.product = gh["name"];
      model.productId = gh["_id"];
      auxList["products"] = gh["name"];

      jx.allTasks = List<String>.from(model.scriptOrder);
      jx.qtyTask = jx.allTasks.length;

      for (var e in jx.allTasks) {
        var pp = model.roadMap[e]["quantity_per_hour"].toString();

        if (pp == "{}" || pp == "null") {
          auxAddIconResources[e] = true;
        }
        e = e.replaceAll("T", "");
        jx.elementTask += [int.parse(e)];
      }

      // bc.allTasks.insert(0, "T0");

      for (int ii = 1; ii < jx.allTasks.length + 2; ii++) {
        jx.auxListRe["resources$ii"] = [];
        jx.auxListReId["resources$ii"] = [];
        jx.auxListReQty["resources$ii"] = [];
        jx.auxListReSetup["resources$ii"] = [];
      }

      List idEq = [];
      List nameEq = [];
      for (var u in model.docsRelations["list_resources"]) {
        idEq += [u["_id"]];
        nameEq += [u["name"]];
      }

      for (int i = 0; i < jx.allTasks.length; i++) {
        jx.auxTaskDescription["taskDescription${jx.elementTask[i]}"] = model.roadMap[jx.allTasks[i]]["description"];
        jx.auxTaskPercent["taskPercent${jx.elementTask[i]}"] = model.roadMap[jx.allTasks[i]]["percentage_of_completion_for_dispatch"] * 100.0;
        jx.auxTaskScaleRatio["scaleRatio${jx.elementTask[i]}"] = model.roadMap[jx.allTasks[i]]["scale_ratio"];
        jx.auxListTaskPre["taskName${jx.elementTask[i]}"] = List<String>.from(model.roadMap[jx.allTasks[i]]["predecessor_task"]);
        jx.auxTaskName["taskName${jx.elementTask[i]}"] = model.roadMap[jx.allTasks[i]]["task_name"];
        auxList["taskName${jx.elementTask[i]}"] = "Nenhum";
        // bc.auxListEqQty["resources${i + 1}"] = [];
        // bc.auxListEqId["resources${i + 1}"] = [];

        for (var u in model.roadMap[jx.allTasks[i]]["quantity_per_hour"].keys) {
          // bc.auxListEqId["resources${i + 1}"] = [];
          jx.auxListReId["resources${jx.elementTask[i]}"] += [u];
          var ii = idEq.indexWhere((element) => element == u);
          jx.auxListRe["resources${jx.elementTask[i]}"] += [nameEq[ii]];
        }
        for (var u in model.roadMap[jx.allTasks[i]]["quantity_per_hour"].values) {
          // bc.auxListEqQty["resources${i + 1}"] = [];
          jx.auxListReQty["resources${jx.elementTask[i]}"] += [u.toString()];
        }
        for (var u in model.roadMap[jx.allTasks[i]]["setup"].values) {
          // bc.auxListEqQty["resources${i + 1}"] = [];
          jx.auxListReSetup["resources${jx.elementTask[i]}"] += [u.toString()];
        }
      }

      jx.allTasks.insert(0, "Nenhum");
      auxCreate = false;
      apiProvider.objResponse = {
        "_id": model.sId,
        "files_url": {
          "chart": model.filesUrl["chart"],
        }
      };
      // apiProvider.objResponse["_id"] = model.sId;
      // apiProvider.objResponse["files_url"]["chart"] = model.filesUrl["chart"];
      // bc.elementTask = [0];
    }

    formatAndSend({@required Function func}) async {
      jx.qtyTask += 1;
      if (g.edit == true) {
        jx.allTasks += ["T${jx.qtyTask}"];
      } else {
        jx.allTasks += ["T${jx.qtyTask - 1}"];
      }
      jx.elementTask.add(jx.qtyTask);

      // if (g.edit == true) {
      //   jx.qtyTask += -1;
      // }

      auxAddIconResources["T${jx.qtyTask}"] = true;

      jx.auxListRe["resources${jx.qtyTask}"] = [];
      jx.auxListReId["resources${jx.qtyTask}"] = [];
      jx.auxListReQty["resources${jx.qtyTask}"] = [];
      jx.auxListReSetup["resources${jx.qtyTask}"] = [];
      jx.auxListTaskPre["taskName${jx.qtyTask}"] = [];
      auxList["taskName${jx.qtyTask}"] = "Nenhum";
      // model.taskName = Set.of(model.taskName).toList();
      // model.description = Set.of(model.description).toList();
      // model.percentageOfCompletionForDispatch = Set.of(model.percentageOfCompletionForDispatch).toList();

      var l2 = jx.allTasks.length;

      // if (g.edit == true) {
      //   l1 -= 1;
      //   l2 -= 1;
      // }

      List<String> nAllTasks = [];
      for (var v in jx.allTasks) {
        nAllTasks += [v.replaceAll("T", "")];
      }

      Map<String, dynamic> reQty = {};
      Map<String, dynamic> reSetup = {};

      if (g.edit == true) {
        l2 = l2 - 1;
      }
      for (int i = 1; i < l2; i++) {
        reQty["resources${nAllTasks[i]}"] = {};
        reSetup["resources${nAllTasks[i]}"] = {};
        var c = zip([jx.auxListReId["resources${nAllTasks[i]}"], jx.auxListReQty["resources${nAllTasks[i]}"]]).toList();
        var d = zip([jx.auxListReId["resources${nAllTasks[i]}"], jx.auxListReSetup["resources${nAllTasks[i]}"]]).toList();
        for (int i2 = 0; i2 < c.length; i2++) {
          reQty["resources${nAllTasks[i]}"].addAll({c[i2][0].toString(): c[i2][1]});
          reSetup["resources${nAllTasks[i]}"].addAll({d[i2][0].toString(): d[i2][1]});
        }
      }
      Map roadMapx = {};

      for (int i = 1; i < l2; i++) {
        Map x = {
          jx.allTasks[i]: {
            "description": jx.auxTaskDescription["taskDescription${nAllTasks[i]}"],
            "percentage_of_completion_for_dispatch": jx.auxTaskPercent["taskPercent${nAllTasks[i]}"],
            "scale_ratio": jx.auxTaskScaleRatio["scaleRatio${nAllTasks[i]}"],
            "predecessor_task": jx.auxListTaskPre["taskName${nAllTasks[i]}"],
            "quantity_per_hour": reQty["resources${nAllTasks[i]}"],
            "setup": reSetup["resources${nAllTasks[i]}"],
            // "stage": 0,
            "task_name": jx.auxTaskName["taskName${nAllTasks[i]}"],
          }
        };
        roadMapx.addAll(x);
      }

      jsonx = {
        "_id": auxCreate == true ? null : apiProvider.objResponse["_id"],
        "favorite": false,
        "list_doc_relations": {},
        "docs_relations_ids": {
          "list_products": [model.productId],
        },
        "name": model.name,
        // "register_date": "18-03-2021 01:59:07",
        "roadmap": roadMapx,
        // "script_order": ["a", "b", "c", "d"],
        "situation": model.situation
      };

      // print(jsonx);

      //g.send()
      await g.send(
        id: g.edit == true ? '/${model.sId}' : '',
        model: jsonx,
        context: context,
        create: g.edit == true
            ? false
            : auxCreate == true
                ? true
                : false,
        withToken: true,
        apiRoute: '${g.apiRoute}',
        funcAcept: () {
          if (updateGraph == true) {
            updateGraph = false;
            jx.elementTask.removeLast();
            jx.allTasks.removeLast();
            jx.qtyTask -= 1;
          }

          g.global = true;
          g.edit = false;
          // g.allDocumentsStageArea = null;
          apiProvider.progress = "0";
          next = true;

          g.global = true;
          g.edit = false;
          apiProvider.progress = "0";
          func();
        },
        funcNoAcept: () {
          next = false;
          setState(() {});
        },
        message: auxCreate == false ? "Documento ATUALIZADO com sucesso." : "Documento CRIADO com sucesso.",
      );
      auxCreate = false;
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
                //########################################
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Produto: ",
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
                      child: g.statusDropdownButton["products"] != "ok"
                          ? CupertinoActivityIndicator()
                          : DropdownButton<String>(
                              isExpanded: true,
                              value: auxList["products"],
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
                                  auxList["products"] = newValue;
                                  model.product = newValue;

                                  var ii = g.listKeyName["products"].indexWhere((element) => element == auxList["products"]);
                                  model.productId = g.listKeyId["products"][ii];
                                });
                              },
                              items: g.listKeyName["products"].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                    ),
                    auxList["products"] == "Nenhum"
                        ? Text(
                            "*** Selecione um produto.",
                            style: TextStyle(color: Colors.red),
                          )
                        : Container(),
                  ],
                ),
                SizedBox(
                  height: heightValue,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: heightValue),
                  child: TextFormField(
                    autovalidateMode: validate,
                    focusNode: nameFocusNode,
                    cursorColor: themesCB.cursorColor,
                    initialValue: g.edit == true ? model.name : "",
                    keyboardType: TextInputType.text,
                    decoration: commonInputDecoration(context: context, labelText: "Nome do Roteiro"),
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
                    Expanded(
                      child: Container(
                        height: 45,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: themesCB.backColor,
                          border: Border.all(width: 0.5, color: themesCB.borderColor),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: DropdownButton<bool>(
                          isExpanded: true,
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
                    ),
                  ],
                ),
                SizedBox(
                  height: heightValue,
                ),
                //#####################################################
                jx.elementTask.length == null
                    ? Container()
                    : MediaQuery.removePadding(
                        removeTop: true,
                        removeBottom: true,
                        context: context,
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: jx.elementTask.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              margin: EdgeInsets.only(top: 20),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(5)),
                                  gradient: LinearGradient(colors: [
                                    Color.fromRGBO(237, 37, 36, 1),
                                    Color.fromRGBO(242, 113, 33, 1),
                                  ])),
                              child: jx.elementTask[index] == 0
                                  ? Container()
                                  : ExpansionTile(
                                      initiallyExpanded: g.edit == true ? false : true,
                                      iconColor: Colors.white,
                                      collapsedIconColor: Colors.white,
                                      maintainState: true,
                                      title: Container(
                                        child: Text(
                                          "T${jx.elementTask[index]}",
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
                                            boxShadow: [themesCB.shadow],
                                          ),
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(bottom: heightValue),
                                                child: TextFormField(
                                                  autovalidateMode: validate,
                                                  cursorColor: themesCB.cursorColor,
                                                  initialValue: g.edit == true ? jx.auxTaskName["taskName${jx.elementTask[index]}"] : "",
                                                  keyboardType: TextInputType.text,
                                                  decoration: commonInputDecoration(context: context, labelText: "Nome da tarefa de produção"),
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
                                                    jx.auxTaskName["taskName${jx.elementTask[index]}"] = val;
                                                  },
                                                ),
                                              ),
                                              Container(
                                                width: double.infinity,
                                                child: Text(
                                                  "A partir de qual porcentagem (de 0.0 a 100.0%) os itens produzidos nesta tarefa, podem ser enviados para a próxima tarefa de produção?",
                                                  textAlign: TextAlign.start,
                                                  style: themesCB.regularStyleText,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(bottom: heightValue),
                                                child: TextFormField(
                                                  autovalidateMode: validate,
                                                  cursorColor: themesCB.cursorColor,
                                                  initialValue: g.edit == true ? (jx.auxTaskPercent["taskPercent${jx.elementTask[index]}"] == null ? "100.0" : jx.auxTaskPercent["taskPercent${jx.elementTask[index]}"].toString()) : "100.0",
                                                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                                                  inputFormatters: [
                                                    FilteringTextInputFormatter.allow(RegExp('[0-9.,]+')),
                                                  ],
                                                  decoration: commonInputDecoration(context: context, labelText: "Porcentagem (%)"),
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
                                                    jx.auxTaskPercent["taskPercent${jx.elementTask[index]}"] = double.parse(val) / 100;
                                                  },
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(bottom: heightValue),
                                                child: TextFormField(
                                                  autovalidateMode: validate,
                                                  cursorColor: themesCB.cursorColor,
                                                  initialValue: g.edit == true
                                                      ? jx.auxTaskScaleRatio["scaleRatio${jx.elementTask[index]}"] == null
                                                          ? "1.0"
                                                          : jx.auxTaskScaleRatio["scaleRatio${jx.elementTask[index]}"].toString()
                                                      : "1.0",
                                                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                                                  inputFormatters: [
                                                    FilteringTextInputFormatter.allow(RegExp('[0-9.,]+')),
                                                  ],
                                                  decoration: commonInputDecoration(context: context, labelText: "Relação em escala"),
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
                                                    jx.auxTaskScaleRatio["scaleRatio${jx.elementTask[index]}"] = double.parse(val);
                                                  },
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(bottom: heightValue),
                                                child: TextFormField(
                                                  autovalidateMode: validate,
                                                  cursorColor: themesCB.cursorColor,
                                                  initialValue: g.edit == true ? jx.auxTaskDescription["taskDescription${jx.elementTask[index]}"] : "",
                                                  keyboardType: TextInputType.text,
                                                  decoration: commonInputDecoration(context: context, labelText: "Descrição"),
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
                                                    jx.auxTaskDescription["taskDescription${jx.elementTask[index]}"] = val;
                                                  },
                                                ),
                                              ),

                                              Divider(
                                                height: 20,
                                                thickness: 1,
                                                indent: 0,
                                                endIndent: 0,
                                              ),
                                              // Selecionar Equipamento ----------------------------------
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Recurso: ",
                                                    style: themesCB.regularStyleText,
                                                  ),
                                                  auxAddIconResources["T${jx.elementTask[index]}"] == true
                                                      ? Row(
                                                          children: [
                                                            Flexible(
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
                                                                            child: Text(
                                                                              value,
                                                                              style: themesCB.boldHighLightStyleText,
                                                                            ),
                                                                          );
                                                                        }).toList(),
                                                                      ),
                                                              ),
                                                            ),
                                                            auxAddIconResources["T${jx.elementTask[index]}"] == true
                                                                ? IconButton(
                                                                    icon: Icon(
                                                                      Icons.add,
                                                                      color: themesCB.iconOffColor,
                                                                    ),
                                                                    onPressed: () {
                                                                      if (auxAddIconResources["T${jx.elementTask[index]}"] == true) {
                                                                        if (jx.auxListRe["resources${jx.elementTask[index]}"] == null) {
                                                                          jx.auxListRe["resources${jx.elementTask[index]}"] = [];
                                                                        }
                                                                        List h = jx.auxListRe["resources${jx.elementTask[index]}"];
                                                                        List hId = jx.auxListReId["resources${jx.elementTask[index]}"];

                                                                        if (h.contains(auxList["resources"]) == false && auxList["resources"] != "Nenhum") {
                                                                          showDialog(
                                                                            context: context,
                                                                            barrierDismissible: false,
                                                                            builder: (BuildContext context) {
                                                                              return Material(
                                                                                color: Colors.transparent,
                                                                                child: CupertinoAlertDialog(
                                                                                  title: Text("${auxList["resources"]}"),
                                                                                  content: Form(
                                                                                    key: _formKey2,
                                                                                    child: Column(
                                                                                      children: [
                                                                                        Divider(
                                                                                          height: 20,
                                                                                          thickness: 1,
                                                                                          indent: 0,
                                                                                          endIndent: 0,
                                                                                          color: themesCB.borderColor,
                                                                                        ),
                                                                                        SizedBox(
                                                                                          height: heightValue / 2,
                                                                                        ),
                                                                                        Text("Qual a quantidade de unidades processadas em 1h?"),
                                                                                        SizedBox(
                                                                                          height: 10,
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsets.only(bottom: heightValue),
                                                                                          child: TextFormField(
                                                                                            autovalidateMode: validate,
                                                                                            cursorColor: themesCB.cursorColor,
                                                                                            initialValue: g.edit == true ? model.name : "",
                                                                                            keyboardType: TextInputType.numberWithOptions(decimal: true),
                                                                                            inputFormatters: [
                                                                                              FilteringTextInputFormatter.allow(RegExp('[0-9.,]+')),
                                                                                            ],
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
                                                                                              jx.auxListReQty["resources${jx.elementTask[index]}"] += [val];
                                                                                            },
                                                                                          ),
                                                                                        ),

                                                                                        Text("Defina o SETUP: "),
                                                                                        SizedBox(
                                                                                          height: 10,
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsets.only(bottom: heightValue),
                                                                                          child: TextFormField(
                                                                                            autovalidateMode: validate,
                                                                                            cursorColor: themesCB.cursorColor,
                                                                                            initialValue: g.edit == true ? model.name : "",
                                                                                            keyboardType: TextInputType.numberWithOptions(decimal: true),
                                                                                            inputFormatters: [
                                                                                              FilteringTextInputFormatter.allow(RegExp('[0-9.,]+')),
                                                                                            ],
                                                                                            decoration: commonInputDecoration(context: context, labelText: "Tempo (min)"),
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
                                                                                              jx.auxListReSetup["resources${jx.elementTask[index]}"] += [val];
                                                                                            },
                                                                                          ),
                                                                                        ),

                                                                                        SizedBox(
                                                                                          height: heightValue,
                                                                                        ),
                                                                                        // Text(
                                                                                        //     "No processamento das unidades do item anterior, a partir de qual % em unidades os itens são enviados para a próxima Etapa de produção?"),
                                                                                        // SizedBox(
                                                                                        //   height: 10,
                                                                                        // ),
                                                                                        // TextFormField(
                                                                                        //   keyboardType: TextInputType.text,
                                                                                        //   textAlign: TextAlign.start,
                                                                                        //   autocorrect: true,
                                                                                        //   decoration: InputDecoration(
                                                                                        //     enabledBorder: OutlineInputBorder(
                                                                                        //       borderSide: BorderSide(
                                                                                        //         color: Color(0xFF9C9C9C),
                                                                                        //         width: 0.5,
                                                                                        //       ),
                                                                                        //     ),
                                                                                        //     labelText: "Porcentagem (%): ",
                                                                                        //     labelStyle: TextStyle(
                                                                                        //       fontWeight: FontWeight.w400,
                                                                                        //       fontSize: 16,
                                                                                        //     ),
                                                                                        //   ),
                                                                                        //   style: TextStyle(
                                                                                        //     fontSize: 20,
                                                                                        //     color: themesCB.highlightColor,
                                                                                        //   ),
                                                                                        //   validator: (value) {
                                                                                        //     if (value.isEmpty) {
                                                                                        //       return 'Campo em branco';
                                                                                        //     }
                                                                                        //     return null;
                                                                                        //   },
                                                                                        //   onSaved: (val) {
                                                                                        //     bloc.auxListEqPercent["resources${bloc.elementTask[index]}"] += [val];
                                                                                        //   },
                                                                                        // ),
                                                                                        // SizedBox(
                                                                                        //   height: heightValue,
                                                                                        // ),
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
                                                                                                  h.add(auxList["resources"]);
                                                                                                  jx.auxListRe["resources${jx.elementTask[index]}"] = h;

                                                                                                  var ii = g.listKeyName["resources"].indexWhere((element) => element == auxList["resources"]);

                                                                                                  hId.add(g.listKeyId["resources"][ii]);
                                                                                                  jx.auxListReId["resources${jx.elementTask[index]}"] = hId;

                                                                                                  Navigator.of(context).pop();
                                                                                                  auxAddIconResources["T${jx.elementTask[index]}"] = false;
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
                                                                      }
                                                                    },
                                                                  )
                                                                : Container()
                                                          ],
                                                        )
                                                      : Container(),
                                                  "${jx.auxListRe["resources${jx.elementTask[index]}"]}" == "[]"
                                                      ? Text(
                                                          "*** Adicione um Recurso.",
                                                          style: TextStyle(color: Colors.red),
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
                                                  children: [
                                                    MediaQuery.removePadding(
                                                      removeTop: true,
                                                      removeBottom: true,
                                                      context: context,
                                                      child: ListView.builder(
                                                          shrinkWrap: true,
                                                          physics: NeverScrollableScrollPhysics(),
                                                          itemCount: jx.auxListRe["resources${jx.elementTask[index]}"].length,
                                                          itemBuilder: (BuildContext context, int index2) {
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
                                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                          children: [
                                                                            Text(
                                                                              "${jx.auxListRe["resources${jx.elementTask[index]}"][index2]}",
                                                                              style: themesCB.boldStyleText,
                                                                            ),
                                                                            Text(
                                                                              "ID: ${jx.auxListReId["resources${jx.elementTask[index]}"][index2]}",
                                                                              style: themesCB.regularStyleText,
                                                                            ),
                                                                            Text(
                                                                              "Qty/h: ${jx.auxListReQty["resources${jx.elementTask[index]}"][index2]}",
                                                                              style: themesCB.regularStyleText,
                                                                            ),
                                                                            Text(
                                                                              "Setup: ${jx.auxListReSetup["resources${jx.elementTask[index]}"][index2]} min",
                                                                              style: themesCB.regularStyleText,
                                                                            ),
                                                                            // Text("%/envio: ${bloc.auxListEqPercent["resources${bloc.elementTask[index]}"][index2]}"),
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
                                                                      List h = jx.auxListRe["resources${jx.elementTask[index]}"];
                                                                      h.remove(jx.auxListRe["resources${jx.elementTask[index]}"][index2]);
                                                                      jx.auxListRe["resources${jx.elementTask[index]}"] = h;

                                                                      List hId = jx.auxListReId["resources${jx.elementTask[index]}"];
                                                                      hId.remove(jx.auxListReId["resources${jx.elementTask[index]}"][index2]);
                                                                      jx.auxListReId["resources${jx.elementTask[index]}"] = hId;

                                                                      List hQty = jx.auxListReQty["resources${jx.elementTask[index]}"];
                                                                      hQty.remove(jx.auxListReQty["resources${jx.elementTask[index]}"][index2]);
                                                                      jx.auxListReQty["resources${jx.elementTask[index]}"] = hQty;

                                                                      List hSetup = jx.auxListReSetup["resources${jx.elementTask[index]}"];
                                                                      hSetup.remove(jx.auxListReSetup["resources${jx.elementTask[index]}"][index2]);
                                                                      jx.auxListReSetup["resources${jx.elementTask[index]}"] = hSetup;

                                                                      auxAddIconResources["T${jx.elementTask[index]}"] = true;

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
                                              // Selecionar Equipamento ----------------------------------
                                              Divider(
                                                height: 20,
                                                thickness: 1,
                                                indent: 0,
                                                endIndent: 0,
                                              ),
                                              // Selecionar Etapa Anterior ***************************** */
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Tarefas predecessoras: ",
                                                    style: themesCB.regularStyleText,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Flexible(
                                                        child: Container(
                                                          height: 45,
                                                          padding: EdgeInsets.all(10),
                                                          decoration: BoxDecoration(
                                                            border: Border.all(width: 0.5, color: themesCB.borderColor),
                                                            borderRadius: BorderRadius.all(Radius.circular(5)),
                                                          ),
                                                          child: DropdownButton<String>(
                                                            isExpanded: true,
                                                            value: auxList["taskName${jx.elementTask[index]}"],
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
                                                                auxList["taskName${jx.elementTask[index]}"] = newValue;
                                                              });
                                                            },
                                                            items: jx.allTasks.map<DropdownMenuItem<String>>((String value) {
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
                                                      ),
                                                      IconButton(
                                                        icon: Icon(
                                                          Icons.add,
                                                          color: themesCB.iconOffColor,
                                                        ),
                                                        onPressed: () {
                                                          List h = jx.auxListTaskPre["taskName${jx.elementTask[index]}"];

                                                          if (h.contains(jx.auxListTaskPre["taskName${jx.elementTask[index]}"]) == false && auxList["taskName${jx.elementTask[index]}"] != "Nenhum") {
                                                            jx.auxListTaskPre["taskName${jx.elementTask[index]}"] += [auxList["taskName${jx.elementTask[index]}"]];
                                                            jx.auxListTaskPre["taskName${jx.elementTask[index]}"] = Set.of(jx.auxListTaskPre["taskName${jx.elementTask[index]}"]).toList();

                                                            // if (bloc.auxListTask["taskName${bloc.elementTask[index]}"].contains(auxList["taskName${bloc.elementTask[index]}"]) == true) {
                                                            //   bloc.auxListTask["taskName${bloc.elementTask[index]}"].remove(auxList["taskName${bloc.elementTask[index]}"]);
                                                            // }
                                                            setState(() {});
                                                          }
                                                        },
                                                      )
                                                    ],
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
                                                          itemCount: jx.auxListTaskPre["taskName${jx.elementTask[index]}"].length,
                                                          itemBuilder: (BuildContext context, int index3) {
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
                                                                        child: Text(
                                                                          """${jx.auxListTaskPre["taskName${jx.elementTask[index]}"][index3]}""",
                                                                          style: themesCB.boldStyleText,
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
                                                                      List h = jx.auxListTaskPre["taskName${jx.elementTask[index]}"];
                                                                      h.remove(jx.auxListTaskPre["taskName${jx.elementTask[index]}"][index3]);
                                                                      jx.auxListTaskPre["taskName${jx.elementTask[index]}"] = h;
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
                                                thickness: 1,
                                                indent: 0,
                                                endIndent: 0,
                                              ),
                                              // Selecionar Etapa Anterior ***************************** */
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: heightValue / 2,
                                        ),
                                        IconButton(
                                          padding: EdgeInsets.all(0),
                                          icon: Icon(
                                            IconsHawcons.icon_27_trash_can,
                                            color: Colors.white,
                                          ),
                                          onPressed: () {
                                            if (auxCount == 0 && index == 0) auxCount = 1;
                                            if (index == jx.allTasks.length) auxCount = -1;

                                            for (int i = 0; i < jx.elementTask.length; i++) {
                                              auxList["taskName${jx.elementTask[i]}"] = "Nenhum";
                                            }
                                            jx.elementTask[index] = 0;
                                            auxAddIconResources["T${jx.elementTask[index]}"] = true;

                                            var p = jx.allTasks[index + auxCount];
                                            jx.allTasks.removeAt(index + auxCount);

                                            for (var i in jx.auxListTaskPre.values) {
                                              i.remove(p);
                                            }

                                            // bloc.auxListEq["resources$index"] = [];
                                            // bloc.auxListEqId["resources$index"] = [];

                                            setState(() {});
                                            if (g.edit = !true) {
                                              jx.qtyTask = -1;
                                            }
                                            auxCount = 0;

                                            // send();
                                          },
                                        )
                                      ],
                                    ),
                            );
                          },
                        ),
                      ),
                //#####################################################
                SizedBox(
                  height: heightValue,
                ),
                Center(
                  child: Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    // width: 100,
                    height: 40,
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: themesCB.backColor,
                      border: Border.all(width: 0.5, color: themesCB.borderColor),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        primary: themesCB.backColor,
                        textStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                        // onPrimary: Colors.white,
                        shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                      ),
                      onPressed: () {
                        if (jx.elementTask.length == 0) {
                          if (_formKey.currentState.validate() && auxList["products"] != "Nenhum") {
                            _formKey.currentState.save();
                            jx.qtyTask = 1;
                            auxAddIconResources["T${jx.qtyTask}"] = true;

                            jx.elementTask.add(jx.qtyTask);
                            setState(() {});
                          }
                        } else {
                          if (_formKey.currentState.validate() && auxList["products"] != "Nenhum" && "${jx.auxListRe["resources${jx.elementTask.last}"]}" != "[]") {
                            _formKey.currentState.save();

                            formatAndSend(func: () {});
                            setState(() {});
                          }
                        }
                      },
                      child: Text(
                        "Adicionar Nova Tarefa",
                        style: themesCB.normalHighLightStyleText,
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: heightValue,
                ),
                apiProvider.objResponse["files_url"]["chart"] == null || apiProvider.objResponse["files_url"]["chart"] == ""
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
                              "Gráfico de grafos",
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: heightValue,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 1,
                              height: 300,
                              child: InteractiveViewer(
                                child: SvgPicture.network(apiProvider.objResponse["files_url"]["chart"]),
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
                                    if (_formKey.currentState.validate() && auxList["products"] != "Nenhum" && "${jx.auxListRe["resources${jx.elementTask.last}"]}" != "[]") {
                                      _formKey.currentState.save();
                                      updateGraph = true;

                                      formatAndSend(func: () {});
                                      setState(() {});
                                    }
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.replay_rounded),
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
                          jx.deleteDocument(jsonx: jsonx, context: context);
                        }
                        Navigator.of(context).pushReplacementNamed(routes.routesAppPatterns['stageArea']);
                        routes.setForwardRoute(routes.routesAppPatterns['stageArea']);
                        routes.setBackRoute(ModalRoute.of(context).settings.name);
                      },
                      widthx: 100,
                      text: "CANCELAR",
                    ),
                    SizedBox(width: 10),
                    buttonPrimary(
                      context: context,
                      func: () async {
                        if (_formKey.currentState.validate() && auxList["products"] != "Nenhum") {
                          _formKey.currentState.save();

                          if (jx.qtyTask > 0) {
                            formatAndSend(func: () {
                              jx.clearAll();
                              // await new Future.delayed(const Duration(seconds: 2));
                              Navigator.of(context).pushReplacementNamed(routes.routesAppPatterns['stageArea']);
                            });
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
                                    child: Text(
                                      "Adicione mais de uma tarefa.",
                                      style: themesCB.regularStyleText,
                                    ),
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
