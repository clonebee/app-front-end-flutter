import 'package:cbmes_v1/provider/operational.provider.dart';
import 'package:cbmes_v1/provider/themes/themes.provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OperationalProgress extends StatefulWidget {
  final sId;
  const OperationalProgress({Key key, @required this.sId}) : super(key: key);

  @override
  _OperationalProgressState createState() => _OperationalProgressState();
}

class _OperationalProgressState extends State<OperationalProgress> {
  @override
  Widget build(BuildContext context) {
    OperationalBloc op = Provider.of<OperationalBloc>(context);
    ThemesCB themesCB = Provider.of<ThemesCB>(context);

    return Column(
      children: [
        Container(
          width: 270,
          height: 10,
          decoration: BoxDecoration(
            color: themesCB.backColor,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                offset: Offset(5, 2),
                blurRadius: 5,
              )
            ],
            border: Border.all(width: 0.5, color: op.touchColor[widget.sId]),
            borderRadius: BorderRadius.all(Radius.circular(3)),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(3)),
            child: op.linearProgressIndicator(),
          ),
        ),
        // SizedBox(height: 5),
        // Container(
        //   width: 270,
        //   height: 10,
        //   decoration: BoxDecoration(
        //     boxShadow: [
        //       BoxShadow(
        //         color: Colors.black12,
        //         offset: Offset(5, 2),
        //         blurRadius: 5,
        //       )
        //     ],
        //     border: Border.all(width: 0.5, color: Colors.red),
        //     borderRadius: BorderRadius.all(Radius.circular(3)),
        //   ),
        //   child: ClipRRect(
        //     borderRadius: BorderRadius.all(Radius.circular(3)),
        //     child: LinearProgressIndicator(
        //       backgroundColor: Colors.white,
        //       valueColor: new AlwaysStoppedAnimation<Color>(Colors.red),
        //       minHeight: 10,
        //       value: 0.25,
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
