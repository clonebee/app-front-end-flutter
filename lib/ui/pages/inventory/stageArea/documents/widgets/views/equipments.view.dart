import 'package:cbmes_v1/provider/global.provider.dart';
import "package:cbmes_v1/models/inventory/equipments.models.dart";
import 'package:cbmes_v1/provider/themes/themes.provider.dart';
import "package:flutter/material.dart";
import 'package:intl/intl.dart';
import "package:provider/provider.dart";

class EquipmentsView extends StatefulWidget {
  @override
  _EquipmentsViewState createState() => _EquipmentsViewState();
}

class _EquipmentsViewState extends State<EquipmentsView> {
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
    filesUrl: {},
    filesBase64Up: {
      "img1": "",
    },
    docsRelations: {
      "list_actuators": [],
      "list_devices": [],
      "list_sectors": [],
      "list_sensors": [],
    },
    docsRelationsIds: {},
  );
  bool init = true;
  var formatterDate = new DateFormat('dd/MM/yyyy');

  @override
  Widget build(BuildContext context) {
    GlobalProvider g = Provider.of<GlobalProvider>(context);
    ThemesCB themesCB = Provider.of<ThemesCB>(context);

    if (init == true) {
      init = false;
      model = g.getDynamicModel();
      if (model.filesUrl == null) {
        model.filesUrl = {};
        model.filesUrl["img1"] = "";
      }
    }

    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width * 1,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: themesCB.backColor,
          border: Border.all(width: 0.5, color: themesCB.borderColor),
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
              "Nome do Sensor: ${model.name}",
              style: themesCB.boldStyleText,
            ),
            Text(
              "Código de Fábrica: ${model.code}",
              style: themesCB.regularStyleText,
            ),
            Text(
              "Situação: ${model.situation == true ? 'Ativado' : 'Desativado'}",
              style: themesCB.regularStyleText,
            ),
            Text(
              "Marca: ${model.brand}",
            ),
            Text(
              "Modelo: ${model.model}",
              style: themesCB.regularStyleText,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Data de fabricação: ${formatterDate.format(DateTime.parse(model.dateOfManufacture))}",
              style: themesCB.regularStyleText,
            ),
            Text(
              "Data de compra: ${formatterDate.format(DateTime.parse(model.datePurchase))}",
              style: themesCB.regularStyleText,
            ),
            Text(
              "Data de instalação: ${formatterDate.format(DateTime.parse(model.dateOfInstallation))}",
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
              child: model.filesUrl["img1"] == ""
                  ? Center(
                      child: Icon(
                        Icons.image_not_supported_outlined,
                        color: themesCB.iconOffColor,
                      ),
                    )
                  : Column(
                      children: [
                        Image.network(model.filesUrl['img1']),
                      ],
                    ),
            ),
            SizedBox(
              height: 40,
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
                            border: Border.all(width: 0.5, color: themesCB.borderColor),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "${model.docsRelations["list_sectors"][index]["name"]} \nID: ${model.docsRelations["list_sectors"][index]["_id"]}",
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
                            border: Border.all(width: 0.5, color: themesCB.borderColor),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "${model.docsRelations["list_devices"][index]["name"]} \nID: ${model.docsRelations["list_devices"][index]["_id"]}",
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
                              border: Border.all(width: 0.5, color: themesCB.borderColor),
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "${model.docsRelations["list_sensors"][index]["name"]} \nID: ${model.docsRelations["list_sensors"][index]["_id"]}",
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
                              border: Border.all(width: 0.5, color: themesCB.borderColor),
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "${model.docsRelations["list_actuators"][index]["name"]} \nID: ${model.docsRelations["list_actuators"][index]["_id"]}",
                                  style: themesCB.regularStyleText,
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
