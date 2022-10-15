import 'package:cbmes_v1/provider/global.provider.dart';
import 'package:cbmes_v1/ui/pages/patterns/stageArea/documents/widgets/view/resources.view.dart';
import 'package:cbmes_v1/ui/pages/patterns/stageArea/documents/widgets/view/roadmaps.view.dart';
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
    GlobalProvider bloc = Provider.of<GlobalProvider>(context);

    if (bloc.stageArea == 'roadmaps') {
      return RoadMapView();
    }
    if (bloc.stageArea == 'resources') {
      return ResourcesView();
    } else {
      return Center(child: Text("Nenhum item encontrado."));
    }
  }
}
