import 'package:cbmes_v1/provider/global.provider.dart';
import 'package:cbmes_v1/provider/jsonx/jsonx.provider.dart';
import 'package:cbmes_v1/provider/routes.Provider.dart';
import 'package:cbmes_v1/ui/globalWidgets/buttonsBackForwad.dart';
import 'package:cbmes_v1/ui/pages/patterns/stageArea/documents/widgets/widget_paper_edit.dart';
import 'package:flutter/material.dart';
import 'package:cbmes_v1/ui/appBar/components/custom_drawer.dart';
import 'package:cbmes_v1/ui/appBar/custom_appBar.dart';
import 'package:provider/provider.dart';
// import 'package:cbmes_v1/ui/floatingMenu/fabmenu.dart';

class PatternsDocumentsEdit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Routes routes = Provider.of<Routes>(context);
    var routeBar = ModalRoute.of(context).settings.name;

    GlobalProvider bloc = Provider.of<GlobalProvider>(context);
    final dynamic obj = bloc.getDynamicModel();
    routes.sid = obj.name;

    JsonX bc = Provider.of<JsonX>(context);
    bc.edit = true;

    return Scaffold(
      // floatingActionButton: FabMenu(),
      appBar: CustomAppBar(routeBar),
      drawer: CustomDrawer(),
      body: Container(
        padding: EdgeInsets.only(top: 30, left: 30, right: 30, bottom: 30),
        child: Column(
          children: [
            ButtonsBackForward(back: true, forward: false, size: 30.0),
            SizedBox(
              height: 20,
            ),
            Expanded(
              // flex: 10,
              child: DocumentPaperEdit(),
            ),
          ],
        ),
      ),
    );
  }
}
