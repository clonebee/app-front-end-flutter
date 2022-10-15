import 'package:cbmes_v1/provider/global.provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DialogMessage extends StatefulWidget {
  final String message;

  const DialogMessage({Key key, @required this.message}) : super(key: key);
  @override
  _DialogMessageState createState() => _DialogMessageState();
}

class _DialogMessageState extends State<DialogMessage> {
  @override
  Widget build(BuildContext context) {
    GlobalProvider g = Provider.of<GlobalProvider>(context);

    g.showDialogProgress = true;

    // Routes routes = Provider.of<Routes>(context);

    return CupertinoAlertDialog(
      title: Column(
        children: [
          Text("Mensagem: "),
        ],
      ),
      content: Padding(
        padding: EdgeInsets.all(15.0),
        child: Text("${widget.message}"),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text("FECHAR"),
        )
      ],
    );
  }
}
