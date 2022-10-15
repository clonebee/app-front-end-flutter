import 'package:cbmes_v1/provider/global.provider.dart';
import 'package:cbmes_v1/ui/pages/supervisory/stageArea/documents/widgets/widget_paper_view.dart';
import 'package:flutter/material.dart';
import 'package:cbmes_v1/provider/routes.Provider.dart';
import 'package:cbmes_v1/ui/appBar/components/custom_drawer.dart';
import 'package:cbmes_v1/ui/appBar/custom_appBar.dart';
import 'package:cbmes_v1/ui/floatingMenu/floatingMenu.dart';
import 'package:provider/provider.dart';

class SupervisoryDocumentsView extends StatelessWidget {
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
      body: DocumentPaperView(),
    );
  }
}
