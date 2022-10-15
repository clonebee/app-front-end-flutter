import 'package:cbmes_v1/provider/apiProvider.dart';
import 'package:cbmes_v1/settings.dart';
import 'package:cbmes_v1/ui/globalWidgets/dialog_progress.dart';
import 'package:cbmes_v1/ui/pages/execution/stageArea/documents/documents.dart';
import 'package:cbmes_v1/ui/pages/execution/stageArea/documents/view.balance.dart';
import 'package:cbmes_v1/ui/pages/execution/stageArea/documents/view.hourglass.dart';
import 'package:cbmes_v1/ui/pages/indicators/indicators_apps.dart';
import 'package:cbmes_v1/ui/pages/indicators/stageArea/add/add.dart';
import 'package:cbmes_v1/ui/pages/indicators/stageArea/documents/documents.dart';
import 'package:cbmes_v1/ui/pages/indicators/stageArea/documents/edit.dart';
import 'package:cbmes_v1/ui/pages/indicators/stageArea/documents/view.dart';
import 'package:cbmes_v1/ui/pages/manufacture/manufacture_apps.dart';
import 'package:cbmes_v1/ui/pages/manufacture/stageArea/add/add.dart';
import 'package:cbmes_v1/ui/pages/manufacture/stageArea/documents/documents.dart';
import 'package:cbmes_v1/ui/pages/manufacture/stageArea/documents/edit.dart';
import 'package:cbmes_v1/ui/pages/manufacture/stageArea/documents/view.dart';
import 'package:cbmes_v1/ui/pages/no_network.dart';
import 'package:cbmes_v1/ui/pages/operational/operational.view.dart';
import 'package:cbmes_v1/ui/pages/patterns/patterns_apps.dart';
import 'package:cbmes_v1/ui/pages/patterns/stageArea/add/add.dart';
import 'package:cbmes_v1/ui/pages/patterns/stageArea/documents/documents.dart';
import 'package:cbmes_v1/ui/pages/patterns/stageArea/documents/edit.dart';
import 'package:cbmes_v1/ui/pages/patterns/stageArea/documents/view.dart';
import 'package:cbmes_v1/ui/pages/schedule/schedule_apps.dart';
import 'package:cbmes_v1/ui/pages/schedule/stageArea/add/add.dart';
import 'package:cbmes_v1/ui/pages/schedule/stageArea/documents/documents.dart';
import 'package:cbmes_v1/ui/pages/schedule/stageArea/documents/edit.dart';
import 'package:cbmes_v1/ui/pages/schedule/stageArea/documents/view.dart';
import 'package:cbmes_v1/ui/pages/supervisory/stageArea/add/add.dart';
import 'package:cbmes_v1/ui/pages/supervisory/stageArea/documents/documents.dart';
import 'package:cbmes_v1/ui/pages/supervisory/stageArea/documents/edit.dart';
import 'package:cbmes_v1/ui/pages/supervisory/stageArea/documents/view.dart';
import 'package:cbmes_v1/ui/pages/supervisory/supervisory_apps.dart';
import 'package:cbmes_v1/ui/pages/users/stageArea/add/add.dart';
import 'package:cbmes_v1/ui/pages/users/stageArea/documents/documents.dart';
import 'package:cbmes_v1/ui/pages/users/stageArea/documents/edit.dart';
import 'package:cbmes_v1/ui/pages/users/stageArea/documents/view.dart';
import 'package:cbmes_v1/ui/pages/users/users_apps.dart';
import 'package:flutter/material.dart';
import 'package:cbmes_v1/main.dart';
// import 'package:cbmes_v1/ui/globalWidgets/qr_code.dart';
import 'package:cbmes_v1/ui/pages/inventory/inventory_apps.dart';
import 'package:cbmes_v1/ui/pages/inventory/stageArea/add/add.dart';
import 'package:cbmes_v1/ui/pages/inventory/stageArea/documents/documents.dart';
import 'package:cbmes_v1/ui/pages/inventory/stageArea/documents/edit.dart';
import 'package:cbmes_v1/ui/pages/inventory/stageArea/documents/view.dart';
import 'package:provider/provider.dart';

