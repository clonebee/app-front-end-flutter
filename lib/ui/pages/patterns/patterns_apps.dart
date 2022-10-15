// import 'package:clone_bee_mes_v1/ui/fabMenu/fabmenu.dart';
import 'package:cbmes_v1/provider/themes.provider.dart';
import 'package:cbmes_v1/themes/icons/IconsLinear.dart';
import 'package:cbmes_v1/ui/globalWidgets/customPaint/iconsColors/menuDraw/productScript.iconColor.dart';
import 'package:cbmes_v1/ui/pages/patterns/widget_apps_card.dart';
import 'package:flutter/material.dart';
import 'package:cbmes_v1/themes/icons/IconsCBMES.dart';
import 'package:cbmes_v1/ui/appBar/components/custom_drawer.dart';
import 'package:cbmes_v1/ui/appBar/custom_appBar.dart';
import 'package:provider/provider.dart';

class PatternsApps extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var routeBar = ModalRoute.of(context).settings.name;
    Themes icons = Provider.of<Themes>(context);

    final List<String> namesApp = <String>[
      'Roteiro',
      'Recursos',
    ];
    final List<String> stageArea = <String>[
      'roadmaps',
      'resources',
    ];

    final List iconsApps = [
      icons.iconsColors == true
          ? productScriptIconColor(xwidth: 100)
          : IconsCBMES.menu_product_script,
      icons.iconsColors == true ? IconsLinear.layers : IconsLinear.layers,
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
              return PatternsAppsCard(
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
