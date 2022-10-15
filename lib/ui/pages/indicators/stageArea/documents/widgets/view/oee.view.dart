import 'package:cbmes_v1/provider/global.provider.dart';
import 'package:cbmes_v1/models/indicators/oee.models.dart';
import 'package:cbmes_v1/provider/themes/themes.provider.dart';
import 'package:cbmes_v1/themes/icons/IconsLinear.dart';
import 'package:cbmes_v1/ui/globalWidgets/myCustomScrollBehavior.dart';
import 'package:cbmes_v1/ui/globalWidgets/stageAreaGlobal/widgets/ButtonsOptions.dart';
import "package:flutter/material.dart";
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class OeeView extends StatefulWidget {
  const OeeView({Key key}) : super(key: key);

  @override
  _OeeViewState createState() => _OeeViewState();
}

class _OeeViewState extends State<OeeView> {
  bool init = true;
  String selectedUsersId = "";
  List<String> listUsersId = [];
  Map<String, String> listUsersName = {};
  Map<String, String> listUsersImg = {};

  var model = new OeeModel();
  String resourceId;
  String resourceName;
  List<String> listResourceId = [];
  List<String> listResourceName = [];

  String selectStatus = "play";

  var formatterDateTime = new DateFormat("dd/MM/yyyy - kk'h':mm'");
  var formatterDate = new DateFormat('dd/MM/yyyy');
  var formatterTime = new DateFormat("kk'h':mm'min'");

  ScrollController s1 = ScrollController();

  ScrollController sc1 = ScrollController();
  ScrollController sc2 = ScrollController();
  ScrollController sc3 = ScrollController();
  ScrollController sc4 = ScrollController();
  ScrollController sc5 = ScrollController();
  ScrollController sc6 = ScrollController();
  ScrollController sc7 = ScrollController();
  ScrollController sc8 = ScrollController();

