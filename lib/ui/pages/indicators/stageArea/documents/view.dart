import 'package:cbmes_v1/provider/global.provider.dart';
import 'package:flutter/material.dart';
import 'package:cbmes_v1/provider/routes.Provider.dart';
import 'package:cbmes_v1/ui/appBar/components/custom_drawer.dart';
import 'package:cbmes_v1/ui/appBar/custom_appBar.dart';
import 'package:cbmes_v1/ui/floatingMenu/floatingMenu.dart';
import 'package:cbmes_v1/ui/pages/indicators/stageArea/documents/widgets/widget_paper_view.dart';
import 'package:provider/provider.dart';

class IndicatorsDocumentsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Routes routes = Provider.of<Routes>(context);
    var routeBar = ModalRoute.of(context).settings.name;

    GlobalProvider g = Provider.of<GlobalProvider>(context);

    final dynamic model = g.getDynamicModel();
    routes.sid = model.name;

    return Scaffold(
      floatingActionButton: FloatingMenu(
        add: routes.routesAppIndicators['indicatorsStageAreaDocumentsAdd'],
        documents: routes.routesAppIndicators['stageArea'],
        favorites: routes.routesAppIndicators['indicatorsStageAreaFavorites'],
      ),
      appBar: CustomAppBar(routeBar),
      drawer: CustomDrawer(),
      body: Center(
        child: Container(
          child: Column(
            children: [
              // Container(
              //   margin: EdgeInsets.only(bottom: 30),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       ButtonsBackForward(back: true, forward: false, size: 30.0),
              //       SingleChildScrollView(
              //         scrollDirection: Axis.horizontal,
              //         child: ButtonsOptions(
              //           model: model,
              //           index: 0,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
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
