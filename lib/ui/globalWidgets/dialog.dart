import 'package:cbmes_v1/provider/apiProvider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DialogProgress extends StatefulWidget {
  @override
  _DialogProgressState createState() => _DialogProgressState();
}

class _DialogProgressState extends State<DialogProgress> {
  @override
  Widget build(BuildContext context) {
    APIProvider api = Provider.of<APIProvider>(context);
    return CupertinoAlertDialog(
      title: Column(
        children: [
          Text("Aguarde. Enviando requisição ao servidor."),
        ],
      ),
      content: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CupertinoActivityIndicator(),
            Text("${api.progress}%"),
          ],
        ),
      ),
      actions: [],
    );
  }
}

class DialogError extends StatefulWidget {
  @override
  _DialogErrorState createState() => _DialogErrorState();
}

class _DialogErrorState extends State<DialogError> {
  @override
  Widget build(BuildContext context) {
    APIProvider api = Provider.of<APIProvider>(context);
    return CupertinoAlertDialog(
      title: Text("ERRO. Tente novamente."),
      content: Column(
        children: [
          Text("\n Error code -> ${api.response}\n\n"),
          Text("${api.msgError}"),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text("OK"),
        )
      ],
    );
  }
}
