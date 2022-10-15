import 'package:cbmes_v1/provider/themes/themes.provider.dart';
import 'package:cbmes_v1/themes/icons/IconsCBMES.dart';
import 'package:cbmes_v1/ui/globalWidgets/myCustomScrollBehavior.dart';
// import 'package:cbmes_v1/provider/themes.bloc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MenuPopUpBellDot extends StatefulWidget {
  @override
  _MenuPopUpBellDotState createState() => _MenuPopUpBellDotState();
}

class _MenuPopUpBellDotState extends State<MenuPopUpBellDot> {
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    // Routes routes = Provider.of<Routes>(context);
    // APIProvider apiProvider = Provider.of<APIProvider>(context);
    ThemesCB themesCB = Provider.of<ThemesCB>(context);

    return PopupMenuButton(
      offset: Offset.fromDirection(20.0, 55.0),
      onSelected: (value) {
        if (value == "2") {
          // routes.menu = "settings";
          // Navigator.of(context).pushReplacementNamed(routes.routes['SettingsPage']);
        }
        if (value == "3") {
          // RestartWidget.restartApp(context);
        }
      },
      itemBuilder: (context) {
        var list = <PopupMenuEntry<Object>>[];
        list.add(
          PopupMenuItem(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ScrollConfiguration(
                  behavior: MyCustomScrollBehavior(),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.warning_amber_rounded,
                          color: Colors.amber,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "OEE X abaixo de 65\%",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.amber,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            value: "1",
          ),
        );
        list.add(
          PopupMenuItem(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ScrollConfiguration(
                  behavior: MyCustomScrollBehavior(),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.timeline_rounded,
                          color: Colors.green,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Meta da produção X alcançada",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            value: "1",
          ),
        );
        list.add(
          PopupMenuItem(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ScrollConfiguration(
                  behavior: MyCustomScrollBehavior(),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.settings_input_composite_sharp,
                          color: Colors.red,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Materia prima em falta: nome",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            value: "1",
          ),
        );

        list.add(
          PopupMenuDivider(
            height: 10,
          ),
        );

        return list;
      },
      icon: Container(
        width: 30,
        height: 30,
        child: Stack(
          children: <Widget>[
            Container(
              width: 20,
              child: Icon(
                IconsCBMES.bell_dot,
                color: themesCB.iconOffColor,
              ),
            ),
            Positioned(
              top: 0,
              left: 8,
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Text(
                  "3",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
