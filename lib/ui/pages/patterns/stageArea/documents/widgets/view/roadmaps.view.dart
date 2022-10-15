import 'package:cbmes_v1/provider/global.provider.dart';
import 'package:cbmes_v1/models/patterns/roadmap.models.dart';
import 'package:cbmes_v1/provider/themes/themes.provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class RoadMapView extends StatefulWidget {
  @override
  State<RoadMapView> createState() => _RoadMapViewState();
}

class _RoadMapViewState extends State<RoadMapView> {
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
  bool init = true;
  Map<String, String> mapResourcesIdName = {};

  @override
  Widget build(BuildContext context) {
    GlobalProvider g = Provider.of<GlobalProvider>(context);
    ThemesCB themesCB = Provider.of<ThemesCB>(context);

    if (init == true) {
      init = false;
      model = g.getDynamicModel();
      for (var j in model.docsRelations["list_resources"]) {
        mapResourcesIdName[j["_id"]] = j["name"];
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
            SizedBox(
              height: 50,
            ),
            Text(
              "Gráfico de grafos:",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            Container(
              // constraints: BoxConstraints(
              //   minHeight: 300, //minimum height
              //   minWidth: 100, // minimum width

              //   // maxHeight: MediaQuery.of(context).size.height,
              //   //maximum height set to 100% of vertical height
              //   maxWidth: MediaQuery.of(context).size.width,
              //   //maximum width set to 100% of width
              // ),
              height: MediaQuery.of(context).size.width * 0.35,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(width: 0.5, color: themesCB.borderColor),
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: model.filesUrl["chart"] == null
                  ? Center(child: Icon(Icons.image_not_supported_outlined))
                  : InteractiveViewer(
                      maxScale: 1000,
                      child: SvgPicture.network(model.filesUrl["chart"]),
                    ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Descrição das Tarefas: ",
              style: themesCB.boldStyleText,
            ),
            Divider(
              height: 20,
              thickness: 2,
              indent: 0,
              endIndent: 0,
            ),
            model.roadMap.length < 1
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
                      itemCount: model.scriptOrder.length,
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
                                "${model.scriptOrder[index]}: ${model.roadMap[model.scriptOrder[index]]["task_name"]}",
                                style: themesCB.boldStyleText,
                              ),
                              Text(
                                "Descrição: ${model.roadMap[model.scriptOrder[index]]["task_name"]}",
                                style: themesCB.regularStyleText,
                              ),
                              Text(
                                "Porcentagem de conclusão para envio: ${model.roadMap[model.scriptOrder[index]]["percentage_of_completion_for_dispatch"]}%",
                                style: themesCB.regularStyleText,
                              ),
                              Text(
                                "Tarefas predecessoras: ${model.roadMap[model.scriptOrder[index]]["predecessor_task"]}",
                                style: themesCB.regularStyleText,
                              ),
                              Text(
                                "Recurso: ${mapResourcesIdName[model.roadMap[model.scriptOrder[index]]["quantity_per_hour"].keys.toList()[0]]}",
                                style: themesCB.boldHighLightStyleText,
                              ),
                              Text(
                                "Setup: ${model.roadMap[model.scriptOrder[index]]["setup"].values.toList()[0]}",
                                style: themesCB.boldHighLightStyleText,
                              ),
                              Text(
                                "Quantidade por hora: ${model.roadMap[model.scriptOrder[index]]["quantity_per_hour"].values.toList()[0]}",
                                style: themesCB.regularStyleText,
                              ),
                              Text(
                                "Relação de escala: ${model.roadMap[model.scriptOrder[index]]["scale_ratio"]}",
                                style: themesCB.regularStyleText,
                              ),
                              Text(
                                "Estágio: ${model.roadMap[model.scriptOrder[index]]["stage"]}",
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
          ],
        ),
      ),
    );
  }
}
