import 'package:cbmes_v1/provider/apiProvider.dart';
import 'package:cbmes_v1/provider/global.provider.dart';
import 'package:cbmes_v1/provider/operational.provider.dart';
import 'package:cbmes_v1/ui/globalWidgets/myCustomScrollBehavior.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cbmes_v1/ui/appBar/components/custom_drawer.dart';
import 'package:cbmes_v1/ui/appBar/custom_appBar.dart';

import 'package:provider/provider.dart';

class OperationalView extends StatefulWidget {
  @override
  _OperationalViewState createState() => _OperationalViewState();
}

class _OperationalViewState extends State<OperationalView> {
  @override
  void initState() {
    super.initState();
  }

  bool init = true;

  @override
  Widget build(BuildContext context) {
    // Routes routes = Provider.of<Routes>(context);
    var routeBar = ModalRoute.of(context).settings.name;
    OperationalBloc op = Provider.of<OperationalBloc>(context);
    GlobalProvider g = Provider.of<GlobalProvider>(context);
    APIProvider apiProvider = Provider.of<APIProvider>(context);

    if (init == true) {
      init = false;
      apiProvider.progress = "0";

      g.apiRoute = "patterns/resources";
      g.stageArea = "resources";
      op.listResourses = ["1"];
      g.getDocumentsStageArea(
        context: context,
        apiRoute: 'patterns/resources',
        typeClass: 'resources',
        func: () {
          op.listResourses = g.allDocumentsStageArea;
        },
        id: '?&qty_docs_page=10000',
      );

      g.apiRoute = "users/users-operator";
      g.stageArea = "users-operator";
      op.listUsers = ["1"];
      g.getDocumentsStageArea(
        context: context,
        apiRoute: 'users/users-operator',
        typeClass: 'users-operator',
        func: () {
          op.listUsers = g.allDocumentsStageArea;
          g.stageArea = "operational";
        },
        id: '?&qty_docs_page=10000',
      );

      g.global = false;
      op.clear();
    }

    // routes.sid = model.name;

    return Scaffold(
      // floatingActionButton: FloatingMenu(
      //   add: routes.routesAppOperational['operational'],
      //   documents: routes.routesAppinventory['stageArea'],
      //   favorites: "",
      // ),
      appBar: CustomAppBar(routeBar),
      drawer: CustomDrawer(),
      body: g.allDocumentsStageArea == null && g.stageArea == "users"
          ? Center(
              child: CupertinoActivityIndicator(),
            )
          : Container(
              alignment: Alignment.topCenter,
              child: ScrollConfiguration(
                behavior: MyCustomScrollBehavior(),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: double.infinity,
                    child: ScrollConfiguration(
                      behavior: MyCustomScrollBehavior(),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            op.widgetStageArea,
                            //-------------------------------------------------------------------------
                            SizedBox(height: 30),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
    );
  }
}
