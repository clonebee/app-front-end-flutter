import 'package:cbmes_v1/provider/global.provider.dart';
import 'package:cbmes_v1/ui/pages/inventory/stageArea/documents/widgets/views/actuators.view.dart';
import 'package:cbmes_v1/ui/pages/inventory/stageArea/documents/widgets/views/devices.view.dart';
import 'package:cbmes_v1/ui/pages/inventory/stageArea/documents/widgets/views/equipments.view.dart';
import 'package:cbmes_v1/ui/pages/inventory/stageArea/documents/widgets/views/sector.view.dart';
import 'package:cbmes_v1/ui/pages/inventory/stageArea/documents/widgets/views/sensors.view.dart';
import 'package:cbmes_v1/ui/pages/inventory/stageArea/documents/widgets/views/transports.view.dart';
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

    if (bloc.stageArea == 'sectors') {
      return SectorView();
    }
    if (bloc.stageArea == 'equipments') {
      return EquipmentsView();
    }
    if (bloc.stageArea == 'devices') {
      return DevicesView();
    }
    if (bloc.stageArea == 'sensors') {
      return SensorsView();
    }
    if (bloc.stageArea == 'actuators') {
      return ActuatorsView();
    }
    if (bloc.stageArea == 'transports') {
      return TransportsView();
    } else {
      return Center(child: Text("Nenhum item encontrado."));
    }
  }
}
