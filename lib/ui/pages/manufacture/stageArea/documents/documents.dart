import 'package:cbmes_v1/ui/globalWidgets/stageAreaGlobal/stageAreaGlobal.dart';
import 'package:flutter/material.dart';
import 'package:cbmes_v1/provider/routes.Provider.dart';
import 'package:cbmes_v1/ui/floatingMenu/floatingMenu.dart';
import 'package:cbmes_v1/ui/appBar/components/custom_drawer.dart';
import 'package:cbmes_v1/ui/appBar/custom_appBar.dart';
import 'package:provider/provider.dart';

class ManufactureDocuments extends StatefulWidget {
  @override
  _ManufactureDocumentsState createState() => _ManufactureDocumentsState();
}

class _ManufactureDocumentsState extends State<ManufactureDocuments> {
  bool auxEditClear = true;

  @override
  Widget build(BuildContext context) {
    Routes routes = Provider.of<Routes>(context);
    routes.route = routes.routesAppManufacture['manufactureStageAreaDocumentsView'];
    routes.routeEdit = routes.routesAppManufacture['manufactureStageAreaDocumentsEdit'];
    var routeBar = ModalRoute.of(context).settings.name;

    return Scaffold(
      floatingActionButton: FloatingMenu(
        add: routes.routesAppManufacture['manufactureStageAreaDocumentsAdd'],
        documents: routes.routesAppManufacture['stageArea'],
        favorites: routes.routesAppManufacture['manufactureStageAreaFavorites'],
      ),
      appBar: CustomAppBar(routeBar),
      drawer: CustomDrawer(),
      body: StageAreaGlobal(),
    );
  }
}
