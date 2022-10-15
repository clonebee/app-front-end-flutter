import 'package:cbmes_v1/provider/global.provider.dart';
import 'package:cbmes_v1/ui/pages/users/stageArea/add/widget/forms/users.form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DocumentPaperEdit extends StatefulWidget {
  @override
  _DocumentPaperEditState createState() => _DocumentPaperEditState();
}

class _DocumentPaperEditState extends State<DocumentPaperEdit> {
  @override
  Widget build(BuildContext context) {
    GlobalProvider g = Provider.of<GlobalProvider>(context);

    if (g.stageArea == 'users-admin' || g.stageArea == 'users-client' || g.stageArea == 'users-operator' || g.stageArea == 'usersId') {
      return UsersForm();
    } else {
      return Center(child: Text("Nenhum item encontrado."));
    }
  }
}
