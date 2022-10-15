import 'package:cbmes_v1/provider/global.provider.dart';
import 'package:cbmes_v1/ui/globalWidgets/stageAreaGlobal/widgets/ButtonsOptions.dart';
import 'package:cbmes_v1/ui/pages/patterns/stageArea/documents/widgets/widget_paper_view.dart';

import 'package:flutter/material.dart';
import 'package:cbmes_v1/provider/routes.Provider.dart';
import 'package:cbmes_v1/ui/appBar/components/custom_drawer.dart';
import 'package:cbmes_v1/ui/appBar/custom_appBar.dart';
import 'package:cbmes_v1/ui/floatingMenu/floatingMenu.dart';
import 'package:cbmes_v1/ui/globalWidgets/buttonsBackForwad.dart';
import 'package:provider/provider.dart';

class PatternsDocumentsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Routes routes = Provider.of<Routes>(context);
    var routeBar = ModalRoute.of(context).settings.name;

    GlobalProvider bloc = Provider.of<GlobalProvider>(context);

    final dynamic model = bloc.getDynamicModel();
    routes.sid = model.name;

    return Scaffold(
      floatingActionButton: FloatingMenu(
        add: routes.routesAppPatterns['patternsStageAreaDocumentsAdd'],
        documents: routes.routesAppPatterns['stageArea'],
        favorites: routes.routesAppPatterns['patternsStageAreaFavorites'],
      ),
      appBar: CustomAppBar(routeBar),
      drawer: CustomDrawer(),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          padding: EdgeInsets.only(top: 30, left: 30, right: 30, bottom: 30),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ButtonsBackForward(back: true, forward: false, size: 30.0),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: ButtonsOptions(
                        model: model,
                        index: 0,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: DocumentPaperView(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