  @override
  Widget build(BuildContext context) {
    GlobalProvider g = Provider.of<GlobalProvider>(context);
    ThemesCB themesCB = Provider.of<ThemesCB>(context);

    if (init == true) {
      init = false;
      model = g.getDynamicModel();
      // print(model.toJson());
      resourceId = model.oee["launches"].keys.toList()[0];
      resourceName = model.docsRelations["list_resources"][0]["name"];

      for (int i = 0; i < model.docsRelations["list_resources"].length; i++) {
        listResourceId.add(model.docsRelations["list_resources"][i]["_id"]);
        listResourceName.add(model.docsRelations["list_resources"][i]["name"]);
        // mapUserId[model.listResources[i]["_id"]] = List<String>.from(model.oee["launches"][model.listResources[i]["_id"]].keys);
      }

      listUsersId = model.oee["launches"][resourceId].keys.toList();
      selectedUsersId = model.oee["launches"][resourceId].keys.toList()[0];
      for (int i = 0; i < model.docsRelations["list_users_operator"].length; i++) {
        listUsersName[model.docsRelations["list_users_operator"][i]["_id"]] = model.docsRelations["list_users_operator"][i]["name"];
        listUsersImg[model.docsRelations["list_users_operator"][i]["_id"]] = model.docsRelations["list_users_operator"][i]["files_url"]["img1"];
      }
    }

    Widget oeeData() {
      return Container(
        child: ScrollConfiguration(
          behavior: MyCustomScrollBehavior(),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            controller: sc1,
            child: Container(
              padding: EdgeInsets.all(30),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ScrollConfiguration(
                      behavior: MyCustomScrollBehavior(),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        controller: sc2,
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 350,
                                height: 300,
                                margin: EdgeInsets.only(right: 10),
                                child: SvgPicture.network(
                                  model.plotsOee["chart_speedometer"][resourceId],
                                  alignment: Alignment.centerLeft,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Selecione um Recurso: ",
                                    style: themesCB.regularStyleText,
                                  ),
                                  Container(
                                    width: 170,
                                    height: 45,
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: themesCB.backColor,
                                      border: Border.all(width: 0.5, color: themesCB.borderColor),
                                      borderRadius: BorderRadius.all(Radius.circular(5)),
                                    ),
                                    child: DropdownButton<String>(
                                      isExpanded: true,
                                      value: resourceName,
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
                                      onChanged: (String newValue) {
                                        setState(() {
                                          resourceName = newValue;
                                          var ii = listResourceName.indexWhere((element) => element == resourceName);
                                          resourceId = listResourceId[ii];
                                        });
                                      },
                                      items: listResourceName.map<DropdownMenuItem<String>>((String value) {
                                        return DropdownMenuItem<String>(
                                          child: Text(value),
                                          value: value,
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                  Text(""),
                                  Container(
                                    width: 250,
                                    child: Text(
                                      model.name,
                                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                  Text(
                                    "$resourceName",
                                    style: themesCB.regularStyleText,
                                  ),
                                  Text(""),
                                  Text(
                                    "Data inicial: ${formatterDate.format(DateTime.parse(model.startDate))}",
                                    style: themesCB.regularStyleText,
                                  ),
                                  Text(
                                    "Horário inicial: ${formatterTime.format(DateTime.parse(model.startDate))}",
                                    style: themesCB.regularStyleText,
                                  ),
                                  Text(""),
                                  Text(
                                    "Data final: ${formatterDate.format(DateTime.parse(model.endDate))}",
                                    style: themesCB.regularStyleText,
                                  ),
                                  Text(
                                    "Horário final: ${formatterTime.format(DateTime.parse(model.endDate))}",
                                    style: themesCB.regularStyleText,
                                  ),
                                  ButtonsOptions(model: model, index: 0),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      width: MediaQuery.of(context).orientation == Orientation.portrait ? MediaQuery.of(context).size.width * 0.90 : MediaQuery.of(context).size.width * 0.55,
                      child: ScrollConfiguration(
                        behavior: MyCustomScrollBehavior(),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          controller: sc8,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 350,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: themesCB.backColor,
                                  border: Border.all(width: 0.5, color: themesCB.borderColor),
                                  borderRadius: BorderRadius.all(Radius.circular(5)),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Qualidade",
                                      style: themesCB.boldStyleText,
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "índices: ${model.oee["quality"]["indexes"][resourceId]}",
                                      style: themesCB.regularStyleText,
                                    ),
                                    Text(
                                      "Quantidade de itens bons produzida: ${model.oee["quality"]["good_count_produced"][resourceId]}",
                                      style: themesCB.regularStyleText,
                                    ),
                                    Text(
                                      "Quantidade total produzida: ${model.oee["quality"]["total_count_produced"][resourceId]}",
                                      style: themesCB.regularStyleText,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 10,
                                height: 10,
                              ),
                              Container(
                                width: 350,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: themesCB.backColor,
                                  border: Border.all(width: 0.5, color: themesCB.borderColor),
                                  borderRadius: BorderRadius.all(Radius.circular(5)),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Disponibilidade",
                                      style: themesCB.boldStyleText,
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "índices: ${model.oee["availability"]["indexes"][resourceId]}",
                                      style: themesCB.regularStyleText,
                                    ),
                                    Text(
                                      "Tempo de produção planejado: ${model.oee["availability"]["planned_production_time"][resourceId]}",
                                      style: themesCB.regularStyleText,
                                    ),
                                    Text(
                                      "Tempo de execução: ${model.oee["availability"]["run_time"][resourceId]}",
                                      style: themesCB.regularStyleText,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 10,
                                height: 10,
                              ),
                              Container(
                                width: 350,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: themesCB.backColor,
                                  border: Border.all(width: 0.5, color: themesCB.borderColor),
                                  borderRadius: BorderRadius.all(Radius.circular(5)),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Performance",
                                      style: themesCB.boldStyleText,
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "índices: ${model.oee["performace"]["indexes"][resourceId]}",
                                      style: themesCB.regularStyleText,
                                    ),
                                    Text(
                                      "Quantidade real produzida: ${model.oee["performace"]["real_production_quantity"][resourceId]}",
                                      style: themesCB.regularStyleText,
                                    ),
                                    Text(
                                      "Quantidade teórica de produção: ${model.oee["performace"]["theoretical_production_quantity"][resourceId]}",
                                      style: themesCB.regularStyleText,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      width: MediaQuery.of(context).orientation == Orientation.portrait ? MediaQuery.of(context).size.width * 0.90 : MediaQuery.of(context).size.width * 0.58,
                      // height: 600,
                      child: MediaQuery.removePadding(
                        removeTop: true,
                        removeBottom: true,
                        removeLeft: true,
                        removeRight: true,
                        context: context,
                        child: ExpansionTile(
                          initiallyExpanded: false,
                          iconColor: themesCB.iconOffColor,
                          collapsedIconColor: themesCB.iconOffColor,
                          maintainState: true,
                          expandedAlignment: Alignment.centerLeft,
                          tilePadding: EdgeInsets.zero,
                          title: Text(
                            "Lançamentos dos colaboradores",
                            style: themesCB.boldStyleText,
                          ),
                          children: [
                            Container(
                              width: double.infinity,
                              height: 125,
                              child: MediaQuery.removePadding(
                                removeTop: true,
                                removeBottom: true,
                                removeLeft: true,
                                removeRight: true,
                                context: context,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                  physics: ClampingScrollPhysics(),
                                  itemCount: listUsersId.length,
                                  itemBuilder: (BuildContext context, int index) {
                                    return Container(
                                      alignment: Alignment.centerLeft,
                                      child: InkWell(
                                        onTap: () {
                                          setState(() {
                                            selectedUsersId = listUsersId[index];
                                          });
                                        },
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              alignment: Alignment.center,
                                              width: 80,
                                              height: 80,
                                              padding: EdgeInsets.all(5),
                                              decoration: selectedUsersId == listUsersId[index]
                                                  ? BoxDecoration(
                                                      color: themesCB.backColor,
                                                      gradient: themesCB.gradient2,
                                                      borderRadius: BorderRadius.all(Radius.circular(100)),
                                                    )
                                                  : BoxDecoration(
                                                      borderRadius: BorderRadius.all(Radius.circular(100)),
                                                      border: Border.all(color: themesCB.borderColor, width: 0.5),
                                                    ),
                                              child: ClipRRect(
                                                borderRadius: new BorderRadius.circular(100),
                                                child: Container(
                                                  width: 100,
                                                  height: 100,
                                                  decoration: BoxDecoration(
                                                    color: themesCB.backColor,
                                                    borderRadius: BorderRadius.circular(100),
                                                  ),
                                                  child: listUsersName[listUsersId[index]] != "" || listUsersName[listUsersId[index]] != null
                                                      ? Image.network(
                                                          listUsersImg[listUsersId[index]],
                                                          fit: BoxFit.fill,
                                                        )
                                                      : Icon(
                                                          IconsLinear.user,
                                                          size: 30,
                                                          color: themesCB.iconOffColor,
                                                        ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              "${listUsersName[listUsersId[index]]}",
                                              style: themesCB.regularStyleText,
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                            Divider(
                              height: 10,
                              thickness: 1,
                              indent: 0,
                              endIndent: 0,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10, bottom: 10),
                              child: OrientationSwitcher(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(right: 10),
                                    child: Text(
                                      "Selecione um estado para visualizar os lançamentos:",
                                      style: themesCB.regularStyleText,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                    height: 45,
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: themesCB.backColor,
                                      border: Border.all(width: 0.5, color: themesCB.borderColor),
                                      borderRadius: BorderRadius.all(Radius.circular(5)),
                                    ),
                                    child: DropdownButton<String>(
                                      value: selectStatus,
                                      isExpanded: MediaQuery.of(context).orientation == Orientation.portrait ? true : false,
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
                                      onChanged: (String newValue) {
                                        selectStatus = newValue;
                                        setState(() {});
                                      },
                                      items: ["play", "pause", "stop"].map<DropdownMenuItem<String>>((String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              height: 10,
                              thickness: 1,
                              indent: 0,
                              endIndent: 0,
                            ),
                            SizedBox(height: 15),
                            selectStatus == "play"
                                ? Container(
                                    width: 600,
                                    child: model.oee["launches"][resourceId][selectedUsersId]["data_entry_play"].length > 1
                                        ? ListView.builder(
                                            shrinkWrap: true,
                                            physics: NeverScrollableScrollPhysics(),
                                            itemCount: model.oee["launches"][resourceId][selectedUsersId]["data_entry_play"].length,
                                            itemBuilder: (BuildContext context, int index) {
                                              return Container(
                                                margin: EdgeInsets.only(bottom: 15),
                                                padding: EdgeInsets.all(10),
                                                decoration: BoxDecoration(
                                                  color: themesCB.backColor,
                                                  border: Border.all(width: 0.5, color: themesCB.borderColor),
                                                  borderRadius: BorderRadius.all(Radius.circular(5)),
                                                ),
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    RichText(
                                                      text: TextSpan(
                                                        style: DefaultTextStyle.of(context).style,
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                            text: "Origem do dado: ",
                                                            style: TextStyle(
                                                              fontWeight: FontWeight.w700,
                                                              fontSize: 15,
                                                              color: themesCB.fontColor,
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text: "${model.oee["launches"][resourceId][selectedUsersId]["data_entry_play"][index]["data_origin"]}",
                                                            style: themesCB.regularStyleText,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    RichText(
                                                      text: TextSpan(
                                                        style: DefaultTextStyle.of(context).style,
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                            text: "Nome do operador: ",
                                                            style: TextStyle(
                                                              fontWeight: FontWeight.w700,
                                                              fontSize: 15,
                                                              color: themesCB.fontColor,
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text: "${model.oee["launches"][resourceId][selectedUsersId]["data_entry_play"][index]["user_name"]}",
                                                            style: themesCB.regularStyleText,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    RichText(
                                                      text: TextSpan(
                                                        style: DefaultTextStyle.of(context).style,
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                            text: "Quantidade lançada: ",
                                                            style: TextStyle(
                                                              fontWeight: FontWeight.w700,
                                                              fontSize: 15,
                                                              color: themesCB.fontColor,
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text: "${model.oee["launches"][resourceId][selectedUsersId]["data_entry_play"][index]["qty_throw"]}",
                                                            style: themesCB.regularStyleText,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    RichText(
                                                      text: TextSpan(
                                                        style: DefaultTextStyle.of(context).style,
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                            text: "Tipo de item: ",
                                                            style: TextStyle(
                                                              fontWeight: FontWeight.w700,
                                                              fontSize: 15,
                                                              color: themesCB.fontColor,
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text: "${model.oee["launches"][resourceId][selectedUsersId]["data_entry_play"][index]["type_items"]}",
                                                            style: themesCB.regularStyleText,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    RichText(
                                                      text: TextSpan(
                                                        style: DefaultTextStyle.of(context).style,
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                            text: "Data e hora (lançamento): ",
                                                            style: TextStyle(
                                                              fontWeight: FontWeight.w700,
                                                              fontSize: 15,
                                                              color: themesCB.fontColor,
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text:
                                                                "${formatterDateTime.format(DateTime.parse(model.oee["launches"][resourceId][selectedUsersId]["data_entry_play"][index]["time_now"]))}",
                                                            style: themesCB.regularStyleText,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          )
                                        : Center(
                                            child: Text(
                                              "Nenhum lançamento registrado.",
                                              style: themesCB.regularStyleText,
                                            ),
                                          ),
                                  )
                                : Container(),
                            selectStatus == "pause"
                                ? Container(
                                    width: 600,
                                    child: model.oee["launches"][resourceId][selectedUsersId]["data_entry_pause"].length > 1
                                        ? ListView.builder(
                                            shrinkWrap: true,
                                            physics: NeverScrollableScrollPhysics(),
                                            itemCount: model.oee["launches"][resourceId][selectedUsersId]["data_entry_pause"].length,
                                            itemBuilder: (BuildContext context, int index) {
                                              return Container(
                                                margin: EdgeInsets.only(bottom: 15),
                                                padding: EdgeInsets.all(10),
                                                decoration: BoxDecoration(
                                                  color: themesCB.backColor,
                                                  border: Border.all(width: 0.5, color: themesCB.borderColor),
                                                  borderRadius: BorderRadius.all(Radius.circular(5)),
                                                ),
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    RichText(
                                                      text: TextSpan(
                                                        style: DefaultTextStyle.of(context).style,
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                            text: "Origem do dado: ",
                                                            style: TextStyle(
                                                              fontWeight: FontWeight.w700,
                                                              fontSize: 15,
                                                              color: themesCB.fontColor,
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text: "${model.oee["launches"][resourceId][selectedUsersId]["data_entry_pause"][index]["data_origin"]}",
                                                            style: themesCB.regularStyleText,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    RichText(
                                                      text: TextSpan(
                                                        style: DefaultTextStyle.of(context).style,
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                            text: "Nome do operador: ",
                                                            style: TextStyle(
                                                              fontWeight: FontWeight.w700,
                                                              fontSize: 15,
                                                              color: themesCB.fontColor,
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text: "${model.oee["launches"][resourceId][selectedUsersId]["data_entry_pause"][index]["user_name"]}",
                                                            style: themesCB.regularStyleText,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    RichText(
                                                      text: TextSpan(
                                                        style: DefaultTextStyle.of(context).style,
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                            text: "Razão: ",
                                                            style: TextStyle(
                                                              fontWeight: FontWeight.w700,
                                                              fontSize: 15,
                                                              color: themesCB.fontColor,
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text: "${model.oee["launches"][resourceId][selectedUsersId]["data_entry_pause"][index]["reason"]}",
                                                            style: themesCB.regularStyleText,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    RichText(
                                                      text: TextSpan(
                                                        style: DefaultTextStyle.of(context).style,
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                            text: "Data e hora (lançamento): ",
                                                            style: TextStyle(
                                                              fontWeight: FontWeight.w700,
                                                              fontSize: 15,
                                                              color: themesCB.fontColor,
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text:
                                                                "${formatterDateTime.format(DateTime.parse(model.oee["launches"][resourceId][selectedUsersId]["data_entry_pause"][index]["time_now"]))}",
                                                            style: themesCB.regularStyleText,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          )
                                        : Center(
                                            child: Text("Nenhum lançamento registrado."),
                                          ),
                                  )
                                : Container(),
                            selectStatus == "stop"
                                ? Container(
                                    width: 600,
                                    child: model.oee["launches"][resourceId][selectedUsersId]["data_entry_stop"].length > 1
                                        ? ListView.builder(
                                            shrinkWrap: true,
                                            physics: NeverScrollableScrollPhysics(),
                                            itemCount: model.oee["launches"][resourceId][selectedUsersId]["data_entry_stop"].length,
                                            itemBuilder: (BuildContext context, int index) {
                                              return Container(
                                                margin: EdgeInsets.only(bottom: 15),
                                                padding: EdgeInsets.all(10),
                                                decoration: BoxDecoration(
                                                  color: themesCB.backColor,
                                                  border: Border.all(width: 0.5, color: themesCB.borderColor),
                                                  borderRadius: BorderRadius.all(Radius.circular(5)),
                                                ),
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    RichText(
                                                      text: TextSpan(
                                                        style: DefaultTextStyle.of(context).style,
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                            text: "Origem do dado: ",
                                                            style: TextStyle(
                                                              fontWeight: FontWeight.w700,
                                                              fontSize: 15,
                                                              color: themesCB.fontColor,
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text: "${model.oee["launches"][resourceId][selectedUsersId]["data_entry_stop"][index]["data_origin"]}",
                                                            style: themesCB.regularStyleText,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    RichText(
                                                      text: TextSpan(
                                                        style: DefaultTextStyle.of(context).style,
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                            text: "Nome do operador: ",
                                                            style: TextStyle(
                                                              fontWeight: FontWeight.w700,
                                                              fontSize: 15,
                                                              color: themesCB.fontColor,
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text: "${model.oee["launches"][resourceId][selectedUsersId]["data_entry_stop"][index]["user_name"]}",
                                                            style: themesCB.regularStyleText,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    RichText(
                                                      text: TextSpan(
                                                        style: DefaultTextStyle.of(context).style,
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                            text: "Data e hora (lançamento): ",
                                                            style: TextStyle(
                                                              fontWeight: FontWeight.w700,
                                                              fontSize: 15,
                                                              color: themesCB.fontColor,
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text:
                                                                "${formatterDateTime.format(DateTime.parse(model.oee["launches"][resourceId][selectedUsersId]["data_entry_stop"][index]["time_now"]))}",
                                                            style: themesCB.regularStyleText,
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          )
                                        : Center(
                                            child: Text(
                                              "Nenhum lançamento registrado.",
                                              style: themesCB.regularStyleText,
                                            ),
                                          ),
                                  )
                                : Container(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    }

    Widget oeeGraphs() {
      return ScrollConfiguration(
        behavior: MyCustomScrollBehavior(),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          controller: sc3,
          child: Container(
            margin: EdgeInsets.only(left: 15),
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: themesCB.backColor,
              boxShadow: [themesCB.shadow],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ScrollConfiguration(
                  behavior: MyCustomScrollBehavior(),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    controller: sc4,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 150,
                              height: 150,
                              margin: EdgeInsets.only(right: 10),
                              child: Image.network(model.plotsOee["chart_circular"][resourceId]["quality"]),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Qualidade",
                              style: themesCB.boldStyleText,
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 150,
                              height: 150,
                              margin: EdgeInsets.only(right: 10),
                              child: Image.network(model.plotsOee["chart_circular"][resourceId]["availability"]),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Disponibilidade",
                              style: themesCB.boldStyleText,
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 150,
                              height: 150,
                              child: Image.network(model.plotsOee["chart_circular"][resourceId]["performace"]),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Performance",
                              style: themesCB.boldStyleText,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 45),
                ScrollConfiguration(
                  behavior: MyCustomScrollBehavior(),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    controller: sc5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Qualidade = (Qty produzida x Qty descartada)",
                          style: themesCB.boldStyleText,
                        ),
                        Container(
                          // color: Colors.black12,
                          width: 450,
                          height: 300,
                          child: Image.network(model.plotsOee["chart_quality"][resourceId]),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30),
                ScrollConfiguration(
                  behavior: MyCustomScrollBehavior(),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    controller: sc6,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Disponibilidade x Tempo",
                          style: themesCB.boldStyleText,
                        ),
                        Container(
                          // color: Colors.black12,
                          width: 450,
                          height: 250,
                          child: Image.network(model.plotsOee["chart_availability"][resourceId]),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30),
                ScrollConfiguration(
                  behavior: MyCustomScrollBehavior(),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    controller: sc7,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Performance = (Qty nominal x Qty real) por hora",
                          style: themesCB.boldStyleText,
                        ),
                        Container(
                          // color: Colors.black12,
                          width: 450,
                          height: 250,
                          child: Image.network(model.plotsOee["chart_performace"][resourceId]),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    return OrientationBuilder(builder: (_, orientation) {
      if (orientation == Orientation.portrait) {
        return Center(
          child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: ScrollConfiguration(
                behavior: MyCustomScrollBehavior(),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  controller: s1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      oeeData(),
                      Center(
                        child: oeeGraphs(),
                      ),
                    ],
                  ),
                ),
              )),
        );
      } else {
        return Center(
          child: Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    height: MediaQuery.of(context).size.height,
                    child: oeeData(),
                  ),
                  Expanded(
                    child: oeeGraphs(),
                  ),
                ],
              )),
        );
      }
    });
  }
}

class OrientationSwitcher extends StatelessWidget {
  final List<Widget> children;

  const OrientationSwitcher({Key key, this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    return orientation == Orientation.portrait
        ? Column(
            children: children,
          )
        : Row(
            children: children,
          );
  }
}
