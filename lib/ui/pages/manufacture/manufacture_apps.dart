import 'package:cbmes_v1/provider/themes.provider.dart';
import 'package:cbmes_v1/themes/icons/IconsLinear.dart';
import 'package:cbmes_v1/ui/globalWidgets/customPaint/iconsColors/products.iconColor.dart';
import 'package:cbmes_v1/ui/pages/manufacture/widget_apps_card.dart';
import 'package:flutter/material.dart';
import 'package:cbmes_v1/themes/icons/IconsCBMES.dart';
import 'package:cbmes_v1/ui/appBar/components/custom_drawer.dart';
import 'package:cbmes_v1/ui/appBar/custom_appBar.dart';
import 'package:provider/provider.dart';

class ManufactureApps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var routeBar = ModalRoute.of(context).settings.name;
    Themes icons = Provider.of<Themes>(context);

    final List<String> namesApp = <String>[
      'Matérias-primas',
      'Receitas',
      'Geometrias',
      'Produtos',
    ];
    final List<String> stageArea = <String>[
      'raw-materials',
      'recipes',
      'geometries',
      'products',
    ];

    final List iconsApps = [
      icons.iconsColors == true ? Icons.line_style_outlined : Icons.line_style_outlined,
      icons.iconsColors == true ? Icons.settings_input_component_outlined : Icons.settings_input_component_outlined,
      icons.iconsColors == true ? IconsLinear.dice : IconsLinear.dice,
      icons.iconsColors == true ? productsIconColor(xwidth: 25) : IconsCBMES.products,
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
              return ManufactureAppsCard(
                name: namesApp[index],
                pathIcon: icons.iconsColors == true ? iconsApps[index] : Icon(iconsApps[index]),
                stageArea: stageArea[index],
              );
            }),
      ),
    );
  }
}
