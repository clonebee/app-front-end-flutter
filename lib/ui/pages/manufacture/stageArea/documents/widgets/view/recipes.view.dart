import 'package:cbmes_v1/models/manufacture/recipes.models.dart';
import 'package:cbmes_v1/provider/global.provider.dart';
import 'package:cbmes_v1/provider/themes/themes.provider.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class RecipesView extends StatefulWidget {
  @override
  State<RecipesView> createState() => _RecipesViewState();
}

class _RecipesViewState extends State<RecipesView> {
  bool init = true;
  bool controlImageNetwork = false;
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
  Map<String, String> mapRawMaterialsIdName = {};
  Map<String, String> mapRawMaterialsIdUnit = {};
  Map<String, double> mapRawMaterialsIdPricePerUnit = {};

  double totalCostOfRevenue = 0.0;

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

      for (var j in model.docsRelations["list_raw_materials"]) {
        mapRawMaterialsIdName[j["_id"]] = j["name"];
        mapRawMaterialsIdUnit[j["_id"]] = j["unit"];
        mapRawMaterialsIdPricePerUnit[j["_id"]] = j["price_per_unit"];
        totalCostOfRevenue += model.qty[j["_id"]] * j["price_per_unit"];
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
              "Nome da Receita: ${model.name}",
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
            Divider(
              height: 20,
              thickness: 1,
              indent: 0,
              endIndent: 0,
            ),
            Text(
              "Ingredientes:",
              style: themesCB.boldStyleText,
            ),
            mapRawMaterialsIdName.length < 1
                ? Container(
                    child: Text(
                      "Não há ingredientes cadastrados para esta receita.",
                      textAlign: TextAlign.center,
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
                        itemCount: mapRawMaterialsIdName.length,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Ingrediente ${index + 1}: ${mapRawMaterialsIdName.values.toList()[index]}",
                                  style: themesCB.boldStyleText,
                                ),
                                Text(
                                  "Quantidade: ${model.qty.values.toList()[index]}${mapRawMaterialsIdUnit.values.toList()[index]}",
                                  style: themesCB.regularStyleText,
                                ),
                                Text(
                                  "Custo por undidade: ${mapRawMaterialsIdPricePerUnit.values.toList()[index]}",
                                  style: themesCB.regularStyleText,
                                ),
                                model.qty.values.toList()[index] == null
                                    ? Text(
                                        "Custo total: 0",
                                        style: themesCB.regularStyleText,
                                      )
                                    : Text(
                                        "Custo total: ${NumberFormat.simpleCurrency(locale: 'pt_BR').format(mapRawMaterialsIdPricePerUnit.values.toList()[index] * model.qty.values.toList()[index]).toString()}",
                                        style: themesCB.regularStyleText,
                                      ),
                              ],
                            ),
                          );
                        }),
                  ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Custo Total da Receita:",
              style: themesCB.boldHighLightStyleText,
            ),
            Text(
              "${NumberFormat.simpleCurrency(locale: 'pt_BR').format(totalCostOfRevenue).toString()}",
              style: TextStyle(
                color: themesCB.highlightColor,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
