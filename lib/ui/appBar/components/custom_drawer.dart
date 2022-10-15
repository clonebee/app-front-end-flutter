import 'package:cbmes_v1/provider/apiProvider.dart';
import 'package:cbmes_v1/provider/routes.Provider.dart';
import 'package:cbmes_v1/provider/themes.provider.dart';
import 'package:cbmes_v1/provider/themes/themes.provider.dart';
import 'package:cbmes_v1/themes/icons/MenuIcons.dart';
import 'package:cbmes_v1/ui/globalWidgets/customPaint/iconsColors/menuDraw/inventory.iconColor.dart';
import 'package:cbmes_v1/ui/globalWidgets/customPaint/iconsColors/menuDraw/execution.iconColor.dart';
import 'package:cbmes_v1/ui/globalWidgets/customPaint/iconsColors/menuDraw/indicators.iconColor.dart';
import 'package:cbmes_v1/ui/globalWidgets/customPaint/iconsColors/menuDraw/operational.iconColor.dart';
import 'package:cbmes_v1/ui/globalWidgets/customPaint/iconsColors/menuDraw/productScript.iconColor.dart';
import 'package:cbmes_v1/ui/globalWidgets/customPaint/iconsColors/menuDraw/productionOrders.iconColor.dart';
import 'package:cbmes_v1/ui/globalWidgets/customPaint/iconsColors/menuDraw/statisticalControl.iconColor.dart';
import 'package:cbmes_v1/ui/globalWidgets/customPaint/iconsColors/menuDraw/supervisory.iconColor.dart';
import 'package:cbmes_v1/ui/globalWidgets/customPaint/logoColor.dart';
import 'package:cbmes_v1/ui/globalWidgets/customPaint/logoWhite.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'button_draw_menu.dart';

class CustomDrawer extends StatelessWidget {
  final String assetLogo = 'assets/logo/logo.png';

  @override
  Widget build(BuildContext context) {
    Themes icons = Provider.of<Themes>(context);
    Routes routes = Provider.of<Routes>(context);
    ThemesCB themesCB = Provider.of<ThemesCB>(context);
    APIProvider apiProvider = Provider.of<APIProvider>(context);

    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: Container(
        // color: Color.fromRGBO(251, 252, 254, 1),
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    child: icons.onDarkTheme == true
                        ? logoWithe(xwidth: 120)
                        : logoColor(xwidth: 120),
                  ),
                  Container(
                    child: Text(
                      'Manufacturing Execution Systems',
                      style: TextStyle(
                        color: themesCB.fontColor,
                        fontSize: 15,
                        // fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  // color: Color.fromRGBO(251, 252, 254, 1),
                  ),
            ),
            // Container(
            //   height: 20,
            //   margin: EdgeInsets.only(top: 0, bottom: 10),
            //   decoration: BoxDecoration(
            //     color: Color.fromRGBO(251, 252, 254, 1),
            //     boxShadow: [
            //       new BoxShadow(
            //         color: Colors.black12,
            //         offset: new Offset(0, -5.0),
            //         blurRadius: 2.0,
            //       )
            //     ],
            //   ),
            // ),
            ButtonDrawMenu(
              actionButton: () {
                routes.menu = "execution";
                Navigator.of(context).pushReplacementNamed('/execution');
                apiProvider.currentPage = 0;
              },
              nameButton: 'Execução',
              iconButton: icons.iconsColors == true
                  ? executionIconColor(xwidth: 100)
                  : Icon(MenuIcons.menu_execution),
            ),
            ButtonDrawMenu(
              actionButton: () {
                routes.menu = "operational";
                Navigator.of(context).pushReplacementNamed('/operational');
                apiProvider.currentPage = 0;
              },
              nameButton: 'Operacional',
              iconButton: icons.iconsColors == true
                  ? operationalIconColor(xwidth: 100)
                  : Icon(MenuIcons.menu_operational),
            ),
            ButtonDrawMenu(
              actionButton: () {
                routes.menu = "indicators";
                Navigator.of(context).pushReplacementNamed('/indicators');
                apiProvider.currentPage = 0;
              },
              nameButton: 'Indicadores',
              iconButton: icons.iconsColors == true
                  ? indicatorsIconColor(xwidth: 100)
                  : Icon(MenuIcons.menu_indicators),
            ),
            ButtonDrawMenu(
              actionButton: () {
                apiProvider.currentPage = 0;
              },
              nameButton: 'Controle Estatístico',
              iconButton: icons.iconsColors == true
                  ? statisticalControlIconColor(xwidth: 100)
                  : Icon(MenuIcons.menu_statistical_control),
            ),
            ButtonDrawMenu(
              actionButton: () {
                routes.menu = "supervisory";
                Navigator.of(context).pushReplacementNamed('/supervisory');
                apiProvider.currentPage = 0;
                // Navigator.of(context).pushReplacementNamed('/supervisory/stageArea/view');
              },
              nameButton: 'Supervisório',
              iconButton: icons.iconsColors == true
                  ? supervisoryIconColor(xwidth: 20)
                  : Icon(MenuIcons.menu_supervisory),
            ),
            ButtonDrawMenu(
              actionButton: () {
                routes.menu = "schedule";
                Navigator.of(context).pushReplacementNamed('/schedule');
                apiProvider.currentPage = 0;
              },
              nameButton: 'Agendamentos',
              iconButton: icons.iconsColors == true
                  ? productionOrdersIconColor(xwidth: 100)
                  : Icon(MenuIcons.menu_schedule),
            ),
            ButtonDrawMenu(
              actionButton: () {
                routes.menu = "patterns";
                Navigator.of(context).pushReplacementNamed('/patterns');
                apiProvider.currentPage = 0;
              },
              nameButton: 'Padrões',
              iconButton: icons.iconsColors == true
                  ? productScriptIconColor(xwidth: 100)
                  : Icon(MenuIcons.menu_patterns),
            ),
            ButtonDrawMenu(
              actionButton: () {
                routes.menu = "manufacture";
                Navigator.of(context).pushReplacementNamed('/manufacture');
                apiProvider.currentPage = 0;
              },
              nameButton: 'Manufatura',
              iconButton: icons.iconsColors == true
                  ? Icon(MenuIcons.menu_manufacture)
                  : Icon(MenuIcons.menu_manufacture),
            ),
            ButtonDrawMenu(
              actionButton: () {
                routes.menu = "inventory";
                Navigator.of(context).pushReplacementNamed('/inventory');
                apiProvider.currentPage = 0;
              },
              nameButton: 'Inventário',
              iconButton: icons.iconsColors == true
                  ? inventoryIconColor(xwidth: 100)
                  : Icon(MenuIcons.menu_inventory),
            ),
            ButtonDrawMenu(
              actionButton: () {
                routes.menu = "users";
                Navigator.of(context).pushReplacementNamed('/users');
                apiProvider.currentPage = 0;
              },
              nameButton: 'Usuários',
              iconButton: icons.iconsColors == true
                  ? Icon(MenuIcons.menu_users)
                  : Icon(MenuIcons.menu_users),
            ),
          ],
        ),
      ),
    );
  }
}
