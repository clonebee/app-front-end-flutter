import 'package:cbmes_v1/provider/global.provider.dart';
import 'package:cbmes_v1/provider/operational.provider.dart';
import 'package:cbmes_v1/provider/themes/themes.provider.dart';
import 'package:cbmes_v1/themes/icons/MenuIcons.dart';
import 'package:cbmes_v1/ui/pages/operational/widgets/show_dialog.widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OperationalAcess extends StatefulWidget {
  @override
  _OperationalAcessState createState() => _OperationalAcessState();
}

class _OperationalAcessState extends State<OperationalAcess> {
  @override
  void initState() {
    super.initState();
  }

  bool validateSector = false;
  bool validateResource = false;

  bool init = true;
  Map<String, String> auxList = {"": ""};
  List<String> listFields = ["sectors", "resources"];

  Widget build(BuildContext context) {
    OperationalBloc op = Provider.of<OperationalBloc>(context);
    GlobalProvider g = Provider.of<GlobalProvider>(context);
    ThemesCB themesCB = Provider.of<ThemesCB>(context);

    if (init == true) {
      init = false;

      g.getListKey(
        context: context,
        func: () {},
        local: ["inventory", "patterns"],
        listFields: listFields,
        key: ["\"_id\"", "\"name\""],
      );

      for (int i = 0; i < listFields.length; i++) {
        g.auxListAdd[listFields[i]] = [];
        g.auxListAddId[listFields[i]] = [];
        g.statusDropdownButton[listFields[i]] = "";
      }
      for (int i = 0; i < listFields.length; i++) {
        auxList[listFields[i]] = "Nenhum";
      }
      g.listKeyName["resourcesBySectors"] = ["Nenhum"];

      g.global = false;
      g.favorite = false;
    }

    return op.listResourses[0] == "1"
        ? Container(
            height: MediaQuery.of(context).size.height,
            child: Center(
              child: CupertinoActivityIndicator(),
            ),
          )
        : Column(
            children: [
              SizedBox(height: 30),
              Container(
                width: double.infinity,
                child: Text(
                  "Setores: ",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: themesCB.fontColor,
                  ),
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
                child: g.statusDropdownButton["sectors"] != "ok" && g.allDocumentsStageArea == null
                    ? CupertinoActivityIndicator()
                    : DropdownButton<String>(
                        isExpanded: true,
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
                            validateSector = false;
                            auxList["resources"] = "Nenhum";
                            g.listKeyName["resourcesBySectors"] = ["Nenhum"];
                            for (int i = 0; i < op.listResourses.length; i++) {
                              for (int i2 = 0; i2 < op.listResourses[i].docsRelations["list_sectors"].length; i2++) {
                                if (op.listResourses[i].docsRelations["list_sectors"][i2]["name"] == auxList["sectors"]) {
                                  g.listKeyName["resourcesBySectors"].add(op.listResourses[i].name);
                                }
                              }
                            }
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
              validateSector == true
                  ? Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 10),
                      child: Text(
                        "Selecione um setor.",
                        style: TextStyle(color: Colors.red),
                      ),
                    )
                  : Container(),
              SizedBox(
                height: 15,
              ),
              Container(
                width: double.infinity,
                child: Text(
                  "Recursos: ",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: themesCB.fontColor,
                  ),
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
                child: g.statusDropdownButton["resources"] != "ok" && g.allDocumentsStageArea == null
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
                            validateResource = false;
                          });
                        },
                        items: g.listKeyName["resourcesBySectors"].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
              ),
              validateResource == true
                  ? Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 10),
                      child: Text(
                        "Selecione um recurso.",
                        style: TextStyle(color: Colors.red),
                      ),
                    )
                  : Container(),
              SizedBox(
                height: 25,
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: themesCB.backColor,
                  border: Border.all(width: 0.5, color: themesCB.borderColor),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: themesCB.fontColor,
                    textStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                    // onPrimary: Colors.white,
                    shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                  ),
                  onPressed: () {
                    op.clear();
                    if (auxList["sectors"] == "Nenhum" || auxList["resources"] == "Nenhum") {
                      if (auxList["sectors"] == "Nenhum") {
                        setState(() {
                          validateSector = true;
                        });
                      }
                      if (auxList["resources"] == "Nenhum") {
                        setState(() {
                          validateResource = true;
                        });
                      }
                    } else {
                      op.nameSector = auxList["sectors"];
                      var ii = g.listKeyName["sectors"].indexWhere((element) => element == auxList["sectors"]);
                      op.idSector = g.listKeyId["sectors"][ii];

                      op.nameResource = auxList["resources"];
                      ii = g.listKeyName["resources"].indexWhere((element) => element == auxList["resources"]);
                      op.idResource = g.listKeyId["resources"][ii];

                      op.clearEntryData();
                      op.loginOperator = true;
                      op.setAreaDataEntry();
                      showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (BuildContext context) {
                            return OperationalShowDialog();
                          });
                    }
                  },
                  child: Container(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: [
                        Icon(
                          MenuIcons.menu_operational,
                          color: themesCB.fontColor,
                          size: 50,
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Carregar Operador",
                          style: themesCB.regularStyleText,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
  }
}
