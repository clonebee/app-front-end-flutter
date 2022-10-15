import 'package:cbmes_v1/api/api.dart';
import 'package:cbmes_v1/provider/apiProvider.dart';
import 'package:cbmes_v1/provider/global.provider.dart';
import 'package:cbmes_v1/provider/themes/themes.provider.dart';
import 'package:cbmes_v1/ui/globalWidgets/buttons/button_primary.dart';
import 'package:cbmes_v1/ui/globalWidgets/buttons/button_secondary.dart';
import 'package:cbmes_v1/ui/globalWidgets/decoration/common_input_decoration.dart';
import 'package:cbmes_v1/ui/globalWidgets/decoration/primaryBoxDecoration.dart';
import 'package:cbmes_v1/ui/globalWidgets/dialog_message.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cbmes_v1/provider/routes.Provider.dart';
import 'package:cbmes_v1/themes/icons/IconsHawcons.dart';
import 'package:cbmes_v1/themes/icons/IconsLinear.dart';
import 'package:provider/provider.dart';

class ButtonsListOffGridOn extends StatefulWidget {
  @override
  _ButtonsListOffGridOnState createState() => _ButtonsListOffGridOnState();
}

class _ButtonsListOffGridOnState extends State<ButtonsListOffGridOn> {
  @override
  Widget build(BuildContext context) {
    Routes routes = Provider.of<Routes>(context);
    ThemesCB themesCB = Provider.of<ThemesCB>(context);

    return Row(
      children: [
        Container(
          width: 30,
          margin: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(237, 37, 36, 1),
                Color.fromRGBO(242, 113, 33, 1),
              ],
            ),
            border: Border.all(width: 0, color: themesCB.borderColor),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: IconButton(
            padding: EdgeInsets.all(0),
            onPressed: () {
              routes.getListViewGrid(false);
            },
            icon: Icon(
              Icons.grid_view,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          width: 30,
          margin: EdgeInsets.only(left: 10),
          decoration: primaryBoxDecoration(context: context),
          child: IconButton(
            padding: EdgeInsets.all(0),
            onPressed: () {
              routes.getListViewGrid(true);
            },
            icon: Icon(
              Icons.list,
              color: themesCB.iconOffColor,
            ),
          ),
        ),
      ],
    );
  }
}

