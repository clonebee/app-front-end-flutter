import 'dart:io';
import 'package:cbmes_v1/provider/global.provider.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

Future checkInternetConnection(BuildContext context) async {
  GlobalProvider g = Provider.of<GlobalProvider>(context, listen: false);
  // Routes routes = Provider.of<Routes>(context, listen: false);

  var aux = g.lostNetworkPage;

  try {
    final response = await InternetAddress.lookup('www.google.com');
    if (response.isNotEmpty) {
      g.lostNetworkPage = false;
      g.contNetworkPage = 1;
    }
    // ignore: unused_catch_clause
  } on SocketException catch (err) {
    g.lostNetworkPage = true;
    g.contNetworkPage = 1;
  }

  if (aux != g.lostNetworkPage) {
    g.contNetworkPage = 0;
  }

  if (g.contNetworkPage == 0) {
    if (g.lostNetworkPage == true) {
      Navigator.of(context).pushNamed("/no_network");
    }
    if (g.lostNetworkPage == false) {
      Navigator.of(context).pop("/no_network");
    }
  }
}
