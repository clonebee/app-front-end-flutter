// import 'package:clone_bee_mes_v1/ui/fabMenu/fabmenu.dart';
import 'package:cbmes_v1/provider/themes.provider.dart';
import 'package:cbmes_v1/themes/icons/IconsHawcons.dart';
import 'package:cbmes_v1/ui/pages/schedule/widget_apps_card.dart';
import 'package:flutter/material.dart';
import 'package:cbmes_v1/ui/appBar/components/custom_drawer.dart';
import 'package:cbmes_v1/ui/appBar/custom_appBar.dart';
import 'package:provider/provider.dart';

class ScheduleApps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var routeBar = ModalRoute.of(context).settings.name;
    Themes icons = Provider.of<Themes>(context);

    final List<String> namesApp = <String>[
      'Ordens de Produção',
    ];
    final List<String> stageArea = <String>[
      'production-orders',
    ];

    final List iconsApps = [
      icons.iconsColors == true
          ? IconsHawcons.icon_91_inbox_document_text3
          : IconsHawcons.icon_91_inbox_document_text3,
    ];

    return Scaffold(
      // floatingActionButton: FabMenu(),
      appBar: CustomAppBar(routeBar),
      drawer: CustomDrawer(),
      body: Container(
        padding: EdgeInsets.all(30),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                // childAspectRatio: 2 / 1.7,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10),
            itemCount: namesApp.length,
            itemBuilder: (BuildContext ctx, index) {
              return ScheduleAppsCard(
                name: namesApp[index],
                pathIcon: icons.iconsColors == true
                    ? iconsApps[index]
                    : Icon(iconsApps[index]),
                stageArea: stageArea[index],
              );
            }),
      ),
    );
  }
}