class ButtonsListOnGridOff extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Routes routes = Provider.of<Routes>(context);
    ThemesCB themesCB = Provider.of<ThemesCB>(context);

    return Row(
      children: [
        Container(
          width: 30,
          margin: EdgeInsets.only(left: 10),
          decoration: primaryBoxDecoration(context: context),
          child: IconButton(
            padding: EdgeInsets.all(0),
            onPressed: () {
              routes.getListViewGrid(false);
            },
            icon: Icon(
              Icons.grid_view,
              color: themesCB.iconOffColor,
            ),
          ),
        ),
        Container(
          width: 30,
          margin: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(237, 37, 36, 1),
                Color.fromRGBO(242, 113, 33, 1),
              ],
            ),
            border: Border.all(width: 0, color: themesCB.borderColor),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: IconButton(
            padding: EdgeInsets.all(0),
            onPressed: () {
              routes.getListViewGrid(true);
            },
            icon: Icon(
              Icons.list,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

class ButtonsOptions extends StatefulWidget {
  final dynamic model;
  final int index;

  ButtonsOptions({
    @required this.model,
    @required this.index,
  });

  @override
  _ButtonsOptionsState createState() => _ButtonsOptionsState();
}

class _ButtonsOptionsState extends State<ButtonsOptions> {
  final _formKey2 = GlobalKey<FormState>();

  double heightValue = 30;

  @override
  Widget build(BuildContext context) {
    final Routes routes = Provider.of<Routes>(context);
    APIProvider apiProvider = Provider.of<APIProvider>(context);
    ThemesCB themesCB = Provider.of<ThemesCB>(context);
    final GlobalProvider g = Provider.of<GlobalProvider>(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 30,
          padding: const EdgeInsets.all(4.0),
          child: IconButton(
            padding: const EdgeInsets.all(0),
            icon: widget.model.favorite == true
                ? Icon(
                    Icons.star,
                    color: themesCB.highlightColor,
                  )
                : Icon(IconsLinear.star, color: themesCB.iconOffColor),
            onPressed: () async {
              widget.model.favorite == null ? widget.model.favorite = true : widget.model.favorite = widget.model.favorite;
              widget.model.favorite = !widget.model.favorite;

              await g.send(
                id: '',
                model: widget.model,
                context: context,
                create: false,
                withToken: true,
                apiRoute: '${g.apiRoute}',
                funcAcept: () {
                  g.global = true;
                  g.edit = false;
                  apiProvider.progress = "0";
                },
                funcNoAcept: () {},
                message: "Documento FAVORITADO com sucesso.",
              );
            },
          ),
        ),
        Container(
          width: 30,
          padding: EdgeInsets.all(4.0),
          child: IconButton(
            padding: EdgeInsets.all(0),
            icon: Icon(
              IconsHawcons.icon_136_document_edit,
              color: themesCB.iconOffColor,
            ),
            onPressed: () {
              g.edit = true;
              g.setDynamicModel(model: widget.model, index: widget.index);
              Navigator.of(context).pushReplacementNamed(routes.routeEdit);
              routes.setForwardRoute(routes.routeEdit);
              routes.setBackRoute(ModalRoute.of(context).settings.name);
            },
          ),
        ),
        Container(
          width: 30,
          padding: const EdgeInsets.all(4.0),
          child: IconButton(
            padding: const EdgeInsets.all(0),
            icon: Icon(
              IconsHawcons.icon_73_documents,
              color: themesCB.iconOffColor,
            ),
            onPressed: () async {
              if (routes.menu == "users") {
                showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (BuildContext contextCupertino) {
                      return DialogMessage(message: "Não é permitido duplicar usuários.");
                    });
              } else {
                showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (BuildContext contextCupertino) {
                    return Theme(
                      data: themesCB.selectTheme == "dark" ? ThemeData.dark() : ThemeData.light(),
                      child: CupertinoAlertDialog(
                        title: Text("Digite um novo nome para o documento:"),
                        content: Form(
                          key: _formKey2,
                          child: Column(
                            children: [
                              Divider(
                                height: 20,
                                thickness: 1,
                                indent: 0,
                                endIndent: 0,
                              ),
                              SizedBox(
                                height: heightValue / 3,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 20),
                                child: Material(
                                  color: Colors.transparent,
                                  child: TextFormField(
                                    keyboardType: TextInputType.text,
                                    textAlign: TextAlign.start,
                                    cursorColor: themesCB.cursorColor,
                                    autocorrect: true,
                                    decoration: commonInputDecoration(context: context, labelText: "Nome: "),
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return 'Campo em branco';
                                      }
                                      return null;
                                    },
                                    onSaved: (val) {
                                      widget.model.name = val;
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: heightValue / 3,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 110,
                                    margin: EdgeInsets.only(right: 10),
                                    child: buttonSecondary(
                                      context: context,
                                      func: () {
                                        Navigator.of(context).pop();
                                      },
                                      widthx: 110,
                                      text: "CANCELAR",
                                    ),
                                  ),
                                  Container(
                                    width: 110,
                                    child: buttonPrimary(
                                      context: context,
                                      func: () async {
                                        var e = widget.model;
                                        if (_formKey2.currentState.validate()) {
                                          Navigator.pop(contextCupertino);
                                          _formKey2.currentState.save();

                                          widget.model.sId = null;

                                          if (routes.menu == "inventory" || routes.menu == "manufacture") {
                                            widget.model.code = "${widget.model.code} #copy";
                                          }

                                          await g.send(
                                            id: '',
                                            model: widget.model,
                                            context: context,
                                            create: true,
                                            withToken: true,
                                            apiRoute: '${g.apiRoute}',
                                            funcAcept: () {
                                              g.global = true;
                                              g.edit = false;
                                              apiProvider.progress = "0";
                                            },
                                            funcNoAcept: () {
                                              g.allDocumentsStageArea[widget.index] = e;
                                            },
                                            message: "Documento COPIADO com sucesso; disponível em instantes.",
                                          );
                                        }
                                      },
                                      widthx: 110,
                                      text: "INSERIR",
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              }
            },
          ),
        ),
        Container(
          width: 30,
          padding: const EdgeInsets.all(4.0),
          child: IconButton(
            padding: const EdgeInsets.all(0),
            icon: Icon(
              IconsHawcons.icon_70_document_file_pdf,
              color: themesCB.iconOffColor,
            ),
            onPressed: () {
              g.linkDownload(model: widget.model, format: 'pdf', context: context);
            },
          ),
        ),
        // Container(
        //   width: 30,
        //   padding: const EdgeInsets.all(4.0),
        //   child: IconButton(
        //     padding: const EdgeInsets.all(0),
        //     icon: Icon(
        //       IconsHawcons.icon_96_document_file_xls,
        //       color: themesCB.iconOffColor,
        //     ),
        //     onPressed: () {
        //       g.linkDownload(model: widget.model, format: 'xlsx', context: context);
        //     },
        //   ),
        // ),
        Container(
          width: 30,
          padding: const EdgeInsets.all(4.0),
          child: IconButton(
            padding: const EdgeInsets.all(0),
            icon: Icon(
              IconsHawcons.icon_27_trash_can,
              color: themesCB.iconOffColor,
            ),
            onPressed: () async {
              var jsonx = {
                "_id": widget.model.sId,
              };

              if (apiProvider.userId == widget.model.sId) {
                showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (BuildContext contextCupertino) {
                      return DialogMessage(message: "Não é permitdo deletar a si mesmo.");
                    });
              } else {
                await g.delete(
                  id: '/${widget.model.sId}',
                  model: jsonx,
                  context: context,
                  apiRoute: '${g.apiRoute}',
                  func: () {
                    g.allDocumentsStageArea = g.allDocumentsStageArea..removeAt(widget.index);
                    if (g.favorite == true) g.allDocumentsStageArea = g.modelObjFavorite..removeAt(widget.index);
                    apiProvider.progress = "0";
                    g.global = true;
                  },
                  message: 'Documento DELETADO com sucesso.',
                );
              }
            },
          ),
        ),
      ],
    );
  }
}
