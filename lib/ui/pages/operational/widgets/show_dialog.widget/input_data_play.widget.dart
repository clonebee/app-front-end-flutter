import 'package:cbmes_v1/provider/operational.provider.dart';
import 'package:cbmes_v1/provider/themes/themes.provider.dart';
import 'package:cbmes_v1/ui/pages/operational/widgets/show_dialog.widget/keyboard.widget/keyboard_number.widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InputDataPlay extends StatefulWidget {
  @override
  _InputDataPlayState createState() => _InputDataPlayState();
}

class _InputDataPlayState extends State<InputDataPlay> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    OperationalBloc op = Provider.of<OperationalBloc>(context);
    ThemesCB themesCB = Provider.of<ThemesCB>(context);

    op.id = false;
    op.password = false;
    op.keyboard = true;

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
          child: Keyboard(),
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
            child: Container(
              child: Column(
                children: [
                  TextFormField(
                    controller: op.textControllerKeyboard,
                    autofocus: true,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.start,
                    cursorColor: themesCB.cursorColor,
                    decoration: InputDecoration(
                      suffixIcon: Padding(
                        padding: EdgeInsetsDirectional.only(end: 12.0, top: 0),
                        child: IconButton(
                            icon: Icon(
                              Icons.backspace_outlined,
                              color: themesCB.iconOffColor,
                            ),
                            onPressed: () {
                              op.removeKeyboardData();
                              op.setTextController();
                            }), // myIcon is a 48px-wide widget.
                      ),
                      focusedBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      border: UnderlineInputBorder(borderSide: BorderSide.none),
                      labelText: "",
                      contentPadding: EdgeInsets.only(top: -25),
                    ),
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: themesCB.highlightColor,
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Campo em branco';
                      }
                      return null;
                    },
                    onChanged: (val) {
                      List<String> ll = val.split("");

                      op.addKeyboardData(ll[ll.length - 1]);
                      op.setTextController();
                    },
                    // onTap: () {

                    //   op.keyboardData = "";
                    // },
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: 200,
                    height: 40,
                    margin: EdgeInsets.all(5),
                    decoration: op.playGoodItems == false
                        ? BoxDecoration(
                            color: themesCB.backColor,
                            border: Border.all(
                                width: 0.5, color: themesCB.borderColor),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          )
                        : BoxDecoration(
                            gradient: themesCB.gradient,
                            boxShadow: [themesCB.shadow],
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        primary: op.playGoodItems == false
                            ? themesCB.fontColor
                            : Colors.white,
                        textStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                        // onPrimary: Colors.white,
                        shape: const BeveledRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                      ),
                      onPressed: () {
                        op.playLostItems = false;
                        op.playDisapprovedItems = false;
                        setState(() {
                          op.playGoodItems = !op.playGoodItems;
                        });
                      },
                      child: Text("Itens Bons"),
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 40,
                    margin: EdgeInsets.all(5),
                    decoration: op.playLostItems == false
                        ? BoxDecoration(
                            color: themesCB.backColor,
                            border: Border.all(
                                width: 0.5, color: themesCB.borderColor),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          )
                        : BoxDecoration(
                            gradient: themesCB.gradient,
                            boxShadow: [themesCB.shadow],
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        primary: op.playLostItems == false
                            ? themesCB.fontColor
                            : Colors.white,
                        textStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                        // onPrimary: Colors.white,
                        shape: const BeveledRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                      ),
                      onPressed: () {
                        op.playGoodItems = false;
                        op.playDisapprovedItems = false;
                        setState(() {
                          op.playLostItems = !op.playLostItems;
                        });
                      },
                      child: Text("Itens Perdidos"),
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 40,
                    margin: EdgeInsets.all(5),
                    decoration: op.playDisapprovedItems == false
                        ? BoxDecoration(
                            color: themesCB.backColor,
                            border: Border.all(
                                width: 0.5, color: themesCB.borderColor),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          )
                        : BoxDecoration(
                            gradient: themesCB.gradient,
                            boxShadow: [themesCB.shadow],
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        primary: op.playDisapprovedItems == false
                            ? themesCB.fontColor
                            : Colors.white,
                        textStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                        // onPrimary: Colors.white,
                        shape: const BeveledRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                      ),
                      onPressed: () {
                        op.playGoodItems = false;
                        op.playLostItems = false;
                        setState(() {
                          op.playDisapprovedItems = !op.playDisapprovedItems;
                        });
                      },
                      child: Text("Itens Reprovados"),
                    ),
                  ),
                  SizedBox(height: 12),
                  Container(
                    width: 200,
                    height: 40,
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.lightGreen,
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
                        op.inputDataPlay(context: context);
                      },
                      child: Text("ENVIAR"),
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
