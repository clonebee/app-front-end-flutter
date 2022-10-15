import 'package:cbmes_v1/provider/jsonx/jsonx.provider.dart';
import 'package:cbmes_v1/ui/globalWidgets/stageAreaGlobal/stageAreaGlobal.dart';
import 'package:flutter/material.dart';
import 'package:cbmes_v1/provider/routes.Provider.dart';
import 'package:cbmes_v1/ui/floatingMenu/floatingMenu.dart';
import 'package:cbmes_v1/ui/appBar/components/custom_drawer.dart';
import 'package:cbmes_v1/ui/appBar/custom_appBar.dart';
import 'package:provider/provider.dart';

class PatternsDocuments extends StatefulWidget {
  @override
  _PatternsDocumentsState createState() => _PatternsDocumentsState();
}

class _PatternsDocumentsState extends State<PatternsDocuments> {
  bool auxEditClear = true;

  @override
  Widget build(BuildContext context) {
    Routes routes = Provider.of<Routes>(context);
    routes.route = routes.routesAppPatterns['patternsStageAreaDocumentsView'];
    routes.routeEdit =
        routes.routesAppPatterns['patternsStageAreaDocumentsEdit'];
    var routeBar = ModalRoute.of(context).settings.name;

    JsonX jx = Provider.of<JsonX>(context);

    if (auxEditClear == true) {
      auxEditClear = false;
      jx.clearAll();
    }

    return Scaffold(
      floatingActionButton: FloatingMenu(
        add: routes.routesAppPatterns['patternsStageAreaDocumentsAdd'],
        documents: routes.routesAppPatterns['stageArea'],
        favorites: routes.routesAppPatterns['patternsStageAreaFavorites'],
      ),
      appBar: CustomAppBar(routeBar),
      drawer: CustomDrawer(),
      body: StageAreaGlobal(),
    );
  }
}
