import 'package:cbmes_v1/provider/operational.provider.dart';
import 'package:cbmes_v1/provider/themes/themes.provider.dart';
import 'package:cbmes_v1/ui/globalWidgets/buttons/button_primary.dart';
import 'package:cbmes_v1/ui/globalWidgets/buttons/button_secondary.dart';
import 'package:cbmes_v1/ui/globalWidgets/decoration/common_input_decoration.dart';
import 'package:cbmes_v1/ui/globalWidgets/myCustomScrollBehavior.dart';
import 'package:cbmes_v1/ui/pages/operational/widgets/show_dialog.widget/keyboard.widget/keyboard_number.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class OperationalValidator extends StatefulWidget {
  @override
  _OperationalValidatorState createState() => _OperationalValidatorState();
}

class _OperationalValidatorState extends State<OperationalValidator> {
  final _formKey = GlobalKey<FormState>();

  bool bId;
  bool bPassword;
  bool errorLogin = false;
  String cId;
  String cPassword;
  bool _obscureText = true;
  var userId;
  var img1;

  @override
  Widget build(BuildContext context) {
    OperationalBloc op = Provider.of<OperationalBloc>(context);
    ThemesCB themesCB = Provider.of<ThemesCB>(context);

    return Row(
      children: [
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(right: 10, left: 10),
          height: 300,
          decoration: BoxDecoration(
            color: themesCB.backColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Keyboard(),
              InkWell(
                onTap: () {
                  op.textControllerID.text = "";
                  op.textControllerPassword.text = "";
                },
                child: Container(
                  width: 175,
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.5, color: themesCB.borderColor),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  padding: EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.cleaning_services_rounded,
                        color: themesCB.iconOffColor,
                      ),
                      Text(
                        "Limpar",
                        style: themesCB.regularStyleText,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            height: 300,
            alignment: Alignment.topCenter,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: themesCB.backColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(-2, 0),
                  blurRadius: 5,
                )
              ],
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            //Aqui
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ScrollConfiguration(
                    behavior: MyCustomScrollBehavior(),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextFormField(
                            onTap: () {
                              op.id = true;
                              op.password = false;
                              op.keyboard = false;
                              op.keyboardData = "";
                            },
                            controller: op.textControllerID,
                            keyboardType: TextInputType.text,
                            textAlign: TextAlign.start,
                            autocorrect: true,
                            decoration: commonInputDecoration(context: context, labelText: 'ID de Operador'),
                            style: TextStyle(
                              fontSize: 20,
                              color: themesCB.highlightColor,
                            ),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Campo em branco';
                              }
                              return null;
                            },
                            onChanged: (val) {
                              cId = val;
                              // List<String> ll = val.split("");
                              // op.addKeyboardData(ll[ll.length - 1]);
                              // op.setTextController();
                            },
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            onTap: () {
                              op.id = false;
                              op.password = true;
                              op.keyboard = false;
                              op.keyboardData = "";
                            },
                            keyboardType: TextInputType.numberWithOptions(decimal: true),
                            obscureText: _obscureText,
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(RegExp('[0-9.,]+')),
                            ],
                            controller: op.textControllerPassword,
                            textAlign: TextAlign.start,
                            autocorrect: true,
                            decoration: InputDecoration(
                              suffixIcon: new GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _obscureText = !_obscureText;
                                  });
                                },
                                child: new Icon(
                                  _obscureText == true ? Icons.visibility : Icons.visibility_off,
                                  color: themesCB.iconOffColor,
                                ),
                              ),
                              labelText: 'Senha',
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: themesCB.borderColor, width: 0.5),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: themesCB.borderColor, width: 0.5),
                              ),
                              labelStyle: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontFamily: themesCB.fontFamily,
                                fontSize: 16,
                                color: themesCB.fontColor,
                              ),
                              errorStyle: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontFamily: themesCB.fontFamily,
                                fontSize: 16,
                                color: themesCB.fontColor,
                              ),
                            ),
                            style: TextStyle(
                              fontSize: 20,
                              color: themesCB.highlightColor,
                            ),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Campo em branco';
                              }
                              return null;
                            },
                            onChanged: (val) {
                              cPassword = val;
                              // List<String> ll = val.split("");

                              // op.addKeyboardData(ll[ll.length - 1]);
                              // op.setTextController();
                            },
                          ),
                          errorLogin == true
                              ? Container(
                                  margin: EdgeInsets.only(top: 15),
                                  child: Text(
                                    "ID ou Senha Inválidos.",
                                    style: TextStyle(color: Colors.red),
                                  ),
                                )
                              : Container(),
                          SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              buttonSecondary(
                                context: context,
                                func: () {
                                  op.clearEntryData();
                                  Navigator.of(context).pop();
                                },
                                widthx: 100,
                                text: "CANCELAR",
                              ),
                              SizedBox(width: 10),
                              buttonPrimary(
                                context: context,
                                func: () async {
                                  if (_formKey.currentState.validate()) {
                                    _formKey.currentState.save();

                                    for (int i = 0; i < op.listUsers.length; i++) {
                                      if (op.listUsers[i].positionCompanyId.toString() == cId) {
                                        userId = op.listUsers[i];
                                        // op.operatorImg1 = op.listUsers[i].img1Base64;
                                        bId = true;
                                      }
                                      if (op.listUsers[i].positionCompanyPassword.toString() == cPassword) {
                                        bPassword = true;
                                      }
                                    }

                                    if (bId == true && bPassword == true) {
                                      op.operatorUser = userId;

                                      op.clearEntryData();
                                      op.keyboard = true;
                                      op.validationOperator(true);
                                      Navigator.of(context).pop();
                                    } else {
                                      setState(() {
                                        errorLogin = true;
                                      });
                                    }
                                  }
                                },
                                widthx: 100,
                                text: "ENVIAR",
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
