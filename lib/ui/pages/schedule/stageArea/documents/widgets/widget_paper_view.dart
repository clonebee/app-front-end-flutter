import 'package:cbmes_v1/provider/global.provider.dart';
import 'package:cbmes_v1/ui/pages/schedule/stageArea/documents/widgets/view/production_orders.view.dart';
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

    if (bloc.stageArea == 'production-orders') {
      return ProductionOrdersView();
    } else {
      return Center(child: Text("Nenhum item encontrado."));
    }
  }
}
