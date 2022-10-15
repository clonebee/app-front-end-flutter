import 'package:cbmes_v1/provider/apiProvider.dart';
import 'package:cbmes_v1/provider/global.provider.dart';
import 'package:cbmes_v1/provider/routes.Provider.dart';
import 'package:cbmes_v1/provider/themes/themes.provider.dart';
import 'package:cbmes_v1/themes/icons/IconsHawcons.dart';
import 'package:cbmes_v1/ui/globalWidgets/buttonsBackForwad.dart';
import 'package:cbmes_v1/ui/globalWidgets/pagination.dart';
import 'package:cbmes_v1/ui/globalWidgets/stageAreaGlobal/widgets/ButtonsOptions.dart';
import 'package:cbmes_v1/ui/globalWidgets/stageAreaGlobal/widgets/widget_grid_file_card.dart';
import 'package:cbmes_v1/ui/globalWidgets/stageAreaGlobal/widgets/widget_list_file_line.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StageAreaGlobal extends StatefulWidget {
  @override
  State<StageAreaGlobal> createState() => _StageAreaGlobalState();
}

class _StageAreaGlobalState extends State<StageAreaGlobal> {
  bool init = true;

  @override
  Widget build(BuildContext context) {
    GlobalProvider g = Provider.of<GlobalProvider>(context);
    Routes routes = Provider.of<Routes>(context);
    APIProvider apiProvider = Provider.of<APIProvider>(context);
    ThemesCB themesCB = Provider.of<ThemesCB>(context);

    if (g.global == true && g.search.length < 1 || apiProvider.apiChangePage == true) {
      apiProvider.progress = "0";

      if (g.allDocumentsStageArea.length < 1) {
        apiProvider.currentPage = 0;
      }

      g.getDocumentsStageArea(
        context: context,
        apiRoute: '${g.apiRoute}',
        typeClass: g.stageArea,
        func: () {},
        id: g.favorite == true ? '?filter_keys_values={"parameter": {"favorite": True}}&current_page=${apiProvider.currentPage}' : '?current_page=${apiProvider.currentPage}',
      );
      g.global = false;
      g.favorite = false;
      apiProvider.apiChangePage = false;
    }

    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 30, left: 30, right: 30, bottom: 55),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ButtonsBackForward(back: true, forward: true, size: 30.0),
                  Flexible(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 0.5, color: Theme.of(context).colorScheme.secondary),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 5, right: 5),
                            child: (g.search.length > 1)
                                ? CupertinoActivityIndicator()
                                : Icon(
                                    Icons.search,
                                  ),
                          ),
                          Flexible(
                            child: TextField(
                              onChanged: (text) async {
                                g.setSearch(text);
                                apiProvider.progress = "0";

                                EasyDebounce.debounce(
                                    'my-debouncer', // <-- An ID for this particular debouncer
                                    Duration(milliseconds: 2500), // <-- The debounce duration
                                    () => g.getDocumentsStageArea(
                                          id: '?filter_search={"value": "$text", "sort": {"name": 1},"qty_docs_page": 1000,"current_page": 0}',
                                          apiRoute: '${g.apiRoute}',
                                          typeClass: g.stageArea,
                                          func: () {},
                                          context: context,
                                        ) // <-- The target method
                                    );

                                // print(text);
                              },
                              decoration: InputDecoration(border: InputBorder.none, hintText: 'Qual documento deseja encontrar?'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  routes.listViewGrid == false ? ButtonsListOffGridOn() : ButtonsListOnGridOff()
                ],
              ),
            ),
            g.allDocumentsStageArea[0] == "1"
                ? Flexible(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Aguarde. Recebendo documentos atualizados do servidor.",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: themesCB.fontColor),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CupertinoActivityIndicator(),
                              Text(
                                "${apiProvider.progress}%",
                                style: TextStyle(color: themesCB.fontColor),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                : g.allDocumentsStageArea[0] == "2" || g.allDocumentsStageArea[0] == null
                    ? Flexible(
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Icon(
                                      IconsHawcons.icon_54_document,
                                      color: themesCB.iconOffColor,
                                      size: 20,
                                    ),
                                  ),
                                  Text(
                                    "Nenhum documento encontrado.",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: themesCB.fontColor),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    : Flexible(
                        child: routes.listViewGrid == true ? list(model: g.allDocumentsStageArea) : grid(model: g.allDocumentsStageArea),
                      ),
            Container(
              alignment: Alignment.centerLeft,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Pagination(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
