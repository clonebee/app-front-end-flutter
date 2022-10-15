import 'dart:convert';
import 'dart:io';
import 'package:cbmes_v1/ui/globalWidgets/buttons/button_color.dart';
import 'package:cbmes_v1/ui/globalWidgets/buttons/button_primary.dart';
import 'package:cbmes_v1/ui/globalWidgets/buttons/button_secondary.dart';
import 'package:cbmes_v1/ui/globalWidgets/decoration/common_input_decoration.dart';
import 'package:cbmes_v1/ui/globalWidgets/dialog_message.dart';
import 'dart:typed_data';
import 'package:cbmes_v1/api/api.dart';
import 'package:cbmes_v1/provider/global.provider.dart';
import 'package:cbmes_v1/provider/routes.Provider.dart';
import 'package:cbmes_v1/models/users/users.models.dart';
import 'package:cbmes_v1/provider/themes/themes.provider.dart';
import 'package:cbmes_v1/themes/icons/IconsLinear.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'package:cbmes_v1/provider/apiProvider.dart';
import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:image_picker_web/image_picker_web.dart';
import 'package:file_picker/file_picker.dart';

class UsersForm extends StatefulWidget {
  @override
  _UsersFormState createState() => _UsersFormState();
}

class _UsersFormState extends State<UsersForm> {
  @override
  void initState() {
    super.initState();
  }

  AutovalidateMode validate = AutovalidateMode.onUserInteraction;

  var api = new API();
  var model = new UsersModel(
    sId: "",
    filesBase64Up: {
      "img1": "",
    },
    theme: ["Moderna", "Light", "Outline"],
    collectionName: 'users-admin',
    changePassword: true,
    favorite: false,
    situation: true,
    personalData: {
      "CEP": "",
      "street": "",
      "complement": "",
      "district": "",
      "city": "",
      "state": "",
      "country": "Brasil",
      "telephone": "",
    },
  );
  FocusNode userNameFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();
  FocusNode password2FocusNode = FocusNode();
  FocusNode emailFocusNode = FocusNode();
  FocusNode nameFocusNode = FocusNode();
  FocusNode positionCompanyFocusNode = FocusNode();
  FocusNode positionCompanyIdFocusNode = FocusNode();
  FocusNode positionCompanyPasswordFocusNode = FocusNode();

  bool controlImageNetwork = false;
  bool _obscureText = true;
  String confirmPassword = "";
  bool init = true;

  bool auxSearchCEP = false;

  final _formKey = GlobalKey<FormState>();
  double heightValue = 15.0;

  var maskFormatterPhone = new MaskTextInputFormatter(mask: '(##) #####-####', filter: {"#": RegExp(r'[0-9]')});
  var maskFormatterTelephone = new MaskTextInputFormatter(mask: '(##) ####-####', filter: {"#": RegExp(r'[0-9]')});
  var maskFormatterCep = new MaskTextInputFormatter(mask: '#####-###', filter: {"#": RegExp(r'[0-9]')});

  TextEditingController controllerStreet = TextEditingController();
  TextEditingController controllerComplement = TextEditingController();
  TextEditingController controllerDistrict = TextEditingController();
  TextEditingController controllerCity = TextEditingController();
  TextEditingController controllerState = TextEditingController();

  var image;
  Uint8List bytes;

