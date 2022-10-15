import 'package:cbmes_v1/provider/routes.Provider.dart';
import 'package:cbmes_v1/provider/themes/themes.provider.dart';
import 'package:cbmes_v1/ui/appBar/components/menuPopUpBellDot.dart';
import 'package:cbmes_v1/ui/globalWidgets/customPaint/menuGradient.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'components/menuPopUp.dart';

class CustomAppBar extends StatefulWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  final String title;

  CustomAppBar(
    this.title, {
    Key key,
  })  : preferredSize = Size.fromHeight(50.0),
        super(key: key);

  @override
  _CustomAppBarState createState() => _CustomAppBarState(title);
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  void initState() {
    super.initState();
  }

  final String title;
  _CustomAppBarState(this.title);

  @override
  Widget build(BuildContext context) {
    Routes routes = Provider.of<Routes>(context);
    ThemesCB themesCB = Provider.of<ThemesCB>(context);

    // const oneSec = const Duration(seconds: 1);
    // new Timer.periodic(oneSec, (Timer t) => checkInternetConnection(context));

    return AppBar(
      backgroundColor: themesCB.backColor,
      leading: Container(
        alignment: Alignment.center,
        child: Builder(
          builder: (context) => IconButton(
            icon: Container(
              child: CustomPaint(
                size: Size(30, 25),
                painter: MenuPainter(context: context),
              ),
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
      ),
      titleSpacing: 0,
      title: Container(
        margin: EdgeInsets.only(left: 0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: routes.setRoutesTitle(title, context),
        ),
      ),
      actions: <Widget>[
        // Container(
        //   width: 50,
        //   child: MenuPopUpBellDot(),
        // ),
        Container(
          width: 50,
          child: MenuPopUp(),
        ),
      ],
    );
  }
}
