import 'package:cbmes_v1/provider/operational.provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OperationalShowDialog extends StatefulWidget {
  @override
  _OperationalShowDialogState createState() => _OperationalShowDialogState();
}

class _OperationalShowDialogState extends State<OperationalShowDialog> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    OperationalBloc op = Provider.of<OperationalBloc>(context);

    return AlertDialog(
      insetPadding: EdgeInsets.all(8.0),
      backgroundColor: Colors.transparent,
      elevation: 0,
      content: Container(
        width: 500,
        height: 385,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: op.backgroundColorDialog,
          // gradient: LinearGradient(
          //   colors: [
          //     Color.fromRGBO(237, 37, 36, 1),
          //     Color.fromRGBO(242, 113, 33, 1),
          //   ],
          // ),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(5, 2),
              blurRadius: 5,
            )
          ],
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            op.loginOperator == true
                ? Container(
                    child: Text(
                      "Carregar Dados do Operador",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  )
                : Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                style: DefaultTextStyle.of(context).style,
                                children: <TextSpan>[
                                  TextSpan(
                                    text: "Job: ",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                  TextSpan(
                                    text: op.modelObj.name,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                style: DefaultTextStyle.of(context).style,
                                children: <TextSpan>[
                                  TextSpan(
                                    text: "Ordem: ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "${op.modelObj.productionOrderName}",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                style: DefaultTextStyle.of(context).style,
                                children: <TextSpan>[
                                  TextSpan(
                                    text: "Task: ",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                  TextSpan(
                                    text: op.modelObj.name,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          child: IconButton(
                            onPressed: () {
                              op.clearEntryData();
                              Navigator.of(context).pop();
                            },
                            icon: Icon(
                              Icons.close_rounded,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 10),
              height: 300,
              child: op.entry,
            )
          ],
        ),
      ),
    );
  }
}