  @override
  Widget build(BuildContext context) {
    Routes routes = Provider.of<Routes>(context);
    GlobalProvider g = Provider.of<GlobalProvider>(context);
    APIProvider apiProvider = Provider.of<APIProvider>(context);
    ThemesCB themesCB = Provider.of<ThemesCB>(context);

    if (g.stageArea == 'users-admin') {
      model.collectionName = 'users-admin';
    }
    if (g.stageArea == 'users-client') {
      model.collectionName = 'users-client';
    }
    if (g.stageArea == 'users-operator') {
      model.collectionName = 'users-operator';
    }

    if (init == true) {
      init = false;

      if (g.edit == true) {
        model = g.getDynamicModel();
        model.password = "";
        controllerStreet.text = model.personalData["street"];
        controllerComplement.text = model.personalData["complement"];
        controllerDistrict.text = model.personalData["district"];
        controllerCity.text = model.personalData["city"];
        controllerState.text = model.personalData["state"];

        if (model.filesUrl == null || model.filesUrl.length < 1) {
          model.filesUrl = {
            "img1": "",
          };
        }
        if (model.filesUrl["img1"] != "") {
          controlImageNetwork = true;
          model.filesBase64Up = {};
        } else {
          model.filesBase64Up = {
            "img1": "",
          };
        }
      }
    }

    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: themesCB.backColor,
          border: Border.all(width: 0.5, color: themesCB.borderColor),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              g.edit == true
                  ? Text(
                      "ID no sistema: ${model.sId}",
                      style: themesCB.regularStyleText,
                    )
                  : Text(
                      "ID no sistema: __new",
                      style: themesCB.regularStyleText,
                    ),
              SizedBox(
                height: heightValue / 2,
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    gradient: LinearGradient(colors: [
                      Color.fromRGBO(237, 37, 36, 1),
                      Color.fromRGBO(242, 113, 33, 1),
                    ])),
                child: ExpansionTile(
                  initiallyExpanded: g.edit == true ? false : true,
                  iconColor: Colors.white,
                  collapsedIconColor: Colors.white,
                  maintainState: true,
                  title: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Dados de Usuário no Sistema",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          "Preenchimento obrigatório.",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: themesCB.backColor,
                        border: Border.all(width: 0.5, color: themesCB.borderColor),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              RichText(
                                text: TextSpan(
                                  style: DefaultTextStyle.of(context).style,
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: "Tipo de Usuário: ",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    TextSpan(
                                      text: "${routes.stageArea}",
                                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: heightValue,
                          ),
                          Row(
                            children: [
                              Text("Situação: "),
                              Container(
                                height: 45,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: themesCB.backColor,
                                  border: Border.all(width: 0.5, color: themesCB.borderColor),
                                  borderRadius: BorderRadius.all(Radius.circular(5)),
                                ),
                                child: DropdownButton<bool>(
                                  value: model.situation == null ? model.situation = true : model.situation,
                                  icon: Icon(
                                    Icons.arrow_downward,
                                    color: themesCB.iconOffColor,
                                  ),
                                  iconSize: 24,
                                  elevation: 16,
                                  style: TextStyle(color: themesCB.highlightColor),
                                  underline: Container(
                                    height: 0,
                                    color: themesCB.highlightColor,
                                  ),
                                  onChanged: (bool newValue) {
                                    setState(() {
                                      model.situation = newValue;
                                    });
                                  },
                                  items: [
                                    DropdownMenuItem(
                                      child: Text(
                                        'Ativado',
                                        style: themesCB.boldHighLightStyleText,
                                      ),
                                      value: true,
                                    ),
                                    DropdownMenuItem(
                                      child: Text(
                                        'Desativado',
                                        style: themesCB.boldHighLightStyleText,
                                      ),
                                      value: false,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: heightValue,
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: heightValue),
                            child: TextFormField(
                              autocorrect: false,
                              autovalidateMode: validate,
                              focusNode: userNameFocusNode,
                              cursorColor: themesCB.cursorColor,
                              initialValue: g.edit == true ? model.userName : "",
                              keyboardType: TextInputType.text,
                              decoration: commonInputDecoration(context: context, labelText: "Nome de Usuário"),
                              style: TextStyle(
                                fontSize: 20,
                                color: themesCB.highlightColor,
                              ),
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.allow(RegExp("[a-z-0-9]")),
                              ],
                              validator: (value) {
                                Pattern pattern = r'^[a-z]+$'; // Regex for lowercase only
                                RegExp regex = new RegExp(pattern);
                                if (!regex.hasMatch(value)) {
                                  FocusScope.of(context).requestFocus(userNameFocusNode);
                                  return 'O nome de usuário deve ser com letras minúsculas e sem espaço.';
                                }
                                if (value.isEmpty) {
                                  FocusScope.of(context).requestFocus(userNameFocusNode);
                                  return 'Campo em branco';
                                }
                                return null;
                              },
                              onSaved: (val) {
                                model.userName = val;
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: heightValue),
                            child: TextFormField(
                              autocorrect: false,
                              autovalidateMode: validate,
                              focusNode: passwordFocusNode,
                              cursorColor: themesCB.cursorColor,
                              // initialValue: bloc.edit == true ? model.password : "",
                              keyboardType: TextInputType.visiblePassword,
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
                              obscureText: _obscureText,
                              // autovalidateMode: AutovalidateMode.always,
                              validator: (value) {
                                if (g.edit == false && value.isEmpty) {
                                  FocusScope.of(context).requestFocus(passwordFocusNode);
                                  return 'Campo em branco';
                                }
                                if (value != "" && value.length < 6) {
                                  FocusScope.of(context).requestFocus(passwordFocusNode);
                                  return 'A senha deve ter mais de 6 caracteres';
                                }
                                return null;
                              },
                              onChanged: (val) {
                                if (g.edit == true) {
                                  if (val != "") {
                                    model.password = val;
                                  }
                                }
                                if (g.edit == false) {
                                  model.password = val;
                                }
                              },
                              // onSaved: (val) {
                              //   model.password = val;
                              // },
                            ),
                          ),
                          TextFormField(
                            autocorrect: false,
                            autovalidateMode: validate,
                            focusNode: password2FocusNode,
                            cursorColor: themesCB.cursorColor,
                            keyboardType: TextInputType.visiblePassword,
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
                              labelText: 'Repita a Senha',
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
                            obscureText: _obscureText,
                            validator: (value) {
                              if (g.edit == false && value.isEmpty) {
                                FocusScope.of(context).requestFocus(passwordFocusNode);
                                return 'Campo em branco';
                              }
                              if (model.password != null && value != "") {
                                if (model.password != confirmPassword) {
                                  FocusScope.of(context).requestFocus(password2FocusNode);
                                  return 'As senhas não são iguais. Tente novamente';
                                }
                              }
                              return null;
                            },
                            onChanged: (val) {
                              confirmPassword = val;
                            },
                            onSaved: (val) {
                              confirmPassword = val;
                            },
                          ),
                          SizedBox(
                            height: heightValue,
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: heightValue),
                            child: TextFormField(
                              autocorrect: false,
                              autovalidateMode: validate,
                              focusNode: emailFocusNode,
                              cursorColor: themesCB.cursorColor,
                              initialValue: g.edit == true ? model.email : "",
                              keyboardType: TextInputType.text,
                              decoration: commonInputDecoration(context: context, labelText: "Email"),
                              style: TextStyle(
                                fontSize: 20,
                                color: themesCB.highlightColor,
                              ),
                              validator: (value) {
                                if (value.isEmpty) {
                                  FocusScope.of(context).requestFocus(emailFocusNode);
                                  return 'Campo em branco';
                                }
                                if (RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$').hasMatch(value) == false) {
                                  FocusScope.of(context).requestFocus(emailFocusNode);
                                  return 'E-mail inválido';
                                }
                                return null;
                              },
                              onSaved: (val) {
                                model.email = val;
                              },
                            ),
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Tema: ",
                                style: themesCB.regularStyleText,
                              ),
                              Container(
                                height: 45,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: themesCB.backColor,
                                  border: Border.all(width: 0.5, color: themesCB.borderColor),
                                  borderRadius: BorderRadius.all(Radius.circular(5)),
                                ),
                                child: DropdownButton<String>(
                                  value: model.theme[1],
                                  icon: Icon(
                                    Icons.arrow_downward,
                                    color: themesCB.iconOffColor,
                                  ),
                                  iconSize: 24,
                                  elevation: 16,
                                  style: TextStyle(color: themesCB.highlightColor),
                                  underline: Container(
                                    height: 0,
                                    color: themesCB.highlightColor,
                                  ),
                                  onChanged: (String newValue) async {
                                    model.theme[1] = newValue;
                                    setState(() {});
                                  },
                                  items: [
                                    "Light",
                                    "Dark",
                                  ].map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(
                                        value,
                                        style: themesCB.boldHighLightStyleText,
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: heightValue / 3,
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    gradient: LinearGradient(colors: [
                      Color.fromRGBO(237, 37, 36, 1),
                      Color.fromRGBO(242, 113, 33, 1),
                    ])),
                child: ExpansionTile(
                  initiallyExpanded: g.edit == true ? false : true,
                  iconColor: Colors.white,
                  collapsedIconColor: Colors.white,
                  maintainState: true,
                  title: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Dados de Colaborador",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          "Preenchimento obrigatório.",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: themesCB.backColor,
                        border: Border.all(width: 0.5, color: themesCB.borderColor),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: heightValue),
                            child: TextFormField(
                              autovalidateMode: validate,
                              focusNode: nameFocusNode,
                              cursorColor: themesCB.cursorColor,
                              initialValue: g.edit == true ? model.name : "",
                              keyboardType: TextInputType.text,
                              decoration: commonInputDecoration(context: context, labelText: "Nome Completo"),
                              style: TextStyle(
                                fontSize: 20,
                                color: themesCB.highlightColor,
                              ),
                              validator: (value) {
                                if (value.isEmpty) {
                                  FocusScope.of(context).requestFocus(nameFocusNode);
                                  return 'Campo em branco';
                                }
                                return null;
                              },
                              onSaved: (val) {
                                model.name = val;
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: heightValue),
                            child: TextFormField(
                              autovalidateMode: validate,
                              focusNode: positionCompanyFocusNode,
                              cursorColor: themesCB.cursorColor,
                              initialValue: g.edit == true ? model.positionCompany : "",
                              keyboardType: TextInputType.text,
                              decoration: commonInputDecoration(context: context, labelText: "Cargo"),
                              style: TextStyle(
                                fontSize: 20,
                                color: themesCB.highlightColor,
                              ),
                              validator: (value) {
                                if (value.isEmpty) {
                                  FocusScope.of(context).requestFocus(positionCompanyFocusNode);
                                  return 'Campo em branco';
                                }
                                return null;
                              },
                              onSaved: (val) {
                                model.positionCompany = val;
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: heightValue),
                            child: TextFormField(
                              autovalidateMode: validate,
                              focusNode: positionCompanyIdFocusNode,
                              cursorColor: themesCB.cursorColor,
                              initialValue: g.edit == true ? model.positionCompanyId.toString() : "",
                              keyboardType: TextInputType.numberWithOptions(decimal: true),
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(RegExp('[0-9.,]+')),
                              ],
                              decoration: commonInputDecoration(context: context, labelText: "Código de Colaborador"),
                              style: TextStyle(
                                fontSize: 20,
                                color: themesCB.highlightColor,
                              ),
                              validator: (value) {
                                if (value.isEmpty) {
                                  FocusScope.of(context).requestFocus(positionCompanyIdFocusNode);
                                  return 'Campo em branco';
                                }
                                return null;
                              },
                              onSaved: (val) {
                                model.positionCompanyId = int.parse(val);
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: heightValue),
                            child: TextFormField(
                              autovalidateMode: validate,
                              focusNode: positionCompanyPasswordFocusNode,
                              cursorColor: themesCB.cursorColor,
                              initialValue: g.edit == true ? model.positionCompanyPassword.toString() : "",
                              keyboardType: TextInputType.numberWithOptions(decimal: true),
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(RegExp('[0-9.,]+')),
                              ],
                              decoration: commonInputDecoration(context: context, labelText: "Senha de Colaborador"),
                              style: TextStyle(
                                fontSize: 20,
                                color: themesCB.highlightColor,
                              ),
                              validator: (value) {
                                if (value.isEmpty) {
                                  FocusScope.of(context).requestFocus(positionCompanyPasswordFocusNode);
                                  return 'Campo em branco';
                                }
                                return null;
                              },
                              onSaved: (val) {
                                model.positionCompanyPassword = int.parse(val);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: heightValue / 3,
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    gradient: LinearGradient(colors: [
                      Color.fromRGBO(237, 37, 36, 1),
                      Color.fromRGBO(242, 113, 33, 1),
                    ])),
                child: ExpansionTile(
                  initiallyExpanded: g.edit == true ? false : true,
                  iconColor: Colors.white,
                  collapsedIconColor: Colors.white,
                  maintainState: true,
                  title: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Dados Pessoais",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          "Preenchimento opcional.",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: themesCB.backColor,
                        border: Border.all(width: 0.5, color: themesCB.borderColor),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: heightValue),
                            child: TextFormField(
                              autovalidateMode: validate,
                              initialValue: g.edit == true ? model.personalData["CEP"] : "",
                              keyboardType: TextInputType.number,
                              cursorColor: themesCB.cursorColor,
                              inputFormatters: [maskFormatterCep],
                              decoration: InputDecoration(
                                labelText: "CEP",
                                suffixIcon: new GestureDetector(
                                  onTap: () async {
                                    setState(() {
                                      auxSearchCEP = true;
                                    });
                                    await api.getCEP(
                                      context: context,
                                      cep: model.personalData["CEP"],
                                    );
                                    setState(() {
                                      controllerStreet.text = apiProvider.cepObj["logradouro"];
                                      controllerComplement.text = apiProvider.cepObj["complemento"];
                                      controllerDistrict.text = apiProvider.cepObj["bairro"];
                                      controllerCity.text = apiProvider.cepObj["localidade"];
                                      controllerState.text = apiProvider.cepObj["uf"];
                                      auxSearchCEP = false;
                                    });
                                  },
                                  child: auxSearchCEP == false
                                      ? Icon(
                                          Icons.search_rounded,
                                          color: themesCB.iconOffColor,
                                        )
                                      : CupertinoActivityIndicator(),
                                ),
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
                                color: themesCB.fontColor,
                              ),
                              onChanged: (val) {
                                if (val.isEmpty) {
                                  model.personalData["CEP"] = "";
                                } else {
                                  model.personalData["CEP"] = val;
                                }
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: heightValue),
                            child: TextFormField(
                              autovalidateMode: validate,
                              //
                              controller: controllerStreet,
                              keyboardType: TextInputType.text,
                              cursorColor: themesCB.cursorColor,
                              decoration: commonInputDecoration(context: context, labelText: "Logradouro"),
                              style: TextStyle(
                                fontSize: 20,
                                color: themesCB.fontColor,
                              ),
                              onSaved: (val) {
                                if (val.isEmpty) {
                                  model.personalData["street"] = "";
                                } else {
                                  model.personalData["street"] = val;
                                }
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: heightValue),
                            child: TextFormField(
                              autovalidateMode: validate,
                              controller: controllerComplement,
                              keyboardType: TextInputType.text,
                              cursorColor: themesCB.cursorColor,
                              decoration: commonInputDecoration(context: context, labelText: "Complemento"),
                              style: TextStyle(
                                fontSize: 20,
                                color: themesCB.fontColor,
                              ),
                              onSaved: (val) {
                                if (val.isEmpty) {
                                  model.personalData["complement"] = "";
                                } else {
                                  model.personalData["complement"] = val;
                                }
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: heightValue),
                            child: TextFormField(
                              autovalidateMode: validate,
                              controller: controllerDistrict,
                              keyboardType: TextInputType.text,
                              cursorColor: themesCB.cursorColor,
                              decoration: commonInputDecoration(context: context, labelText: "Bairro"),
                              style: TextStyle(
                                fontSize: 20,
                                color: themesCB.fontColor,
                              ),
                              onSaved: (val) {
                                if (val.isEmpty) {
                                  model.personalData["district"] = "";
                                } else {
                                  model.personalData["district"] = val;
                                }
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: heightValue),
                            child: TextFormField(
                              autovalidateMode: validate,
                              controller: controllerCity,
                              keyboardType: TextInputType.text,
                              cursorColor: themesCB.cursorColor,
                              decoration: commonInputDecoration(context: context, labelText: "Cidade"),
                              style: TextStyle(
                                fontSize: 20,
                                color: themesCB.fontColor,
                              ),
                              onSaved: (val) {
                                if (val.isEmpty) {
                                  model.personalData["city"] = "";
                                } else {
                                  model.personalData["city"] = val;
                                }
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: heightValue),
                            child: TextFormField(
                              autovalidateMode: validate,
                              controller: controllerState,
                              keyboardType: TextInputType.text,
                              cursorColor: themesCB.cursorColor,
                              decoration: commonInputDecoration(context: context, labelText: "Estado"),
                              style: TextStyle(
                                fontSize: 20,
                                color: themesCB.fontColor,
                              ),
                              onSaved: (val) {
                                if (val.isEmpty) {
                                  model.personalData["state"] = "";
                                } else {
                                  model.personalData["state"] = val;
                                }
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: heightValue),
                            child: TextFormField(
                              autovalidateMode: validate,
                              initialValue: g.edit == true ? model.personalData["country"] : "Brasil",
                              keyboardType: TextInputType.text,
                              cursorColor: themesCB.cursorColor,
                              decoration: commonInputDecoration(context: context, labelText: "País"),
                              style: TextStyle(
                                fontSize: 20,
                                color: themesCB.fontColor,
                              ),
                              onSaved: (val) {
                                if (val.isEmpty) {
                                  model.personalData["country"] = "Brasil";
                                } else {
                                  model.personalData["country"] = val;
                                }
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: heightValue),
                            child: TextFormField(
                              autovalidateMode: validate,
                              initialValue: g.edit == true ? model.personalData["telephone"] : "",
                              inputFormatters: [maskFormatterPhone],
                              keyboardType: TextInputType.text,
                              cursorColor: themesCB.cursorColor,
                              decoration: commonInputDecoration(context: context, labelText: "Telefone"),
                              style: TextStyle(
                                fontSize: 20,
                                color: themesCB.fontColor,
                              ),
                              onSaved: (val) {
                                if (val.isEmpty) {
                                  model.personalData["telephone"] = "";
                                } else {
                                  model.personalData["telephone"] = val;
                                }
                              },
                            ),
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Foto de Perfil: ",
                                    style: themesCB.regularStyleText,
                                  ),
                                  buttonColor(
                                    context: context,
                                    func: () async {
                                      FilePickerResult result = await FilePicker.platform.pickFiles(
                                        type: FileType.image,
                                        // allowedExtensions: ['jpg', 'jpeg', 'png'],
                                      );
                                      if (result != null) {
                                        if (kIsWeb == true) {
                                          var file = result.files.first.bytes;
                                          setState(() {
                                            controlImageNetwork = false;
                                            model.filesBase64Up["img1"] = "data:image/png;base64,${base64.encode(file)}";
                                          });
                                        } else {
                                          File file = File(result.files.single.path);
                                          setState(() {
                                            controlImageNetwork = false;
                                            model.filesBase64Up["img1"] = "data:image/png;base64,${base64.encode(file.readAsBytesSync())}";
                                          });
                                        }
                                      } else {
                                        showDialog(
                                          context: context,
                                          barrierDismissible: false,
                                          builder: (BuildContext context) {
                                            return DialogMessage(
                                              message: "Escolha um formato válido de imagem (jpg ou png).",
                                            );
                                          },
                                        );
                                      }
                                    },
                                    widthx: 150,
                                    heigthx: 40,
                                    backColor: themesCB.backColor2,
                                    borderColor: themesCB.borderColor,
                                    textColor: themesCB.fontColor,
                                    text: "Selecionar Imagem",
                                    textSize: 14.0,
                                    textWeight: FontWeight.w500,
                                  ),
                                ],
                              ),
                              Container(
                                width: double.infinity,
                                alignment: Alignment.center,
                                margin: EdgeInsets.only(top: 20),
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: themesCB.backColor,
                                  borderRadius: BorderRadius.all(Radius.circular(5)),
                                  border: Border.all(color: themesCB.borderColor, width: 0.5),
                                  boxShadow: [themesCB.shadow],
                                ),
                                child: model.filesBase64Up["img1"] == ""
                                    ? Center(
                                        child: Icon(
                                          Icons.image_not_supported_outlined,
                                          color: themesCB.iconOffColor,
                                        ),
                                      )
                                    : Column(
                                        children: [
                                          controlImageNetwork == false
                                              ? Image.memory(
                                                  base64Decode("${model.filesBase64Up['img1']}".replaceAll("data:image/png;base64,", "")),
                                                )
                                              : Image.network(model.filesUrl['img1']),
                                          IconButton(
                                              icon: Icon(
                                                IconsLinear.trash,
                                                color: themesCB.iconOffColor,
                                              ),
                                              onPressed: () {
                                                model.filesBase64Up["img1"] = "";
                                                setState(() {});
                                              }),
                                        ],
                                      ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: heightValue,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buttonSecondary(
                    context: context,
                    func: () {
                      g.global = true;
                      g.edit = false;
                      Navigator.of(context).pushReplacementNamed(routes.routesAppUsers['stageArea']);
                      routes.setForwardRoute(routes.routesAppUsers['stageArea']);
                      routes.setBackRoute(ModalRoute.of(context).settings.name);
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

                        if (g.edit == false) {
                          model.sId = null;
                        }

                        if (g.edit == true && model.password != "") {
                          model.changePassword = true;
                        }
                        if (g.edit == true && model.password == "") {
                          model.changePassword = false;
                        }

                        await g.send(
                          id: g.edit == true ? '/${model.sId}' : '',
                          model: model,
                          context: context,
                          create: g.edit == true ? false : true,
                          withToken: true,
                          apiRoute: '${g.apiRoute}',
                          funcAcept: () {
                            g.global = true;
                            g.edit = false;
                            apiProvider.progress = "0";
                            Navigator.of(context).pushReplacementNamed(routes.routesAppUsers['stageArea']);
                          },
                          funcNoAcept: () {},
                          message: g.edit == true ? "Documento ATUALIZADO com sucesso." : "Documento CRIADO com sucesso.",
                        );
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
    );
  }
}
