import 'dart:async';
import 'package:cbmes_v1/api/api.dart';
import 'package:cbmes_v1/provider/apiProvider.dart';
import 'package:cbmes_v1/provider/global.provider.dart';
import 'package:cbmes_v1/provider/jsonx/jsonx.provider.dart';
import 'package:cbmes_v1/provider/operational.provider.dart';
import 'package:cbmes_v1/provider/production_orders.bloc.dart';
import 'package:cbmes_v1/provider/supervisory.provider.dart';
import 'package:cbmes_v1/provider/themes.provider.dart';
import 'package:cbmes_v1/models/user.dart';
import 'package:cbmes_v1/provider/themes/themes.provider.dart';
import 'package:cbmes_v1/ui/globalWidgets/buttons/button_primary.dart';
import 'package:cbmes_v1/ui/globalWidgets/customPaint/logoWhite.dart';
import 'package:cbmes_v1/ui/globalWidgets/decoration/gradient.dart';
import 'package:cbmes_v1/ui/globalWidgets/dialog_message.dart';
import 'package:cbmes_v1/ui/globalWidgets/dialog_progress.dart';
import 'package:cbmes_v1/ui/globalWidgets/global_scaffoldKey.dart';
import 'package:cbmes_v1/ui/pages/reset.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cbmes_v1/provider/routes.Provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
// import 'package:url_launcher/url_launcher.dart';
import 'ui/appBar/components/custom_drawer.dart';
import 'ui/appBar/custom_appBar.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(RestartWidget(child: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<JsonX>.value(
          value: JsonX(),
        ),
        ChangeNotifierProvider<GlobalProvider>.value(
          value: GlobalProvider(),
        ),
        ChangeNotifierProvider<Routes>.value(
          value: Routes(),
        ),
        ChangeNotifierProvider<Themes>.value(
          value: Themes(),
        ),
        ChangeNotifierProvider<ThemesCB>.value(
          value: ThemesCB(),
        ),
        ChangeNotifierProvider<APIProvider>.value(
          value: APIProvider(),
        ),
        ChangeNotifierProvider<OperationalBloc>.value(
          value: OperationalBloc(),
        ),
        ChangeNotifierProvider<SupervisoryBloc>.value(
          value: SupervisoryBloc(),
        ),
        ChangeNotifierProvider<ProductionOrdersAndExecutionBloc>.value(
          value: ProductionOrdersAndExecutionBloc(),
        ),
      ],
      child: Main(),
    );
  }
}

class Main extends StatelessWidget {
  final appTitle = 'Clone Bee MES';

  @override
  Widget build(BuildContext context) {
    Routes routes = Provider.of<Routes>(context);
    ThemesCB themeCB = Provider.of<ThemesCB>(context);

    return MaterialApp(
      title: appTitle,
      debugShowCheckedModeBanner: false,
      theme: themeCB.flutterTheme,
      scaffoldMessengerKey: GlobalScaffold.instance.scaffoldMessengerKey,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        FallbackCupertinoLocalisationsDelegate(),
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [const Locale('pt', 'BR')],
      initialRoute: '',
      routes: routes.getRoutes(),
      // home: MyHomePage(title: appTitle),
    );
  }
}

class FallbackCupertinoLocalisationsDelegate extends LocalizationsDelegate {
  const FallbackCupertinoLocalisationsDelegate();

  @override
  bool isSupported(Locale locale) => true;

  @override
  Future load(Locale locale) => DefaultCupertinoLocalizations.load(locale);