class Routes extends ChangeNotifier {
  var sid;
  var routesRoutes;
  String menu = "root";
  String route;
  String routeEdit;
  String stageArea = "...";
  String backRoute;
  String forwardRoute;
  bool listViewGrid = true;

  getListViewGrid(bool status) {
    listViewGrid = status;
    notifyListeners();
  }

  setBackRoute(String statusRoute) {
    backRoute = statusRoute;
    notifyListeners();
    // print('Rota anterior: $backRoute');
  }

  setForwardRoute(String statusRoute) {
    forwardRoute = statusRoute;
    notifyListeners();
    // print('Rota próxima: $forwardRoute');
  }

  var routes = <String, String>{
    'LoginPage': '',
    'NoNetwork': '/no_network',
    'DialogProgress': '/dialog_progress',
    'LoaderUser': 'loaderUser',
    'HomePage': '/',
    'SettingsPage': '/settingsPage',
    'QRViewCB': '/module/qr_code',
    'Upload': '/pages/uploadDownload',
  };

  var routesAppUsers = <String, String>{
    'usersApps': '/users',
    'stageArea': '/users/stageArea/documents',
    'usersStageAreaDocumentsView': '/users/stageArea/view',
    'usersStageAreaDocumentsEdit': 'users/stageArea/documents/edit.dart',
    'usersStageAreaDocumentsAdd': '/users/stageArea/add',
  };

  var routesAppInventory = <String, String>{
    'inventoryApps': '/inventory',
    'stageArea': '/inventory/stageArea/documents',
    'inventoryStageAreaDocumentsView': '/inventory/stageArea/view',
    'inventoryStageAreaDocumentsEdit':
        'inventory/stageArea/documents/edit.dart',
    'inventoryStageAreaDocumentsAdd': '/inventory/stageArea/add',
  };

  var routesAppPatterns = <String, String>{
    'patternsApps': "/patterns",
    'stageArea': '/patterns/stageArea/documents',
    'patternsStageAreaDocumentsView': '/patterns/stageArea/view',
    'patternsStageAreaDocumentsEdit': 'patterns/stageArea/documents/edit.dart',
    'patternsStageAreaDocumentsAdd': '/patterns/stageArea/add',
  };

  var routesAppManufacture = <String, String>{
    'manufactureApps': "/manufacture",
    'stageArea': '/manufacture/stageArea/documents',
    'manufactureStageAreaDocumentsView': '/manufacture/stageArea/view',
    'manufactureStageAreaDocumentsEdit':
        'manufacture/stageArea/documents/edit.dart',
    'manufactureStageAreaDocumentsAdd': '/manufacture/stageArea/add',
  };

  var routesExecution = <String, String>{
    'execution': '/execution',
    'executionStageAreaDocumentsViewBalance': '/schedule/stageArea/viewBalance',
    'executionStageAreaDocumentsViewHourGlass':
        '/schedule/stageArea/viewHourGlass',
  };

  var routesAppSchedule = <String, String>{
    'scheduleApps': "/schedule",
    'stageArea': '/schedule/stageArea/documents',
    'scheduleStageAreaDocumentsView': '/schedule/stageArea/view',
    'scheduleStageAreaDocumentsEdit': 'schedule/stageArea/documents/edit.dart',
    'scheduleStageAreaDocumentsAdd': '/schedule/stageArea/add',
  };

  var routesAppSupervisory = <String, String>{
    'supervisoryApps': "/supervisory",
    'stageArea': '/supervisory/stageArea/documents',
    'supervisoryStageAreaDocumentsView': '/supervisory/stageArea/view',
    'supervisoryStageAreaDocumentsEdit':
        'supervisory/stageArea/documents/edit.dart',
    'supervisoryStageAreaDocumentsAdd': '/supervisory/stageArea/add',
  };

