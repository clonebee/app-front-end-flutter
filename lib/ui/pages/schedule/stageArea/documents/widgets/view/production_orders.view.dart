import 'package:cbmes_v1/provider/global.provider.dart';
import 'package:cbmes_v1/provider/jsonx/jsonx.provider.dart';
import 'package:cbmes_v1/models/schedule/production_orders.models.dart';
import 'package:cbmes_v1/provider/themes/themes.provider.dart';
import 'package:cbmes_v1/themes/icons/IconsLinear.dart';
import 'package:cbmes_v1/themes/icons/ScheduleIcons_icons.dart';
import 'package:cbmes_v1/ui/globalWidgets/myCustomScrollBehavior.dart';
import 'package:cbmes_v1/ui/globalWidgets/photoPerfil.dart';
import 'package:cbmes_v1/ui/pages/schedule/stageArea/documents/widgets/view/widgets/production_orders_menu_options.view.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:quiver/strings.dart';

class ProductionOrdersView extends StatefulWidget {
  @override
  _ProductionOrdersViewState createState() => _ProductionOrdersViewState();
}

class _ProductionOrdersViewState extends State<ProductionOrdersView> {
  @override
  void initState() {
    super.initState();
  }

  var model = new ProductionOrdersModel(
    sId: null,
    name: "",
    orderStatus: "off",
    favorite: false,
    situation: true,
    filesBase64Up: {
      "chart_gantt": "",
    },
    filesUrl: {
      "chart_gantt": "",
    },
    docsRelations: null,
    docsRelationsIds: {},
  );
  bool init = true;
  List<String> listJobs = [];
  List<String> listJobsNames = [];
  List<String> listTasks = [];
  Map<String, dynamic> tasks = {};
  Map<String, dynamic> resources = {};
  Map<String, dynamic> employees = {};
  String eixoX = "horas";
  String auxJob = "";
  String auxTask = "";
  String auxResources = "";
  String auxEmployees = "";

  var dateTimeStart;
  var dateTimeEnd;

  var formatterDate = new DateFormat('dd/MM/yyyy');
  var formatterTime = new DateFormat("kk'h':mm'min'");

  ScrollController sc1 = ScrollController();
  ScrollController sc2 = ScrollController();
  ScrollController sc3 = ScrollController();

