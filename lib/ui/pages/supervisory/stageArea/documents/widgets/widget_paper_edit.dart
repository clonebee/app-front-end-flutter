import 'package:cbmes_v1/provider/global.provider.dart';
import 'package:cbmes_v1/ui/pages/supervisory/stageArea/add/widget/forms/cbHardware.form.dart';
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
    GlobalProvider bloc = Provider.of<GlobalProvider>(context);

    if (bloc.stageArea == 'cb-hardwares') {
      return CBHardwareForm();
    } else {
      return Center(child: Text("Nenhum item encontrado."));
    }
  }
}
