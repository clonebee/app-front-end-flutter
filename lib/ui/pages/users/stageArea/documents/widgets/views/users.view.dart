import 'package:cbmes_v1/provider/global.provider.dart';
import 'package:cbmes_v1/models/users/users.models.dart';
import 'package:cbmes_v1/provider/themes/themes.provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UsersView extends StatefulWidget {
  @override
  State<UsersView> createState() => _UsersViewState();
}

class _UsersViewState extends State<UsersView> {
  var model = new UsersModel();
  bool init = true;
  @override
  Widget build(BuildContext context) {
    GlobalProvider g = Provider.of<GlobalProvider>(context);
    ThemesCB themesCB = Provider.of<ThemesCB>(context);

    if (init == true) {
      init = false;
      model = g.getDynamicModel();
      if (model.filesUrl == null) {
        model.filesUrl["img1"] = "";
      }
    }

    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width * 1,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          border: Border.all(
              width: 0.5, color: Theme.of(context).colorScheme.secondary),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: Text(
                "ID no sistema: ${model.sId}",
                style: themesCB.regularStyleText,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Tipo de Usuário: ${model.collectionName}",
              style: themesCB.boldStyleText,
            ),
            Text(
              "Situação: ${model.situation == true ? 'Ativado' : 'Desativado'}",
              style: themesCB.regularStyleText,
            ),
            Text(
              "Nome de Usuário: ${model.userName}",
              style: themesCB.boldStyleText,
            ),
            Text(
              "E-mail: ${model.email}",
              style: themesCB.regularStyleText,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Nome Completo: ${model.name}",
              style: themesCB.boldStyleText,
            ),
            Text(
              "Cargo: ${model.positionCompany}",
              style: themesCB.regularStyleText,
            ),
            Text(
              "Código de Colaborador: ${model.positionCompanyId}",
              style: themesCB.regularStyleText,
            ),
            Text(
              "Celular: ${model.personalData["telephone"]}",
              style: themesCB.regularStyleText,
            ),
            Text(
              "CEP: ${model.personalData["CEP"]}",
              style: themesCB.regularStyleText,
            ),
            Text(
              "Logradouro: ${model.personalData["street"]}",
              style: themesCB.regularStyleText,
            ),
            Text(
              "Complemento: ${model.personalData["complement"]}",
              style: themesCB.regularStyleText,
            ),
            Text(
              "Número: ${model.personalData["number"]}",
              style: themesCB.regularStyleText,
            ),
            Text(
              "Bairro: ${model.personalData["district"]}",
              style: themesCB.regularStyleText,
            ),
            Text(
              "Cidade: ${model.personalData["city"]}",
              style: themesCB.regularStyleText,
            ),
            Text(
              "Estado: ${model.personalData["state"]}",
              style: themesCB.regularStyleText,
            ),
            Text(
              "País: ${model.personalData["country"]}",
              style: themesCB.regularStyleText,
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
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
              child: model.filesUrl["img1"] == ""
                  ? Center(
                      child: Icon(
                        Icons.image_not_supported_outlined,
                        color: themesCB.iconOffColor,
                      ),
                    )
                  : Column(
                      children: [
                        Image.network(model.filesUrl['img1']),
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
