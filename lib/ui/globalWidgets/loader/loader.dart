import 'package:cbmes_v1/provider/apiProvider.dart';
import 'package:flutter/widgets.dart';
import 'package:cbmes_v1/ui/globalWidgets/loader/progress-indicator.widget.dart';
import 'package:provider/provider.dart';

class Loader extends StatelessWidget {
  final object;
  final Function callback;

  Loader({@required this.object, @required this.callback});

  @override
  Widget build(BuildContext context) {
    APIProvider api = Provider.of<APIProvider>(context);
    if (object == null)
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Aguarde. Recebendo documentos atualizados do servidor.",
              textAlign: TextAlign.center,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GenericProgressIndicator(),
                Text("${api.progress}%"),
              ],
            ),
          ],
        ),
      );

    if (object.length == 0)
      return Center(
        child: Text("Nenhum item encontrado."),
      );

    return callback(object);
  }
}
