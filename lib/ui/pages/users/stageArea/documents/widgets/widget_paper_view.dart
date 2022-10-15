import 'package:cbmes_v1/provider/global.provider.dart';
import 'package:cbmes_v1/ui/pages/users/stageArea/documents/widgets/views/users.view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DocumentPaperView extends StatefulWidget {
  @override
  _DocumentPaperViewState createState() => _DocumentPaperViewState();
}

class _DocumentPaperViewState extends State<DocumentPaperView> {
  @override
  Widget build(BuildContext context) {
    GlobalProvider g = Provider.of<GlobalProvider>(context);

    if (g.stageArea == 'users-admin' || g.stageArea == 'users-client' || g.stageArea == 'users-operator' || g.stageArea == 'usersId') {
      return UsersView();
    } else {
      return Center(child: Text("Nenhum item encontrado."));
    }
  }
}