  @override
  Widget build(BuildContext context) {
    GlobalProvider g = Provider.of<GlobalProvider>(context);
    // ProductionOrdersAndExecutionBloc poe = Provider.of<ProductionOrdersAndExecutionBloc>(context);
    JsonX jx = Provider.of<JsonX>(context);
    ThemesCB themesCB = Provider.of<ThemesCB>(context);

    jx.apiRoute = "schedule/production-orders-data";

    if (init == true) {
      init = false;
      // poe.buttonStatus(groupButton: "group1", nameButton: "planned");
      model = g.getDynamicModel();

      for (var e in model.information.entries) {
        listJobs += [e.key];
        listJobsNames += [e.value["name"]];
        tasks[e.key] = e.value["info"].keys.toList();
        var a = List<String>.from(tasks[e.key]);
        for (int i = 0; i < a.length; i++) {
          resources[a[i]] = e.value["info"][a[i]]["resources"].keys.toList();
          var b = List<String>.from(resources[a[i]]);
          for (int i2 = 0; i2 < b.length; i2++) {
            employees[b[i2]] = e.value["info"][a[i]]["resources"][b[i2]]["employees"].keys.toList();
          }
        }
      }

      auxJob = listJobs[0];
      auxTask = tasks[auxJob][0];
      auxResources = resources[auxTask][0];
      if (employees[auxResources].length > 0) {
        auxEmployees = employees[auxResources][0];
      }
    }

    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ScrollConfiguration(
              behavior: MyCustomScrollBehavior(),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                controller: sc1,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: ScrollConfiguration(
                    behavior: MyCustomScrollBehavior(),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      controller: sc2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.7,
                            padding: EdgeInsets.only(top: 30, left: 30, right: 30),
                            child: ScrollConfiguration(
                              behavior: MyCustomScrollBehavior(),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                controller: sc3,
                                child: Container(
                                  child: MenuOptionsViewProductionOrders(model: model),
                                ),
                              ),
                            ),
                          ),
                          model.filesUrl["chart_gantt"] == null || model.filesUrl["chart_gantt"] == ""
                              ? Center(
                                  child: Container(
                                    child: Text(
                                      "Nenhum Gráfico de Gantt encontrado.",
                                      style: themesCB.regularStyleText,
                                    ),
                                  ),
                                )
                              : Container(
                                  width: MediaQuery.of(context).size.width * 0.7,
                                  alignment: Alignment.center,
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Container(
                                      // height: 300,
                                      padding: EdgeInsets.only(top: 20),
                                      child: SvgPicture.network(
                                        model.filesUrl["chart_gantt"],
                                        width: 1000,
                                        // height: 200,
                                      ),
                                    ),
                                  ),
                                ),
                          //  ---------------------
                          Container(
                            width: MediaQuery.of(context).size.width * 0.7,
                            padding: EdgeInsets.all(30),
                            child: Center(
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 400,
                                      height: 130,
                                      margin: EdgeInsets.only(right: 10),
                                      padding: EdgeInsets.all(3),
                                      decoration: BoxDecoration(
                                        color: themesCB.backColor,
                                        border: Border.all(width: 0.5, color: themesCB.borderColor),
                                        borderRadius: BorderRadius.all(Radius.circular(5)),
                                      ),
                                      child: Column(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(bottom: 10),
                                            padding: EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(5)),
                                              gradient: themesCB.gradient2,
                                            ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.only(right: 10),
                                                  child: Icon(
                                                    ScheduleIcons.time,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                RichText(
                                                  text: TextSpan(
                                                    style: DefaultTextStyle.of(context).style,
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                        text: "Período total: ",
                                                        style: TextStyle(fontWeight: FontWeight.w700, color: Colors.white),
                                                      ),
                                                      TextSpan(
                                                        text: "${model.summary["total_time"]}",
                                                        style: TextStyle(fontWeight: FontWeight.w700, color: Colors.white),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(right: 10),
                                                child: Column(
                                                  children: [
                                                    RichText(
                                                      text: TextSpan(
                                                        style: DefaultTextStyle.of(context).style,
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                            text: "Data inicial: ",
                                                            style: themesCB.regularStyleText,
                                                          ),
                                                          TextSpan(
                                                            text: "${formatterDate.format(DateTime.parse(model.summary["start_date"]))}",
                                                            style: themesCB.boldStyleText,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    RichText(
                                                      text: TextSpan(
                                                        style: DefaultTextStyle.of(context).style,
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                            text: "Horário inicial: ",
                                                            style: themesCB.regularStyleText,
                                                          ),
                                                          TextSpan(
                                                            text: "${formatterTime.format(DateTime.parse(model.summary["start_date"]))}",
                                                            style: themesCB.boldStyleText,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(left: 10),
                                                child: Column(
                                                  children: [
                                                    RichText(
                                                      text: TextSpan(
                                                        style: DefaultTextStyle.of(context).style,
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                            text: "Data final: ",
                                                            style: themesCB.regularStyleText,
                                                          ),
                                                          TextSpan(
                                                            text: "${formatterDate.format(DateTime.parse(model.summary["end_date"]))}",
                                                            style: themesCB.boldStyleText,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    RichText(
                                                      text: TextSpan(
                                                        style: DefaultTextStyle.of(context).style,
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                            text: "Horário final: ",
                                                            style: themesCB.regularStyleText,
                                                          ),
                                                          TextSpan(
                                                            text: "${formatterTime.format(DateTime.parse(model.summary["end_date"]))}",
                                                            style: themesCB.boldStyleText,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    //Coast ---------------------------
                                    Container(
                                      width: 300,
                                      height: 130,
                                      padding: EdgeInsets.all(3),
                                      decoration: BoxDecoration(
                                        color: themesCB.backColor,
                                        border: Border.all(width: 0.5, color: themesCB.borderColor),
                                        borderRadius: BorderRadius.all(Radius.circular(5)),
                                      ),
                                      child: Column(
                                        children: [
                                          Container(
                                            width: 300,
                                            margin: EdgeInsets.only(bottom: 10),
                                            padding: EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(5)),
                                              gradient: themesCB.gradient2,
                                            ),
                                            child: ScrollConfiguration(
                                              behavior: MyCustomScrollBehavior(),
                                              child: SingleChildScrollView(
                                                scrollDirection: Axis.horizontal,
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      margin: EdgeInsets.only(right: 10),
                                                      child: Icon(
                                                        ScheduleIcons.coast,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                    RichText(
                                                      text: TextSpan(
                                                        style: DefaultTextStyle.of(context).style,
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                            text: "R\$ ${model.summary["total_cost"]}",
                                                            style: TextStyle(fontWeight: FontWeight.w700, color: Colors.white),
                                                          ),
                                                          TextSpan(
                                                            text: " custo de produção",
                                                            style: TextStyle(fontWeight: FontWeight.w700, color: Colors.white),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 300,
                                            // margin: EdgeInsets.only(top: 10),
                                            child: ScrollConfiguration(
                                              behavior: MyCustomScrollBehavior(),
                                              child: SingleChildScrollView(
                                                scrollDirection: Axis.horizontal,
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      margin: EdgeInsets.only(bottom: 10),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children: [
                                                          Container(
                                                            width: 50,
                                                            margin: EdgeInsets.only(right: 10),
                                                            child: Icon(
                                                              ScheduleIcons.employee,
                                                              color: themesCB.iconOffColor,
                                                            ),
                                                          ),
                                                          Text(
                                                            "${model.summary["employees_qty"]} colaboradores envolvidos",
                                                            style: themesCB.regularStyleText,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.only(bottom: 10),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children: [
                                                          Container(
                                                            width: 50,
                                                            margin: EdgeInsets.only(right: 10),
                                                            child: Icon(
                                                              ScheduleIcons.tags,
                                                              color: themesCB.iconOffColor,
                                                            ),
                                                          ),
                                                          Text(
                                                            "${model.summary["products_qty"]} produtos para produzir",
                                                            style: themesCB.regularStyleText,
                                                          ),
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            //############################################################################################
            Container(
              decoration: BoxDecoration(
                color: themesCB.backColor,
                boxShadow: [themesCB.shadow],
              ),
              width: MediaQuery.of(context).size.width * 0.3,
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.all(30),
              child: ScrollConfiguration(
                behavior: MyCustomScrollBehavior(),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    // mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // SingleChildScrollView(
                      //   scrollDirection: Axis.horizontal,
                      //   child: Container(
                      //     margin: EdgeInsets.only(bottom: 10),
                      //     child: SvgPicture.asset(
                      //       "assets/info/info_schedule.svg",
                      //       width: 200,
                      //       // height: 200,
                      //     ),
                      //   ),
                      // ),
                      // Divider(
                      //   color: Theme.of(context).colorScheme.secondary,
                      //   height: 20,
                      //   thickness: 0.5,
                      //   indent: 0,
                      //   endIndent: 0,
                      // ),
                      Text(
                        "Legendas: ",
                        style: themesCB.boldStyleText,
                      ),
                      ScrollConfiguration(
                        behavior: MyCustomScrollBehavior(),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Container(
                            width: 400,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: ListView.builder(
                                      shrinkWrap: true,
                                      physics: NeverScrollableScrollPhysics(),
                                      itemCount: model.legendNames["jobs"].length,
                                      itemBuilder: (BuildContext context, int index) {
                                        return Container(
                                          margin: EdgeInsets.only(right: 10),
                                          child: ScrollConfiguration(
                                            behavior: MyCustomScrollBehavior(),
                                            child: SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              child: RichText(
                                                text: TextSpan(
                                                  style: DefaultTextStyle.of(context).style,
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                      text: "${model.legendNames["jobs"][index].keys.toString().replaceAll("(", "").replaceAll(")", "")}:",
                                                      style: themesCB.boldStyleText,
                                                    ),
                                                    TextSpan(
                                                      text: " ${model.legendNames["jobs"][index].values.toString().replaceAll("(", "").replaceAll(")", "")}",
                                                      style: themesCB.regularStyleText,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      }),
                                ),
                                Flexible(
                                  child: ListView.builder(
                                      shrinkWrap: true,
                                      physics: NeverScrollableScrollPhysics(),
                                      itemCount: model.legendNames["resources"].length,
                                      itemBuilder: (BuildContext context, int index) {
                                        return Container(
                                          child: ScrollConfiguration(
                                            behavior: MyCustomScrollBehavior(),
                                            child: SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              child: RichText(
                                                text: TextSpan(
                                                  style: DefaultTextStyle.of(context).style,
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                      text: "${model.legendNames["resources"][index].keys.toString().replaceAll("(", "").replaceAll(")", "")}:",
                                                      style: themesCB.boldStyleText,
                                                    ),
                                                    TextSpan(
                                                      text: " ${model.legendNames["resources"][index].values.toString().replaceAll("(", "").replaceAll(")", "")}",
                                                      style: themesCB.regularStyleText,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      }),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        color: themesCB.borderColor,
                        height: 20,
                        thickness: 0.5,
                        indent: 0,
                        endIndent: 0,
                      ),
                      Container(
                        height: 45,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: themesCB.backColor,
                          border: Border.all(width: 0.5, color: themesCB.borderColor),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: ScrollConfiguration(
                          behavior: MyCustomScrollBehavior(),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Container(
                              // width: MediaQuery.of(context).size.width * 0.3,
                              child: DropdownButton<String>(
                                // isExpanded: true,
                                value: auxJob,
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
                                    auxJob = newValue;
                                    auxTask = tasks[auxJob][0];
                                    auxResources = resources[auxTask][0];
                                    auxEmployees = employees[auxResources][0];
                                  });
                                },
                                items: listJobs.map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    child: RichText(
                                        text: TextSpan(
                                      style: DefaultTextStyle.of(context).style,
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: "$value: ",
                                          style: themesCB.boldStyleText,
                                        ),
                                        TextSpan(text: "${model.information[value]["name"]}", style: themesCB.regularStyleText),
                                      ],
                                    )),
                                    value: value,
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Text(
                          "Tarefas: ",
                          style: themesCB.boldStyleText,
                        ),
                      ),
                      Container(
                        height: 50,
                        child: MediaQuery.removePadding(
                          context: context,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            physics: ClampingScrollPhysics(),
                            itemCount: tasks[auxJob].length,
                            itemBuilder: (BuildContext context, int index) {
                              return InkWell(
                                onTap: () {
                                  setState(() {
                                    auxTask = tasks[auxJob][index];
                                    auxResources = resources[auxTask][0];
                                    auxEmployees = employees[auxResources][0];
                                  });
                                },
                                child: Container(
                                  margin: EdgeInsets.only(right: 5),
                                  padding: EdgeInsets.all(10),
                                  alignment: Alignment.center,
                                  decoration: auxTask == tasks[auxJob][index]
                                      ? BoxDecoration(
                                          color: themesCB.backColor,
                                          gradient: themesCB.gradient2,
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                        )
                                      : BoxDecoration(
                                          color: themesCB.backColor,
                                          border: Border.all(width: 0.5, color: themesCB.borderColor),
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                        ),
                                  child: Text(
                                    tasks[auxJob][index],
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: auxTask == tasks[auxJob][index] ? Colors.white : null,
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.only(top: 10, bottom: 10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          gradient: themesCB.gradient2,
                        ),
                        child: ScrollConfiguration(
                          behavior: MyCustomScrollBehavior(),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 10),
                                  child: Icon(
                                    ScheduleIcons.time,
                                    color: Colors.white,
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(bottom: 10),
                                      child: Text(
                                        "NOME: ${model.information[auxJob]["info"][auxTask]["name"]}",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(bottom: 5),
                                      child: Text(
                                        "PREVISÃO DA TAREFA",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(right: 15),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Dia inicial: ${formatterDate.format(DateTime.parse(model.information[auxJob]["info"][auxTask]["prediction_start_date"]))}",
                                                style: TextStyle(color: Colors.white),
                                              ),
                                              Text(
                                                "Hora inicial: ${formatterTime.format(DateTime.parse(model.information[auxJob]["info"][auxTask]["prediction_start_date"]))}",
                                                style: TextStyle(color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Dia final: ${formatterDate.format(DateTime.parse(model.information[auxJob]["info"][auxTask]["prediction_end_date"]))}",
                                                style: TextStyle(color: Colors.white),
                                              ),
                                              Text(
                                                "Hora final: ${formatterTime.format(DateTime.parse(model.information[auxJob]["info"][auxTask]["prediction_end_date"]))}",
                                                style: TextStyle(color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Text(
                          "Recursos: ",
                          style: themesCB.boldStyleText,
                        ),
                      ),
                      Container(
                        height: 50,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            physics: ClampingScrollPhysics(),
                            itemCount: resources[auxTask].length,
                            itemBuilder: (BuildContext context, int index) {
                              return InkWell(
                                onTap: () {
                                  setState(() {
                                    auxResources = resources[auxTask][index];
                                    auxEmployees = employees[auxResources][0];
                                  });
                                },
                                child: Container(
                                  margin: EdgeInsets.only(right: 5),
                                  padding: EdgeInsets.all(10),
                                  alignment: Alignment.center,
                                  decoration: auxResources == resources[auxTask][index]
                                      ? BoxDecoration(
                                          color: themesCB.backColor,
                                          gradient: themesCB.gradient2,
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                        )
                                      : BoxDecoration(
                                          color: themesCB.backColor,
                                          border: Border.all(width: 0.5, color: themesCB.borderColor),
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                        ),
                                  child: Text(
                                    // resources[auxTask][index],
                                    "${model.information[auxJob]["info"][auxTask]["resources"][auxResources]["name"]}",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: auxResources == resources[auxTask][index] ? Colors.white : null,
                                    ),
                                  ),
                                ),
                              );
                            }),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.only(top: 10, bottom: 10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          gradient: themesCB.gradient2,
                        ),
                        child: ScrollConfiguration(
                          behavior: MyCustomScrollBehavior(),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 20),
                                  child: Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(right: 10),
                                        child: Icon(
                                          ScheduleIcons.tags,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "QUANTIDADE: ${model.information[auxJob]["info"][auxTask]["resources"][auxResources]["qty"]} und",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(right: 10),
                                        child: Icon(
                                          ScheduleIcons.coast,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "CUSTO: R\$ ${model.information[auxJob]["info"][auxTask]["resources"][auxResources]["cost"]}",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.only(top: 0, bottom: 10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          gradient: themesCB.gradient2,
                        ),
                        child: ScrollConfiguration(
                          behavior: MyCustomScrollBehavior(),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 20),
                                  child: Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(right: 10),
                                        child: Icon(
                                          IconsLinear.leaf,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "MATÉRIA-PRIMA: ${model.information[auxJob]["info"][auxTask]["resources"][auxResources]["raw_material"]}",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      // Operadores ----------------------------------------------------------------------
                      employees[auxResources].length > 0
                          ? Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 20),
                                  child: Text(
                                    "Operadores: ",
                                    style: themesCB.boldStyleText,
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      shrinkWrap: true,
                                      physics: ClampingScrollPhysics(),
                                      itemCount: employees[auxResources].length,
                                      itemBuilder: (BuildContext context, int index) {
                                        return Container(
                                          margin: EdgeInsets.only(right: 10),
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {
                                                auxEmployees = employees[auxResources][index];
                                              });
                                            },
                                            child: Container(
                                              alignment: Alignment.center,
                                              width: 80,
                                              height: 80,
                                              padding: EdgeInsets.all(5),
                                              decoration: auxEmployees == employees[auxResources][index]
                                                  ? BoxDecoration(
                                                      color: themesCB.backColor,
                                                      gradient: themesCB.gradient2,
                                                      borderRadius: BorderRadius.all(Radius.circular(100)),
                                                    )
                                                  : BoxDecoration(
                                                      color: themesCB.backColor,
                                                      border: Border.all(width: 0.5, color: Theme.of(context).colorScheme.secondary),
                                                      borderRadius: BorderRadius.all(Radius.circular(100)),
                                                    ),
                                              child: photoPerfil(
                                                context: context,
                                                obj: model.information[auxJob]["info"][auxTask]["resources"][auxResources]["employees"].values.toList()[index]["files_url"]["img1"],
                                                circularSize: 70,
                                                iconSize: 30,
                                              ),
                                            ),
                                          ),
                                        );
                                      }),
                                ),
                                Container(
                                  child: RichText(
                                    text: TextSpan(
                                      style: DefaultTextStyle.of(context).style,
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: "Colaborador(a): ",
                                          style: themesCB.regularStyleText,
                                        ),
                                        TextSpan(
                                          text: "${model.information[auxJob]["info"][auxTask]["resources"][auxResources]["employees"][auxEmployees]["name"]}",
                                          style: themesCB.boldStyleText,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Text(
                                  "Código: ${model.information[auxJob]["info"][auxTask]["resources"][auxResources]["employees"][auxEmployees]["position_company_id"]}",
                                  style: themesCB.regularStyleText,
                                ),
                                Text(
                                  "Turno: ${model.information[auxJob]["info"][auxTask]["resources"][auxResources]["employees"][auxEmployees]["shift"]}",
                                  style: themesCB.regularStyleText,
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 10, bottom: 5),
                                  child: Text(
                                    "Atividades: ",
                                    style: themesCB.boldStyleText,
                                  ),
                                ),
                                Text(
                                  "${model.information[auxJob]["info"][auxTask]["resources"][auxResources]["employees"][auxEmployees]["activities"]}",
                                  style: themesCB.regularStyleText,
                                ),
                              ],
                            )
                          : Container(),
                    ],
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
