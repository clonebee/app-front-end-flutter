import 'package:cbmes_v1/provider/global.provider.dart';
import 'package:cbmes_v1/ui/globalWidgets/customPaint/no_network.dart';
import 'package:cbmes_v1/ui/pages/reset.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NoNetwork extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    GlobalProvider global = Provider.of<GlobalProvider>(context);

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 40,
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: TextButton(
                        onPressed: () {
                          global.lostNetworkPage = false;
                          global.contNetworkPage = 0;
                          Navigator.of(context).pop("/no_network");
                        },
                        child: Text(
                          "VOLTAR",
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Container(
                      height: 40,
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromRGBO(237, 37, 36, 1),
                            Color.fromRGBO(242, 113, 33, 1),
                          ],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: TextButton(
                        onPressed: () {
                          global.lostNetworkPage = false;
                          global.contNetworkPage = 0;
                          RestartWidget.restartApp(context);
                        },
                        child: Text(
                          "RESERTAR SISTEMA",
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Text(
                "Oops...",
                style: TextStyle(color: Theme.of(context).hintColor, fontWeight: FontWeight.w700, fontSize: 20),
              ),
              Container(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: Text(
                  "Não foi possível completar a requisição, \npor favor verifique sua conexão com a internet.",
                  style: TextStyle(color: Theme.of(context).colorScheme.secondary, fontWeight: FontWeight.w300, fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 30),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                dragStartBehavior: DragStartBehavior.down,
                child: Center(
                  child: CustomPaint(
                    size: Size(MediaQuery.of(context).size.width * 0.9, (MediaQuery.of(context).size.width * 0.9 * 0.31015625).toDouble()),
                    painter: NoNetworkPainter(context: context),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
