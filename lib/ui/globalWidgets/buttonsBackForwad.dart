import 'package:cbmes_v1/provider/global.provider.dart';
import 'package:cbmes_v1/provider/themes/themes.provider.dart';
import 'package:flutter/material.dart';
import 'package:cbmes_v1/provider/routes.Provider.dart';
import 'package:provider/provider.dart';

class ButtonsBackForward extends StatelessWidget {
  final bool back;
  final bool forward;
  final double size;

  ButtonsBackForward({@required this.back, @required this.forward, @required this.size});

  @override
  Widget build(BuildContext context) {
    GlobalProvider g = Provider.of<GlobalProvider>(context);
    ThemesCB themesCB = Provider.of<ThemesCB>(context);
    Routes routes = Provider.of<Routes>(context);

    return Row(
      children: [
        back == true
            ? Container(
                width: size,
                child: IconButton(
                  padding: EdgeInsets.all(0),
                  onPressed: () {
                    g.search = "";
                    Navigator.of(context).pushReplacementNamed(routes.backRoute);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_rounded,
                    size: size,
                    color: themesCB.iconOffColor,
                  ),
                ),
              )
            : Container(),
        forward == true
            ? Container(
                width: size,
                child: IconButton(
                  padding: EdgeInsets.all(0),
                  onPressed: () {
                    g.search = "";
                    Navigator.of(context).pushReplacementNamed(routes.forwardRoute);
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: size,
                    color: themesCB.iconOffColor,
                  ),
                ),
              )
            : Container(),
      ],
    );
  }
}