  var routesAppOperational = <String, String>{
    'operational': '/operational',
  };

  var routesAppIndicators = <String, String>{
    'indicatorsApps': "/indicators",
    'stageArea': '/indicators/stageArea/documents',
    'indicatorsStageAreaDocumentsView': '/indicators/stageArea/view',
    'indicatorsStageAreaDocumentsEdit':
        'indicators/stageArea/documents/edit.dart',
    'indicatorsStageAreaDocumentsAdd': '/indicators/stageArea/add',
  };

  getRoutes() {
    return routesRoutes = {
      routes['LoginPage']: (context) => LoginPage(),
      routes['NoNetwork']: (context) => NoNetwork(),
      routes['DialogProgress']: (context) => DialogProgress(),
      routes['LoaderUser']: (context) => LoaderUser(),
      routes['HomePage']: (context) => HomePage(),
      routes['SettingsPage']: (context) => SettingsPage(),
      // routes['QRViewCB']: (context) => QRViewCB(),
      routesAppOperational['operational']: (context) => OperationalView(),
      //
      routesAppIndicators['indicatorsApps']: (context) => IndicatorsApps(),
      routesAppIndicators['stageArea']: (context) => IndicatorsDocuments(),
      routesAppIndicators['indicatorsStageAreaDocumentsView']: (context) =>
          IndicatorsDocumentsView(),
      routesAppIndicators['indicatorsStageAreaDocumentsEdit']: (context) =>
          IndicatorsDocumentsEdit(),
      routesAppIndicators['indicatorsStageAreaDocumentsAdd']: (context) =>
          IndicatorsDocumentsAdd(),
      //
      routesAppSupervisory['supervisoryApps']: (context) => SupervisoryApps(),
      routesAppSupervisory['stageArea']: (context) => SupervisoryDocuments(),
      routesAppSupervisory['supervisoryStageAreaDocumentsView']: (context) =>
          SupervisoryDocumentsView(),
      routesAppSupervisory['supervisoryStageAreaDocumentsEdit']: (context) =>
          SupervisoryDocumentsEdit(),
      routesAppSupervisory['supervisoryStageAreaDocumentsAdd']: (context) =>
          SupervisoryDocumentsAdd(),
      //
      routesExecution['execution']: (context) => ExecutionDocuments(),
      routesExecution['executionStageAreaDocumentsViewBalance']: (context) =>
          ExecutionDocumentsViewBalance(),
      routesExecution['executionStageAreaDocumentsViewHourGlass']: (context) =>
          ExecutionDocumentsViewHourGlass(),
      //
      routesAppSchedule['scheduleApps']: (context) => ScheduleApps(),
      routesAppSchedule['stageArea']: (context) => ScheduleDocuments(),
      routesAppSchedule['scheduleStageAreaDocumentsView']: (context) =>
          ScheduleDocumentsView(),
      routesAppSchedule['scheduleStageAreaDocumentsEdit']: (context) =>
          ScheduleDocumentsEdit(),
      routesAppSchedule['scheduleStageAreaDocumentsAdd']: (context) =>
          ScheduleDocumentsAdd(),
      //
      routesAppPatterns['patternsApps']: (context) => PatternsApps(),
      routesAppPatterns['stageArea']: (context) => PatternsDocuments(),
      routesAppPatterns['patternsStageAreaDocumentsView']: (context) =>
          PatternsDocumentsView(),
      routesAppPatterns['patternsStageAreaDocumentsEdit']: (context) =>
          PatternsDocumentsEdit(),
      routesAppPatterns['patternsStageAreaDocumentsAdd']: (context) =>
          PatternsDocumentsAdd(),
      //
      routesAppManufacture['manufactureApps']: (context) => ManufactureApps(),
      routesAppManufacture['stageArea']: (context) => ManufactureDocuments(),
      routesAppManufacture['manufactureStageAreaDocumentsView']: (context) =>
          ManufactureDocumentsView(),
      routesAppManufacture['manufactureStageAreaDocumentsEdit']: (context) =>
          ManufactureDocumentsEdit(),
      routesAppManufacture['manufactureStageAreaDocumentsAdd']: (context) =>
          ManufactureDocumentsAdd(),
      //
      routesAppInventory['inventoryApps']: (context) => InventoryApps(),
      routesAppInventory['stageArea']: (context) => InventoryDocuments(),
      routesAppInventory['inventoryStageAreaDocumentsView']: (context) =>
          InventoryDocumentsView(),
      routesAppInventory['inventoryStageAreaDocumentsEdit']: (context) =>
          InventoryDocumentsEdit(),
      routesAppInventory['inventoryStageAreaDocumentsAdd']: (context) =>
          InventoryDocumentsAdd(),
      //
      routesAppUsers['usersApps']: (context) => UsersApps(),
      routesAppUsers['stageArea']: (context) => UsersDocuments(),
      routesAppUsers['usersStageAreaDocumentsView']: (context) =>
          UsersDocumentsView(),
      routesAppUsers['usersStageAreaDocumentsEdit']: (context) =>
          UsersDocumentsEdit(),
      routesAppUsers['usersStageAreaDocumentsAdd']: (context) =>
          UsersDocumentsAdd(),
    };
  }

