import 'package:cbmes_v1/provider/apiProvider.dart';
import 'package:cbmes_v1/provider/themes/themes.provider.dart';
import 'package:cbmes_v1/themes/icons/IconsLinear.dart';
import 'package:cbmes_v1/ui/pages/reset.dart';
// import 'package:cbmes_v1/provider/themes.bloc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MenuPopUp extends StatefulWidget {
  @override
  _MenuPopUpState createState() => _MenuPopUpState();
}

class _MenuPopUpState extends State<MenuPopUp> {
  @override
  void initState() {
    super.initState();
  }

  String photoPerfil = "assets/user/perfil/usernone.png";
  int photoChange = 1;

  Widget build(BuildContext context) {
    // Routes routes = Provider.of<Routes>(context);
    APIProvider apiProvider = Provider.of<APIProvider>(context);
    ThemesCB themesCB = Provider.of<ThemesCB>(context);

    loadPhotoPerfil() {
      bool isURLValid = Uri.parse("${apiProvider.userIdObj.filesUrl["img1"]}").hasPort;

      if (isURLValid == true) {
        return Image.network("${apiProvider.userIdObj.filesUrl["img1"]}");
      } else {
        return Image.asset("assets/user/perfil/usernone.png");
      }
    }

    Widget photo({@required double circularSize, @required double iconSize}) {
      return apiProvider.userIdObj.filesUrl["img1"] == ""
          ? ClipRRect(
              borderRadius: new BorderRadius.circular(circularSize),
              child: Container(
                width: circularSize,
                height: circularSize,
                decoration: BoxDecoration(
                  color: themesCB.backColor,
                  border: Border.all(color: themesCB.borderColor, width: 0.5),
                  borderRadius: BorderRadius.circular(circularSize),
                ),
                child: Icon(
                  IconsLinear.user,
                  size: iconSize,
                  color: themesCB.iconOffColor,
                ),
              ),
            )
          : ClipOval(
              child: Container(
                width: circularSize,
                height: circularSize,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(circularSize)),
                  border: Border.all(width: 0.5, color: Colors.black12),
                ),
                child: loadPhotoPerfil(),
              ),
            );
    }

    return PopupMenuButton(
      // padding: EdgeInsets.zero,
      onSelected: (value) {
        if (value == "2") {
          // routes.menu = "settings";
          // Navigator.of(context).pushReplacementNamed(routes.routes['SettingsPage']);
        }
        if (value == "3") {
          RestartWidget.restartApp(context);
        }
      },
      itemBuilder: (context) {
        var list = <PopupMenuEntry<Object>>[];
        list.add(
          PopupMenuItem(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      photoChange += 1;
                      if (photoChange > 4) {
                        photoChange = 1;
                      }
                      setState(() {});
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 10.0),
                      height: 100,
                      child: photo(
                        circularSize: 100.0,
                        iconSize: 50.0,
                      ),
                    ),
                  ),
                  Text(
                    apiProvider.userIdObj.name,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    apiProvider.userIdObj.positionCompany,
                    style: TextStyle(
                      color: themesCB.fontColor,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            value: "1",
          ),
        );

        list.add(
          PopupMenuDivider(
            height: 10,
          ),
        );
        // list.add(
        //   PopupMenuItem(
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       crossAxisAlignment: CrossAxisAlignment.center,
        //       children: [
        //         Icon(
        //           Icons.settings,
        //           color: themesCB.iconOffColor,
        //           size: 24.0,
        //         ),
        //         Container(
        //           // margin: EdgeInsets.only(left: 10),
        //           child: Text("Configurações"),
        //         ),
        //       ],
        //     ),
        //     value: "2",
        //     // checked: true,
        //   ),
        // );
        list.add(
          PopupMenuItem(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.format_color_fill_rounded,
                  color: themesCB.iconOffColor,
                  size: 24.0,
                ),
                Container(
                  // margin: EdgeInsets.only(left: 10),
                  child: Text("Tema: "),
                ),
                InkWell(
                  onTap: () {
                    themesCB.setTheme(theme: "Dark");
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        width: 2,
                        color: themesCB.selectTheme == "Dark" ? Colors.amber : Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                InkWell(
                  onTap: () {
                    themesCB.setTheme(theme: "Light");
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        width: 2,
                        color: themesCB.selectTheme == "Light" ? Colors.amber : Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
            value: "2",
            // checked: true,
          ),
        );
        list.add(
          PopupMenuItem(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.exit_to_app,
                  color: themesCB.iconOffColor,
                  size: 24.0,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text("Sair"),
                ),
              ],
            ),
            value: "3",
            // checked: true,
          ),
        );
        return list;
      },

      icon: Container(
        child: ClipRRect(
          borderRadius: new BorderRadius.circular(50.0),
          child: photo(
            circularSize: 50.0,
            iconSize: 20.0,
          ),
        ),
      ),
    );
  }
}

