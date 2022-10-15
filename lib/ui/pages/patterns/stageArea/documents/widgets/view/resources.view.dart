import 'package:cbmes_v1/provider/global.provider.dart';
import 'package:cbmes_v1/models/patterns/resources.models.dart';
import 'package:cbmes_v1/provider/themes/themes.provider.dart';
import 'package:cbmes_v1/ui/globalWidgets/photoPerfil.dart';
import "package:flutter/material.dart";
import "package:provider/provider.dart";

class ResourcesView extends StatefulWidget {
  @override
  _ResourcesViewState createState() => _ResourcesViewState();
}

class _ResourcesViewState extends State<ResourcesView> {
  bool init = true;
  List<String> listFields = [
    "sectors",
    "equipments",
    "devices",
    "sensors",
    "actuators",
    "transports",
    "users-operator"
  ];

  @override
  Widget build(BuildContext context) {
    GlobalProvider g = Provider.of<GlobalProvider>(context);
    ThemesCB themesCB = Provider.of<ThemesCB>(context);

    var model = new ResourcesModel(
      sId: null,
      name: "",
      favorite: false,
      situation: true,
      description: "",
      docsRelations: {
        "list_sectors": [],
        "list_equipments": [],
        "list_devices": [],
        "list_sensors": [],
        "list_actuators": [],
        "list_transports": [],
        "list_users_operator": [],
      },
      docsRelationsIds: {},
    );

    if (init == true) {
      init = false;
      model = g.getDynamicModel();
      print(model.docsRelations["list_users_operator"]);
    }

    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width * 1,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          border: Border.all(
              width: 0.5, color: Theme.of(context).colorScheme.secondary),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: Text(
                "ID no sistema: ${model.sId}",
                textAlign: TextAlign.center,
                style: themesCB.regularStyleText,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Nome do Recurso: ${model.name}",
              style: themesCB.boldStyleText,
            ),
            Text(
              "Situação: ${model.situation == true ? 'Ativado' : 'Desativado'}",
              style: themesCB.regularStyleText,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Descrição:",
              style: themesCB.boldStyleText,
            ),
            Text(
              "${model.description}",
              textAlign: TextAlign.justify,
              style: themesCB.regularStyleText,
            ),
            SizedBox(
              height: 20,
            ),
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
            Text(
              "Setores:",
              style: themesCB.regularStyleText,
            ),
            model.docsRelations["list_sectors"].length < 1
                ? Container(
                    child: Text(
                      "Não há relacionamentos.",
                      style: themesCB.regularStyleText,
                    ),
                  )
                : MediaQuery.removePadding(
                    removeTop: true,
                    removeBottom: true,
                    context: context,
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: model.docsRelations["list_sectors"].length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          margin: EdgeInsets.only(top: 5),
                          // height: 45,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            // color: themesCB.backColor,
                            border: Border.all(
                                width: 0.5, color: themesCB.borderColor),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${model.docsRelations["list_sectors"][index]["name"]}",
                                style: themesCB.boldStyleText,
                              ),
                              Text(
                                "ID: ${model.docsRelations["list_sectors"][index]["_id"]}",
                                style: themesCB.regularStyleText,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
            Divider(
              height: 20,
              thickness: 2,
              indent: 0,
              endIndent: 0,
            ),
            Text(
              "Equipamentos:",
              style: themesCB.regularStyleText,
            ),
            model.docsRelations["list_equipments"].length < 1
                ? Container(
                    child: Text(
                      "Não há relacionamentos.",
                      style: themesCB.regularStyleText,
                    ),
                  )
                : MediaQuery.removePadding(
                    removeTop: true,
                    removeBottom: true,
                    context: context,
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: model.docsRelations["list_equipments"].length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          margin: EdgeInsets.only(top: 5),
                          // height: 45,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            // color: themesCB.backColor,
                            border: Border.all(
                                width: 0.5, color: themesCB.borderColor),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${model.docsRelations["list_equipments"][index]["name"]}",
                                style: themesCB.boldStyleText,
                              ),
                              Text(
                                "ID: ${model.docsRelations["list_equipments"][index]["_id"]}",
                                style: themesCB.regularStyleText,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
            Divider(
              height: 20,
              thickness: 2,
              indent: 0,
              endIndent: 0,
            ),
            Text(
              "Dispositivos:",
              style: themesCB.regularStyleText,
            ),
            model.docsRelations["list_devices"].length < 1
                ? Container(
                    child: Text(
                      "Não há relacionamentos.",
                      style: themesCB.regularStyleText,
                    ),
                  )
                : MediaQuery.removePadding(
                    removeTop: true,
                    removeBottom: true,
                    context: context,
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: model.docsRelations["list_devices"].length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          margin: EdgeInsets.only(top: 5),
                          // height: 45,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            // color: themesCB.backColor,
                            border: Border.all(
                                width: 0.5, color: themesCB.borderColor),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${model.docsRelations["list_devices"][index]["name"]}",
                                style: themesCB.boldStyleText,
                              ),
                              Text(
                                "ID: ${model.docsRelations["list_devices"][index]["_id"]}",
                                style: themesCB.regularStyleText,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
            Divider(
              height: 20,
              thickness: 2,
              indent: 0,
              endIndent: 0,
            ),
            Text(
              "Sensores:",
              style: themesCB.regularStyleText,
            ),
            model.docsRelations["list_sensors"].length < 1
                ? Container(
                    child: Text(
                      "Não há relacionamentos.",
                      style: themesCB.regularStyleText,
                    ),
                  )
                : MediaQuery.removePadding(
                    removeTop: true,
                    removeBottom: true,
                    context: context,
                    child: ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: model.docsRelations["list_sensors"].length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            margin: EdgeInsets.only(top: 5),
                            // height: 45,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              // color: themesCB.backColor,
                              border: Border.all(
                                  width: 0.5, color: themesCB.borderColor),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${model.docsRelations["list_sensors"][index]["name"]}",
                                  style: themesCB.boldStyleText,
                                ),
                                Text(
                                  "ID: ${model.docsRelations["list_sensors"][index]["_id"]}",
                                  style: themesCB.regularStyleText,
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
            Divider(
              height: 20,
              thickness: 2,
              indent: 0,
              endIndent: 0,
            ),
            Text(
              "Atuadores:",
              style: themesCB.regularStyleText,
            ),
            model.docsRelations["list_actuators"].length < 1
                ? Container(
                    child: Text(
                      "Não há relacionamentos.",
                      style: themesCB.regularStyleText,
                    ),
                  )
                : MediaQuery.removePadding(
                    removeTop: true,
                    removeBottom: true,
                    context: context,
                    child: ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: model.docsRelations["list_actuators"].length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            margin: EdgeInsets.only(top: 5),
                            // height: 45,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              // color: themesCB.backColor,
                              border: Border.all(
                                  width: 0.5, color: themesCB.borderColor),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${model.docsRelations["list_actuators"][index]["name"]}",
                                  style: themesCB.boldStyleText,
                                ),
                                Text(
                                  "ID: ${model.docsRelations["list_actuators"][index]["_id"]}",
                                  style: themesCB.regularStyleText,
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
            Divider(
              height: 20,
              thickness: 2,
              indent: 0,
              endIndent: 0,
            ),
            Text(
              "Colaboradores:",
              style: themesCB.regularStyleText,
            ),
            model.docsRelations["list_users_operator"].length < 1
                ? Container(
                    child: Text(
                      "Não há relacionamentos.",
                      style: themesCB.regularStyleText,
                    ),
                  )
                : MediaQuery.removePadding(
                    removeTop: true,
                    removeBottom: true,
                    context: context,
                    child: ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount:
                            model.docsRelations["list_users_operator"].length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            margin: EdgeInsets.only(top: 5),
                            // height: 45,
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 5),
                                  child: photoPerfil(
                                    context: context,
                                    circularSize: 50,
                                    iconSize: 20,
                                    obj: model.docsRelations[
                                            "list_users_operator"][index]
                                        ["files_url"]["img1"],
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 0.5,
                                          color: themesCB.borderColor),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                    ),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "${model.docsRelations["list_users_operator"][index]["name"]}",
                                            style: themesCB.boldStyleText,
                                          ),
                                          Text(
                                            "ID: ${model.docsRelations["list_users_operator"][index]["_id"]}",
                                            style: themesCB.regularStyleText,
                                          ),
                                          Text(
                                            "Atividades: ${model.operatorActivities[model.docsRelations["list_users_operator"][index]["_id"]]["active_description"]}",
                                            style: themesCB.regularStyleText,
                                          ),
                                          Text(
                                            "Turno: ${model.operatorActivities[model.docsRelations["list_users_operator"][index]["_id"]]["shift"]}",
                                            style: themesCB.regularStyleText,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
          ],
        ),
      ),
    );
  }
}