  Widget arrowIconSpace(BuildContext context) {
    return Icon(
      Icons.arrow_forward_ios_rounded,
      color: Theme.of(context).colorScheme.secondary,
      size: 15,
    );
  }

  setRoutesTitle(String actualRoute, BuildContext context) {
    if (menu == "root") {
      return defineRoute(
        actualRoute: actualRoute,
        context: context,
        ptName: "Clone Bee Manufacturing Execution System",
        enName: "root",
        mapp: null,
      );
    } else if (menu == "settings") {
      return defineRoute(
        actualRoute: actualRoute,
        context: context,
        ptName: "Configurações",
        enName: "settingsPage",
        mapp: null,
      );
    } else if (menu == "execution") {
      return defineRoute(
        actualRoute: actualRoute,
        context: context,
        ptName: "Execução",
        enName: "execution",
        mapp: routesExecution,
      );
    } else if (menu == "operational") {
      return defineRoute(
        actualRoute: actualRoute,
        context: context,
        ptName: "Operacional",
        enName: "operational",
        mapp: routesAppSchedule,
      );
    } else if (menu == "indicators") {
      return defineRoute(
        actualRoute: actualRoute,
        context: context,
        ptName: "Indicadores",
        enName: "indicators",
        mapp: routesAppIndicators,
      );
    } else if (menu == "supervisory") {
      return defineRoute(
        actualRoute: actualRoute,
        context: context,
        ptName: "Supervisório",
        enName: "supervisory",
        mapp: routesAppSupervisory,
      );
    } else if (menu == "schedule") {
      return defineRoute(
        actualRoute: actualRoute,
        context: context,
        ptName: "Agendamentos",
        enName: "schedule",
        mapp: routesAppSchedule,
      );
    } else if (menu == "patterns") {
      return defineRoute(
        actualRoute: actualRoute,
        context: context,
        ptName: "Padrões",
        enName: "patterns",
        mapp: routesAppPatterns,
      );
    } else if (menu == "manufacture") {
      return defineRoute(
        actualRoute: actualRoute,
        context: context,
        ptName: "Manufatura",
        enName: "manufacture",
        mapp: routesAppManufacture,
      );
    } else if (menu == "inventory") {
      return defineRoute(
        actualRoute: actualRoute,
        context: context,
        ptName: "Inventário",
        enName: "inventory",
        mapp: routesAppInventory,
      );
    } else if (menu == "users") {
      return defineRoute(
        actualRoute: actualRoute,
        context: context,
        ptName: "Usuários",
        enName: "users",
        mapp: routesAppUsers,
      );
    } else {
      return null;
    }
  }

