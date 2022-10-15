import 'package:cbmes_v1/provider/operational.provider.dart';
import 'package:cbmes_v1/provider/themes/themes.provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InputDataPause extends StatefulWidget {
  @override
  _InputDataPauseState createState() => _InputDataPauseState();
}

class _InputDataPauseState extends State<InputDataPause> {
  @override
  void initState() {
    super.initState();
  }

  int cont = 0;

  validadtion(bool value) {
    if (value == true) {
      cont += 1;
    } else {
      cont += 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    OperationalBloc op = Provider.of<OperationalBloc>(context);
    ThemesCB themesCB = Provider.of<ThemesCB>(context);

    List pauseReason = [
      {
        "name": "Falta de Operador",
        "func": () {
          setState(() {
            op.lackOfOperator = !op.lackOfOperator;
            validadtion(op.lackOfOperator);
          });
        },
        "actives": op.lackOfOperator,
      },
      {
        "name": "Queima de Sensor",
        "func": () {
          setState(() {
            op.burntSensor = !op.burntSensor;
            validadtion(op.burntSensor);
          });
        },
        "actives": op.burntSensor,
      },
      {
        "name": "Falta de Energia",
        "func": () {
          setState(() {
            op.lackOfEnergy = !op.lackOfEnergy;
            validadtion(op.lackOfEnergy);
          });
        },
        "actives": op.lackOfEnergy,
      },
      {
        "name": "Falta de Matéria-prima",
        "func": () {
          setState(() {
            op.lackOfRawMaterial = !op.lackOfRawMaterial;
            validadtion(op.lackOfRawMaterial);
          });
        },
        "actives": op.lackOfRawMaterial,
      },
      {
        "name": "Falha desconhecida na máquina",
        "func": () {
          setState(() {
            op.unknownMachineFailure = !op.unknownMachineFailure;
            validadtion(op.unknownMachineFailure);
          });
        },
        "actives": op.unknownMachineFailure,
      },
      {
        "name": "Outros",
        "func": () {
          setState(() {
            op.others = !op.others;
            validadtion(op.others);
          });
        },
        "actives": op.others,
      },
    ];

    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: themesCB.backColor,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Container(
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                itemCount: pauseReason.length,
                itemBuilder: (BuildContext context, index) {
                  return ButtonPauseReason(
                    text: pauseReason[index]["name"],
                    active: pauseReason[index]["actives"],
                    func: pauseReason[index]["func"],
                  );
                },
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 100,
                    // childAspectRatio: 0.6,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
              ),
            ),
            SizedBox(height: 12),
            Container(
              width: double.infinity,
              height: 40,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  textStyle: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                  // onPrimary: Colors.white,
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ),
                onPressed: () {
                  op.inputDataPause(context: context, cont: cont);
                },
                child: Text("ENVIAR"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonPauseReason extends StatefulWidget {
  final String text;
  final bool active;
  final Function func;

  ButtonPauseReason(
      {@required this.text, @required this.active, @required this.func});

  @override
  _ButtonPauseReasonState createState() => _ButtonPauseReasonState();
}

class _ButtonPauseReasonState extends State<ButtonPauseReason> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      margin: EdgeInsets.all(5),
      decoration: widget.active == false
          ? BoxDecoration(
              color: Theme.of(context).primaryColor,
              border: Border.all(
                  width: 0.5, color: Theme.of(context).colorScheme.secondary),
              borderRadius: BorderRadius.all(Radius.circular(5)),
            )
          : BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromRGBO(237, 37, 36, 1),
                Color.fromRGBO(242, 113, 33, 1)
              ]),
              boxShadow: [
                BoxShadow(
                    color: Colors.black12, offset: Offset(5, 2), blurRadius: 5)
              ],
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
      child: TextButton(
        style: TextButton.styleFrom(
          primary: widget.active == false
              ? Theme.of(context).colorScheme.secondary
              : Colors.white,
          textStyle: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
          // onPrimary: Colors.white,
          shape: const BeveledRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5))),
        ),
        onPressed: widget.func,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Text(
            widget.text,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
