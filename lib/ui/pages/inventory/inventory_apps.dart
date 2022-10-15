// import 'package:clone_bee_mes_v1/ui/fabMenu/fabmenu.dart';
import 'package:cbmes_v1/provider/themes.provider.dart';
import 'package:cbmes_v1/ui/globalWidgets/customPaint/iconsColors/actuators.iconColor.dart';
import 'package:cbmes_v1/ui/globalWidgets/customPaint/iconsColors/devices.iconColor.dart';
import 'package:cbmes_v1/ui/globalWidgets/customPaint/iconsColors/menuDraw/supervisory.iconColor.dart';
import 'package:cbmes_v1/ui/globalWidgets/customPaint/iconsColors/sectors.iconColor.dart';
import 'package:cbmes_v1/ui/globalWidgets/customPaint/iconsColors/transports.iconColor.dart';
import 'package:flutter/material.dart';
import 'package:cbmes_v1/themes/icons/IconsCBMES.dart';
import 'package:cbmes_v1/ui/appBar/components/custom_drawer.dart';
import 'package:cbmes_v1/ui/appBar/custom_appBar.dart';
import 'package:provider/provider.dart';

import 'widget_apps_card.dart';

class InventoryApps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var routeBar = ModalRoute.of(context).settings.name;
    Themes icons = Provider.of<Themes>(context);

    final List<String> namesApp = <String>[
      'Setores',
      'Sensores',
      'Atuadores',
      'Dispositivos',
      'Transporte',
      'Equipamentos',
    ];
    final List<String> stageArea = <String>[
      'sectors',
      'sensors',
      'actuators',
      'devices',
      'transports',
      'equipments',
    ];

    final List iconsApps = [
      icons.iconsColors == true ? sectorsIconColor(xwidth: 100) : IconsCBMES.factory_icon,
      icons.iconsColors == true ? supervisoryIconColor(xwidth: 20) : IconsCBMES.sensors,
      icons.iconsColors == true ? actuatorsIconColor(xwidth: 50) : IconsCBMES.actuators,
      icons.iconsColors == true ? devicesIconColor(xwidth: 100) : IconsCBMES.devices,
      icons.iconsColors == true ? transportsIconColor(xwidth: 100) : IconsCBMES.truck,
      icons.iconsColors == true ? transportsIconColor(xwidth: 100) : IconsCBMES.equipments,
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
              return InventoryAppsCard(
                name: namesApp[index],
                pathIcon: icons.iconsColors == true ? iconsApps[index] : Icon(iconsApps[index]),
                stageArea: stageArea[index],
              );
            }),
      ),
    );
  }
}