  Widget defineRoute(
      {String actualRoute,
      BuildContext context,
      String ptName,
      String enName,
      Map<String, String> mapp}) {
    APIProvider apiProvider = Provider.of<APIProvider>(context, listen: false);

    // print(actualRoute);
    if (actualRoute == "/") {
      return Row(
        children: [
          TextButton(
            onPressed: () {},
            child: Text(ptName),
          ),
        ],
      );
    } else if (actualRoute == "/$enName") {
      return Row(
        children: [
          TextButton(
            onPressed: () {},
            child: Text(ptName),
          ),
        ],
      );
    } else if (actualRoute == "/$enName") {
      return Row(
        children: [
          TextButton(
            onPressed: () {
              apiProvider.currentPage = 0;
              Navigator.of(context).pushReplacementNamed(mapp['${enName}Apps']);
            },
            child: Text(ptName),
          ),
        ],
      );
    } else if (actualRoute == "/$enName/stageArea/documents") {
      return Row(
        children: [
          TextButton(
            onPressed: () {
              apiProvider.currentPage = 0;
              Navigator.of(context).pushReplacementNamed(mapp['${enName}Apps']);
            },
            child: Text(ptName),
          ),
          arrowIconSpace(context),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(mapp['stageArea']);
            },
            child: Text(stageArea),
          ),
          arrowIconSpace(context),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(mapp['stageArea']);
            },
            child: Text('Documentos'),
          ),
        ],
      );
    } else if (actualRoute == "/$enName/stageArea/view") {
      return Row(
        children: [
          TextButton(
            onPressed: () {
              apiProvider.currentPage = 0;
              Navigator.of(context).pushReplacementNamed(mapp['${enName}Apps']);
            },
            child: Text(ptName),
          ),
          arrowIconSpace(context),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(mapp['stageArea']);
            },
            child: Text(stageArea),
          ),
          arrowIconSpace(context),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(mapp['stageArea']);
            },
            child: Text('Documentos'),
          ),
          arrowIconSpace(context),
          TextButton(
            onPressed: () {},
            child: Text('$sid'),
          ),
        ],
      );
    } else if (actualRoute == "$enName/stageArea/documents/edit.dart") {
      return Row(
        children: [
          TextButton(
            onPressed: () {
              apiProvider.currentPage = 0;
              Navigator.of(context).pushReplacementNamed(mapp['${enName}Apps']);
            },
            child: Text(ptName),
          ),
          arrowIconSpace(context),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(mapp['stageArea']);
            },
            child: Text(stageArea),
          ),
          arrowIconSpace(context),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(mapp['stageArea']);
            },
            child: Text('Documentos'),
          ),
          arrowIconSpace(context),
          TextButton(
            onPressed: () {},
            child: Text('$sid'),
          ),
        ],
      );
    } else if (actualRoute == "/$enName/stageArea/add") {
      return Row(
        children: [
          TextButton(
            onPressed: () {
              apiProvider.currentPage = 0;
              Navigator.of(context).pushReplacementNamed(mapp['${enName}Apps']);
            },
            child: Text(ptName),
          ),
          arrowIconSpace(context),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(mapp['stageArea']);
            },
            child: Text(stageArea),
          ),
          arrowIconSpace(context),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(mapp['stageArea']);
            },
            child: Text('Documentos'),
          ),
          arrowIconSpace(context),
          TextButton(
            onPressed: () {},
            child: Text('Adicionar'),
          ),
        ],
      );
    } else {
      return TextButton(
        onPressed: () {},
        child: Text('Não encontrado'),
      );
    }
  }
}
