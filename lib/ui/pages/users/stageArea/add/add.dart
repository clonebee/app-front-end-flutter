import 'package:flutter/material.dart';
import 'package:cbmes_v1/ui/appBar/components/custom_drawer.dart';
import 'package:cbmes_v1/ui/appBar/custom_appBar.dart';
import 'package:cbmes_v1/ui/pages/users/stageArea/add/widget/widget_paper_add.dart';
// import 'package:cbmes_v1/ui/floatingMenu/fabmenu.dart';

class UsersDocumentsAdd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var routeBar = ModalRoute.of(context).settings.name;

    return Scaffold(
      // floatingActionButton: FabMenu(),
      appBar: CustomAppBar(routeBar),
      drawer: CustomDrawer(),
      body: Container(
        padding: EdgeInsets.only(top: 30, left: 30, right: 30, bottom: 30),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Expanded(
              // flex: 10,
              child: DocumentPaperAdd(),
            ),
          ],
        ),
      ),
    );
  }
}
