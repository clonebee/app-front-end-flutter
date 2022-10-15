import 'package:cbmes_v1/provider/global.provider.dart';
import 'package:cbmes_v1/ui/pages/inventory/stageArea/add/widget/forms/actuators.form.dart';
import 'package:cbmes_v1/ui/pages/inventory/stageArea/add/widget/forms/devices.form.dart';
import 'package:cbmes_v1/ui/pages/inventory/stageArea/add/widget/forms/equipments.form.dart';
import 'package:cbmes_v1/ui/pages/inventory/stageArea/add/widget/forms/sectors.form.dart';
import 'package:cbmes_v1/ui/pages/inventory/stageArea/add/widget/forms/sensors.form.dart';
import 'package:cbmes_v1/ui/pages/inventory/stageArea/add/widget/forms/transports.form.dart';
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

    if (bloc.stageArea == 'sectors') {
      return SectorForm();
    }
    if (bloc.stageArea == 'equipments') {
      return EquipmentsForm();
    }
    if (bloc.stageArea == 'devices') {
      return DevicesForm();
    }
    if (bloc.stageArea == 'sensors') {
      return SensorsForm();
    }
    if (bloc.stageArea == 'actuators') {
      return ActuatorsForm();
    }
    if (bloc.stageArea == 'transports') {
      return TransportsForm();
    } else {
      return Center(child: Text("Nenhum item encontrado."));
    }
  }
}