// Widget threeItemPopup() => PopupMenuButton(
//       itemBuilder: (context) {
//         var list = <PopupMenuEntry<Object>>[];
//         list.add(
//           PopupMenuItem(
//             child: Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Container(
//                     height: 100,
//                     child: Image.asset('assets/user/perfil/avatar.png'),
//                     margin: EdgeInsets.only(bottom: 10),
//                   ),
//                   Text(
//                     "Camila Borges",
//                     style: TextStyle(
//                       fontWeight: FontWeight.w700,
//                     ),
//                   ),
//                   Text(
//                     "Supervisora de Produção",
//                     style: TextStyle(
//                       color: themesCB.fontColor,
//                       fontSize: 15,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             value: "1",
//           ),
//         );
//         list.add(
//           PopupMenuDivider(
//             height: 10,
//           ),
//         );
//         list.add(
//           PopupMenuItem(
//             child: TextButton(
//               onPressed: () {
//                 // theme.
//               },
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Icon(
//                     Icons.settings,
//                     size: 24.0,
//                   ),
//                   Container(
//                     margin: EdgeInsets.only(left: 10),
//                     child: Text("Configurações"),
//                   ),
//                 ],
//               ),
//             ),
//             value: "2",
//             // checked: true,
//           ),
//         );
//         list.add(
//           PopupMenuItem(
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Icon(
//                   Icons.exit_to_app,
//                   size: 24.0,
//                 ),
//                 Container(
//                   margin: EdgeInsets.only(left: 10),
//                   child: Text("Sair"),
//                 ),
//               ],
//             ),
//             value: "2",
//             // checked: true,
//           ),
//         );
//         return list;
//       },
//       icon: Container(
//         child: Image.asset('assets/user/perfil/avatar.png'),
//       ),
//     );

// Widget simplePopup() => PopupMenuButton<int>(
//       itemBuilder: (context) => [
//         PopupMenuItem(
//           value: 1,
//           child: Text("First"),
//         ),
//         PopupMenuItem(
//           value: 2,
//           child: Text("Second"),
//         ),
//       ],
//     );

// Widget selectPopup() => PopupMenuButton<int>(
//       itemBuilder: (context) => [
//         PopupMenuItem(
//           value: 1,
//           child: Text("First"),
//         ),
//         PopupMenuItem(
//           value: 2,
//           child: Text("Second"),
//         ),
//       ],
//       initialValue: 2,
//       onCanceled: () {
//         print("You have canceled the menu.");
//       },
//       onSelected: (value) {
//         print("value:$value");
//       },
//       icon: Icon(Icons.list),
//     );

// Widget paddingPopup() => PopupMenuButton<int>(
//       itemBuilder: (context) => [
//         PopupMenuItem(
//           value: 1,
//           child: Text(
//             "English",
//             style: TextStyle(color: PURPLE, fontWeight: FontWeight.w700),
//           ),
//         ),
//         PopupMenuItem(
//           value: 2,
//           child: Text(
//             "Chinese",
//             style: TextStyle(color: PURPLE, fontWeight: FontWeight.w700),
//           ),
//         ),
//       ],
//       elevation: 4,
//       padding: EdgeInsets.symmetric(horizontal: 50),
//     );

// Widget childPopup() => PopupMenuButton<int>(
//       itemBuilder: (context) => [
//         PopupMenuItem(
//           value: 1,
//           child: Text(
//             "Earth",
//             style: TextStyle(color: TEXT_BLACK, fontWeight: FontWeight.w700),
//           ),
//         ),
//         PopupMenuItem(
//           value: 2,
//           child: Text(
//             "Moon",
//             style: TextStyle(color: TEXT_BLACK, fontWeight: FontWeight.w700),
//           ),
//         ),
//         PopupMenuItem(
//           value: 3,
//           child: Text(
//             "Sun",
//             style: TextStyle(color: TEXT_BLACK, fontWeight: FontWeight.w700),
//           ),
//         ),
//       ],
//       child: Container(
//         height: 50,
//         width: 200,
//         decoration: ShapeDecoration(
//           color: GREEN,
//           shape: StadiumBorder(
//             side: BorderSide(color: TEXT_BLACK, width: 2),
//           ),
//         ),
//         child: Icon(Icons.airplanemode_active),
//       ),
//     );

// Widget offsetPopup() => PopupMenuButton<int>(
//       itemBuilder: (context) => [
//         PopupMenuItem(
//           value: 1,
//           child: Text(
//             "Flutter Open",
//             style: TextStyle(color: TEXT_BLACK, fontWeight: FontWeight.w700),
//           ),
//         ),
//         PopupMenuItem(
//           value: 2,
//           child: Text(
//             "Flutter Tutorial",
//             style: TextStyle(color: TEXT_BLACK, fontWeight: FontWeight.w700),
//           ),
//         ),
//       ],
//       icon: Icon(Icons.library_add),
// //          offset: Offset(0, 100),
//     );
