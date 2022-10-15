import 'package:cbmes_v1/provider/global.provider.dart';
import 'package:cbmes_v1/ui/pages/patterns/stageArea/add/widget/forms/resources.form.dart';
import 'package:cbmes_v1/ui/pages/patterns/stageArea/add/widget/forms/roadmaps.form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DocumentPaperAdd extends StatefulWidget {
  @override
  _DocumentPaperAddState createState() => _DocumentPaperAddState();
}

class _DocumentPaperAddState extends State<DocumentPaperAdd> {
  @override
  Widget build(BuildContext context) {
    GlobalProvider bloc = Provider.of<GlobalProvider>(context);

    if (bloc.stageArea == 'roadmaps') {
      return RoadMapForm();
    }
    if (bloc.stageArea == 'resources') {
      return ResourcesForm();
    } else {
      return Center(child: Text("Nenhum item encontrado."));
    }
  }
}
