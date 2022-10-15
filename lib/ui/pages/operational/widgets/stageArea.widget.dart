import 'package:cbmes_v1/provider/operational.provider.dart';
import 'package:cbmes_v1/provider/themes/themes.provider.dart';
import 'package:cbmes_v1/ui/globalWidgets/myCustomScrollBehavior.dart';
import 'package:cbmes_v1/ui/globalWidgets/photoPerfil.dart';
import 'package:cbmes_v1/ui/pages/operational/widgets/listTasks.widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OperationalStageArea extends StatefulWidget {
  @override
  _OperationalStageAreaState createState() => _OperationalStageAreaState();
}

class _OperationalStageAreaState extends State<OperationalStageArea> {
  @override
  void initState() {
    super.initState();
  }

  bool init = true;
  final ScrollController sc1 = ScrollController();

  Widget build(BuildContext context) {
    OperationalBloc op = Provider.of<OperationalBloc>(context);
    ThemesCB themesCB = Provider.of<ThemesCB>(context);

    if (init == true) {
      init = false;
      op.loginOperator = false;
      op.getOperationalAll(context: context, statusFilter: '');
    }

    return Container(
      // width: 500,
      alignment: Alignment.center,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 80,
                  height: 80,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: themesCB.backColor,
                    gradient: themesCB.gradient2,
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                  ),
                  child: photoPerfil(
                    context: context,
                    obj: op.operatorUser.filesUrl["img1"],
                    circularSize: 70,
                    iconSize: 30,
                  ),
                ),
                SizedBox(width: 15),
                Expanded(
                  child: ScrollConfiguration(
                    behavior: MyCustomScrollBehavior(),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      controller: sc1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: RichText(
                              text: TextSpan(
                                style: DefaultTextStyle.of(context).style,
                                children: <TextSpan>[
                                  TextSpan(
                                    text: "Colaborador(a): ",
                                    style: themesCB.regularStyleText,
                                  ),
                                  TextSpan(
                                    text: op.operatorUser.name,
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                              "ID Operador: ${op.operatorUser.positionCompanyId}"),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  height: 40,
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: themesCB.backColor,
                    border: Border.all(width: 0.5, color: themesCB.borderColor),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .pushReplacementNamed("/operational");
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.login_outlined,
                            size: 16,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "SAIR",
                            style: themesCB.regularStyleText,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(7),
            decoration: BoxDecoration(
              color: themesCB.backColor,
              border: Border.all(width: 0.5, color: themesCB.borderColor),
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            child: Center(
              child: ScrollConfiguration(
                behavior: MyCustomScrollBehavior(),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(
                          style: DefaultTextStyle.of(context).style,
                          children: <TextSpan>[
                            TextSpan(
                              text: "Setor: ",
                              style: TextStyle(
                                fontSize: 15,
                                color: themesCB.fontColor,
                              ),
                            ),
                            TextSpan(
                              text: op.nameSector,
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                color: themesCB.fontColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 20),
                      RichText(
                        text: TextSpan(
                          style: DefaultTextStyle.of(context).style,
                          children: <TextSpan>[
                            TextSpan(
                              text: "Recurso: ",
                              style: TextStyle(
                                fontSize: 15,
                                color: themesCB.fontColor,
                              ),
                            ),
                            TextSpan(
                              text: op.nameResource,
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                color: themesCB.fontColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          // SizedBox(height: 30),
          ListTasks(),
        ],
      ),
    );
  }
}
