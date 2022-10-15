import 'package:cbmes_v1/models/inventory/devices.models.dart';
import 'package:cbmes_v1/provider/global.provider.dart';
import 'package:cbmes_v1/provider/themes/themes.provider.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class DevicesView extends StatefulWidget {
  @override
  State<DevicesView> createState() => _DevicesViewState();
}

class _DevicesViewState extends State<DevicesView> {
  bool init = true;
  var formatterDate = new DateFormat('dd/MM/yyyy');
  var model = new DevicesModel(
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
  );

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
          ],
        ),
      ),
    );
  }
}
