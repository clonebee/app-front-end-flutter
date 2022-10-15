import 'package:cbmes_v1/ui/globalWidgets/stageAreaGlobal/stageAreaGlobal.dart';
import 'package:flutter/material.dart';
import 'package:cbmes_v1/provider/routes.Provider.dart';
import 'package:cbmes_v1/ui/floatingMenu/floatingMenu.dart';
import 'package:cbmes_v1/ui/appBar/components/custom_drawer.dart';
import 'package:cbmes_v1/ui/appBar/custom_appBar.dart';
import 'package:provider/provider.dart';

class IndicatorsDocuments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Routes routes = Provider.of<Routes>(context);
    routes.route = routes.routesAppIndicators['indicatorsStageAreaDocumentsView'];
    routes.routeEdit = routes.routesAppIndicators['indicatorsStageAreaDocumentsEdit'];
    var routeBar = ModalRoute.of(context).settings.name;

    return Scaffold(
      floatingActionButton: FloatingMenu(
        add: routes.routesAppIndicators['indicatorsStageAreaDocumentsAdd'],
        documents: routes.routesAppIndicators['stageArea'],
        favorites: routes.routesAppIndicators['indicatorsStageAreaFavorites'],
      ),
      appBar: CustomAppBar(routeBar),
      drawer: CustomDrawer(),
      body: StageAreaGlobal(),
    );
  }
}