  @override
  bool shouldReload(FallbackCupertinoLocalisationsDelegate old) => false;
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
  }

  var network;
  final _formKey = GlobalKey<FormState>();
  FocusNode myFocusNode = new FocusNode();
  bool _obscureText = true;
  var api = new API();
  var user = new UserLogin();
  String userType = "users-admin";
  @override
  Widget build(BuildContext context) {
    Routes routes = Provider.of<Routes>(context);
    APIProvider apiProvider = Provider.of<APIProvider>(context);
    GlobalProvider global = Provider.of<GlobalProvider>(context);
    ThemesCB themesCB = Provider.of<ThemesCB>(context);

    // const oneSec = const Duration(seconds: 1);
    // new Timer.periodic(oneSec, (Timer t) => checkInternetConnection(context));

    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: gradientOrangeRed(context: context),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    child: logoWithe(xwidth: 150),
                  ),
                  Container(
                    child: Text(
                      'Manufacturing Execution Systems',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Container(
                width: 320,
                // height: 350,
                // height: MediaQuery.of(context).size.height * 0.27,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Center(
                  child: SingleChildScrollView(
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 25, right: 15, left: 15.0, bottom: 3),
                            child: TextFormField(
                              // initialValue: "alicebrandao@cb-test",
                              initialValue: "danielwarles@milhao",
                              cursorColor: themesCB.cursorColor,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                icon: Icon(
                                  Icons.person,
                                  color: themesCB.iconOffColor,
                                ),
                                // hintText: 'What do people call you?',
                                labelText: 'Usuário',
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
                                color: Colors.orange,
                              ),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Preencha este campo.';
                                }
                                return null;
                              },
                              onSaved: (val) {
                                user.user = val;
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15, right: 15, left: 15.0, bottom: 15),
                            child: TextFormField(
                              // initialValue: "FloresDeSetembro!@#",
                              initialValue: "Azul16!",
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: _obscureText,
                              cursorColor: themesCB.cursorColor,
                              enableSuggestions: false,
                              autocorrect: false,
                              decoration: InputDecoration(
                                suffixIcon: new GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _obscureText = !_obscureText;
                                    });
                                  },
                                  child: new Icon(
                                    _obscureText ? Icons.visibility : Icons.visibility_off,
                                    color: themesCB.iconOffColor,
                                  ),
                                ),
                                icon: Icon(
                                  Icons.lock,
                                  color: themesCB.iconOffColor,
                                ),
                                // hintText: 'What do people call you?',
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
                                color: Colors.orange,
                              ),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Preencha este campo.';
                                }
                                return null;
                              },
                              onSaved: (val) {
                                user.password = val;
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15, left: 15.0, bottom: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("Tipo de Usuário: "),
                                Container(
                                  height: 45,
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: themesCB.backColor,
                                    border: Border.all(width: 0.5, color: themesCB.borderColor),
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                  ),
                                  child: DropdownButton<String>(
                                    value: userType,
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
                                    onChanged: (String newValue) {
                                      setState(() {
                                        userType = newValue;
                                      });
                                    },
                                    items: [
                                      DropdownMenuItem(
                                        child: Text('Administrador'),
                                        value: 'users-admin',
                                      ),
                                      DropdownMenuItem(
                                        child: Text('Supervisor'),
                                        value: 'users-client',
                                      ),
                                      DropdownMenuItem(
                                        child: Text('Operador'),
                                        value: 'users-operator',
                                      ),
                                      DropdownMenuItem(
                                        child: Text('Root'),
                                        value: 'users-root',
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 15.0, left: 15.0, bottom: 25.0),
                            child: buttonPrimary(
                              context: context,
                              func: () async {
                                if (_formKey.currentState.validate()) {
                                  _formKey.currentState.save();

                                  if (user.user.contains('@') != true) {
                                    showDialog(
                                        context: context,
                                        barrierDismissible: false,
                                        builder: (BuildContext context) {
                                          return DialogMessage(message: 'Digite um usuário valido.');
                                        });
                                  } else {
                                    showDialog(
                                        context: context,
                                        barrierDismissible: false,
                                        builder: (BuildContext context) {
                                          return DialogProgress();
                                        });

                                    var x = await api.getToken(
                                      context: context,
                                      user: user.user,
                                      password: user.password,
                                      myUser: userType,
                                    );

                                    Navigator.of(context).pop();
                                    global.showDialogProgress = false;

                                    if (x != "OK") {
                                      showDialog(
                                        context: context,
                                        barrierDismissible: false,
                                        builder: (BuildContext context) {
                                          return CupertinoAlertDialog(
                                            title: Text("ERRO. Tente novamente."),
                                            content: Column(
                                              children: [
                                                Text("\n Usúario ou senha inválido.\n"),
                                              ],
                                            ),
                                            actions: [
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                                child: Text("Fechar"),
                                              )
                                            ],
                                          );
                                        },
                                      );
                                    } else {
                                      var snackbar = GlobalScaffold();
                                      snackbar.getshowSnackbar('Você está logado por 12 horas ou enquanto o app estiver aberto.');

                                      apiProvider.progress = "0";
                                      apiProvider.getId(context: context, id: apiProvider.userId, apiRoute: "users/$userType");
                                      apiProvider.userType = userType;

                                      Navigator.of(context).pushReplacementNamed(routes.routes['LoaderUser']);
                                    }
                                  }
                                }
                              },
                              widthx: 100,
                              text: "ACESSAR",
                            ),
                          ),
                        ],
                      ),
                    ),
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

class LoaderUser extends StatefulWidget {
  @override
  _LoaderUserState createState() => _LoaderUserState();
}

class _LoaderUserState extends State<LoaderUser> {
  bool init = true;

  @override
  Widget build(BuildContext context) {
    APIProvider apiProvider = Provider.of<APIProvider>(context);
    Themes theme = Provider.of<Themes>(context);
    Routes routes = Provider.of<Routes>(context);

    Future launchHome() async {
      await apiProvider.getId(context: context, id: apiProvider.userId, apiRoute: "users/${apiProvider.userType}");
      theme.cThemes = await apiProvider.userIdObj.theme[1];
      if (apiProvider.userIdObj != "") {
        theme.setTheme(theme.cThemes);
        Navigator.of(context).pushReplacementNamed(routes.routes['HomePage']);
      }
    }

    if (init == true) {
      init = false;
      launchHome();
    }

    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CupertinoActivityIndicator(),
          Text(
            "Carregando preferências de usuário.",
            style: TextStyle(color: Colors.black),
          )
        ],
      ),
    ));
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool aux = true;
  bool aux2 = false;

  @override
  Widget build(BuildContext context) {
    var routeBar = ModalRoute.of(context).settings.name;
    APIProvider api = Provider.of<APIProvider>(context);
    // Themes theme = Provider.of<Themes>(context);

    return Scaffold(
      // key: scaffoldKey,
      appBar: CustomAppBar(routeBar),
      drawer: CustomDrawer(),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                api.userIdObj.name,
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              Text("Bem vindo(a) ao Manufacturing Execution Systems Clone Bee."),
            ],
          ),
        ),
      ),
      // floatingActionButton: FabMenu(),
    );
  }
}
