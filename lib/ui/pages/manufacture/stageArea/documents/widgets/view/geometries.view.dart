import 'package:cbmes_v1/models/manufacture/geometries.models.dart';
import 'package:cbmes_v1/provider/global.provider.dart';
import 'package:cbmes_v1/provider/themes/themes.provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GeometriesView extends StatefulWidget {
  @override
  State<GeometriesView> createState() => _GeometriesViewState();
}

class _GeometriesViewState extends State<GeometriesView> {
  bool init = true;
  bool controlImageNetwork = false;
  var model = GeometriesModel(
    sId: null,
    name: '',
    code: '',
    height: 0.0,
    length: 0.0,
    width: 0.0,
    diameter: 0.0,
    description: '',
    favorite: false,
    filesBase64Up: {
      "img1": "",
    },
    situation: true,
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
          color: Theme.of(context).primaryColor,
          border: Border.all(width: 0.5, color: Theme.of(context).colorScheme.secondary),
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
              "Nome do Setor: ${model.name}",
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
            SizedBox(
              height: 20,
            ),
            Text(
              "Altura: ${model.height}",
              style: themesCB.normalHighLightStyleText,
            ),
            Text(
              "Comprimento: ${model.length}",
              style: themesCB.normalHighLightStyleText,
            ),
            Text(
              "Largura: ${model.width}",
              style: themesCB.normalHighLightStyleText,
            ),
            Text(
              "Diâmetro: ${model.diameter}",
              style: themesCB.normalHighLightStyleText,
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
