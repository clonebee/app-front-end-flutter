import 'package:cbmes_v1/provider/apiProvider.dart';
import 'package:cbmes_v1/provider/global.provider.dart';
import 'package:cbmes_v1/provider/themes.provider.dart';
import 'package:cbmes_v1/provider/themes/themes.provider.dart';
import "package:cbmes_v1/ui/appBar/components/custom_drawer.dart";
import "package:cbmes_v1/ui/appBar/custom_appBar.dart";
import 'package:cbmes_v1/ui/globalWidgets/decoration/primaryBoxDecoration.dart';
import "package:flutter/material.dart";
import "package:provider/provider.dart";

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    APIProvider api = Provider.of<APIProvider>(context);
    GlobalProvider g = Provider.of<GlobalProvider>(context);
    Themes theme = Provider.of<Themes>(context);
    var routeBar = ModalRoute.of(context).settings.name;
    ThemesCB themesCB = Provider.of<ThemesCB>(context);

    return Scaffold(
      appBar: CustomAppBar(routeBar),
      drawer: CustomDrawer(),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.width * 1,
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(20),
          decoration: primaryBoxDecoration(context: context),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Interface (ui): "),
                  Container(
                    height: 45,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: themesCB.backColor,
                      border: Border.all(width: 0.5, color: themesCB.borderColor),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: DropdownButton<String>(
                      value: api.userIdObj.theme[0],
                      icon: Icon(
                        Icons.arrow_downward,
                        color: themesCB.iconOffColor,
                      ),
                      iconSize: 24,
                      elevation: 16,
                      style: themesCB.boldHighLightStyleText,
                      underline: Container(
                        height: 0,
                        color: themesCB.highlightColor,
                      ),
                      onChanged: (String newValue) async {
                        api.userIdObj.theme[0] = newValue;
                        theme.ui = api.userIdObj.theme[0];
                        g.apiRoute = "inventory/users";
                        // await g.editDocument(model: api.userIdObj, context: context);
                      },
                      items: [
                        "Moderna",
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Tema: "),
                  Container(
                    height: 45,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: themesCB.backColor,
                      border: Border.all(width: 0.5, color: themesCB.borderColor),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: DropdownButton<String>(
                      value: theme.cThemes,
                      icon: Icon(
                        Icons.arrow_downward,
                        color: themesCB.iconOffColor,
                      ),
                      iconSize: 24,
                      elevation: 16,
                      style: themesCB.boldHighLightStyleText,
                      underline: Container(
                        height: 0,
                        color: themesCB.highlightColor,
                      ),
                      onChanged: (String newValue) async {
                        theme.cThemes = newValue;
                        theme.setTheme(newValue);
                        setState(() {});
                        api.userIdObj.theme[1] = newValue;
                        api.userIdObj.changePassword = false;
                        g.apiRoute = "inventory/users";

                        // await g.editDocument(model: api.userIdObj, context: context);
                      },
                      items: [
                        "Light",
                        "Dark",
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Icones: "),
                  Container(
                    height: 45,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: themesCB.backColor,
                      border: Border.all(width: 0.5, color: themesCB.borderColor),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: DropdownButton<String>(
                      value: theme.cIcons,
                      icon: Icon(
                        Icons.arrow_downward,
                        color: themesCB.iconOffColor,
                      ),
                      iconSize: 24,
                      elevation: 16,
                      style: themesCB.boldHighLightStyleText,
                      underline: Container(
                        height: 0,
                        color: themesCB.highlightColor,
                      ),
                      onChanged: (String newValue) async {
                        theme.cIcons = newValue;
                        theme.setIcons(newValue);
                        setState(() {});
                        api.userIdObj.theme[2] = newValue;
                        g.apiRoute = "inventory/users";
                        // await g.editDocument(model: api.userIdObj, context: context);
                      },
                      items: [
                        "Outline",
                        "Colorful",
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
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
