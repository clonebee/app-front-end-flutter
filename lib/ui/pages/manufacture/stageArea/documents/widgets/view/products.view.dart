import 'package:cbmes_v1/provider/global.provider.dart';
import 'package:cbmes_v1/models/manufacture/products.models.dart';
import 'package:cbmes_v1/provider/themes/themes.provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductsView extends StatefulWidget {
  @override
  State<ProductsView> createState() => _ProductsViewState();
}

class _ProductsViewState extends State<ProductsView> {
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
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Nome do Produto: ${model.name}",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            Text("Código de Fábrica: ${model.code}"),
            Text("Situação: ${model.situation}"),
            SizedBox(
              height: 20,
            ),
            Text(
              "Descrição:",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            Text(
              "${model.description}",
              textAlign: TextAlign.justify,
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
              "Receitas:",
              style: themesCB.regularStyleText,
            ),
            model.docsRelations["list_recipes"].length < 1
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
                        itemCount: model.docsRelations["list_recipes"].length,
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
                                  "${model.docsRelations["list_recipes"][index]["name"]} \nID: ${model.docsRelations["list_recipes"][index]["_id"]}",
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
              "Geometrias:",
              style: themesCB.regularStyleText,
            ),
            model.docsRelations["list_geometries"].length < 1
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
                        itemCount: model.docsRelations["list_geometries"].length,
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
                                  "${model.docsRelations["list_geometries"][index]["name"]} \nID: ${model.docsRelations["list_geometries"][index]["_id"]}",
                                  style: themesCB.regularStyleText,
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
