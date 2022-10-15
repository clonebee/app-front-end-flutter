import 'package:cbmes_v1/provider/global.provider.dart';
import 'package:cbmes_v1/provider/themes/themes.provider.dart';
import 'package:cbmes_v1/ui/globalWidgets/myCustomScrollBehavior.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ControlStatusMenu extends StatefulWidget {
  final dynamic model;

  ControlStatusMenu({Key key, @required this.model}) : super(key: key);

  @override
  _ControlStatusMenuState createState() => _ControlStatusMenuState(model: model);
}

class _ControlStatusMenuState extends State<ControlStatusMenu> {
  dynamic model;

  _ControlStatusMenuState({@required this.model});

  @override
  Widget build(BuildContext context) {
    GlobalProvider g = Provider.of<GlobalProvider>(context);
    ThemesCB themesCB = Provider.of<ThemesCB>(context);

    return Container(
      height: 45,
      // margin: EdgeInsets.only(right: 40),
      decoration: BoxDecoration(
        color: themesCB.backColor,
        border: Border.all(width: 0.5, color: themesCB.borderColor),
        borderRadius: BorderRadius.all(Radius.circular(3)),
        boxShadow: [themesCB.shadow],
      ),
      child: ScrollConfiguration(
        behavior: MyCustomScrollBehavior(),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              IconButton(
                icon: Container(
                  decoration: BoxDecoration(
                    color: model.orderStatus == "play" ? Colors.lightGreen : Colors.black38,
                    borderRadius: BorderRadius.all(Radius.circular(3)),
                  ),
                  child: Icon(
                    Icons.play_arrow_rounded,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  if (model.orderStatus != "stop") {
                    setState(() {
                      var a = model.orderStatus;
                      model.orderStatus = "play";

                      var modelx = {
                        "_id": model.sId,
                        "order_status": model.orderStatus,
                      };

                      g.send(
                        id: '/${model.sId}',
                        model: modelx,
                        context: context,
                        create: false,
                        apiRoute: g.apiRoute,
                        withToken: true,
                        funcAcept: () {},
                        funcNoAcept: () {
                          model.orderStatus = a;
                        },
                        message: "Documento ATUALIZADO com sucesso.",
                      );
                    });
                  }
                },
              ),
              // IconButton(
              //   icon: Container(
              //     decoration: BoxDecoration(
              //       color: model.orderStatus == "pause" ? Colors.lightBlue : Colors.black38,
              //       borderRadius: BorderRadius.all(Radius.circular(3)),
              //       // boxShadow: [
              //       //   BoxShadow(
              //       //     color: Colors.black.withOpacity(0.1),
              //       //     spreadRadius: 5,
              //       //     blurRadius: 7,
              //       //     offset: Offset(0, 3), // changes position of shadow
              //       //   ),
              //       // ],
              //     ),
              //     child: Icon(
              //       Icons.pause_rounded,
              //       color: Colors.white,
              //     ),
              //   ),
              //   onPressed: () {
              //     if (model.orderStatus != "stop") {
              //       setState(() {
              //         model.orderStatus = "pause";
              //         var modelx = {
              //           "_id": model.sId,
              //           "order_status": model.orderStatus,
              //         };

              //         jx.send(context: context, jsonx: modelx, create: false);
              //       });
              //     }
              //   },
              // ),
              IconButton(
                icon: Container(
                  decoration: BoxDecoration(
                    color: model.orderStatus == "stop" ? Colors.red : Colors.black38,
                    borderRadius: BorderRadius.all(Radius.circular(3)),
                  ),
                  child: Icon(
                    Icons.stop_rounded,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    barrierDismissible: true,
                    builder: (BuildContext context) {
                      return CupertinoAlertDialog(
                        title: Text("Confirme para Prosseguir"),
                        content: Material(
                          color: Colors.transparent,
                          child: Column(
                            children: [
                              Text(
                                "\n Realmente deseja concluir esta ordem? Após confirmar, não será possível executá-la novamente.\n\n",
                                style: themesCB.regularStyleText,
                              ),
                            ],
                          ),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text("Cancelar"),
                          ),
                          TextButton(
                            onPressed: () {
                              setState(() async {
                                Navigator.of(context).pop();
                                var a = model.orderStatus;
                                model.orderStatus = "stop";

                                var modelx = {
                                  "_id": model.sId,
                                  "order_status": model.orderStatus,
                                };
                                g.send(
                                  id: '/${model.sId}',
                                  model: modelx,
                                  context: context,
                                  create: false,
                                  apiRoute: g.apiRoute,
                                  withToken: true,
                                  funcAcept: () {},
                                  funcNoAcept: () {
                                    model.orderStatus = a;
                                  },
                                  message: "Documento ATUALIZADO com sucesso.",
                                );
                              });
                            },
                            child: Text(
                              "Concluir Ordem",
                              style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          )
                        ],
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
