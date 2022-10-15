import 'package:cbmes_v1/ui/globalWidgets/stageAreaGlobal/widgets/widget_file_line.dart';
import 'package:flutter/material.dart';

Widget list({@required List<dynamic> model}) {
  return ListView.builder(
      // padding: const EdgeInsets.all(8),
      itemCount: model.length,
      itemBuilder: (BuildContext context, int index) {
        return FileLine(
          model: model[index],
          index: index,
        );
      });
}
