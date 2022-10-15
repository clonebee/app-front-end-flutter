import 'package:cbmes_v1/provider/operational.provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ButtonNumber extends StatefulWidget {
  final String text;

  const ButtonNumber({Key key, @required this.text}) : super(key: key);

  @override
  _ButtonNumberState createState() => _ButtonNumberState(text);
}

class _ButtonNumberState extends State<ButtonNumber> {
  final _text;

  _ButtonNumberState(this._text);

  @override
  Widget build(BuildContext context) {
    OperationalBloc op = Provider.of<OperationalBloc>(context);

    return Container(
      width: 50,
      height: 50,
      margin: EdgeInsets.all(5),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        border: Border.all(width: 0.5, color: Theme.of(context).colorScheme.secondary),
      ),
      child: TextButton(
        style: TextButton.styleFrom(
          shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
        ),
        onPressed: () {
          op.addKeyboardData(_text);
          op.setTextController();
        },
        child: Center(
          child: Text(
            _text,
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
