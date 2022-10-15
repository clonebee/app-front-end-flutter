import 'package:cbmes_v1/ui/globalWidgets/stageAreaGlobal/widgets/widget_file_card.dart';
import 'package:flutter/material.dart';

Widget grid({@required List<dynamic> model}) {
  return GridView.builder(
    itemCount: model.length,
    itemBuilder: (BuildContext context, index) {
      return FileCard(model: model[index], index: index);
    },
    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        // childAspectRatio: 0.6,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10),
  );
}
