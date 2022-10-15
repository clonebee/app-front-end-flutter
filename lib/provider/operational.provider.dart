import 'package:cbmes_v1/api/api.dart';
import 'package:cbmes_v1/provider/apiProvider.dart';
import 'package:cbmes_v1/models/operational/operational.model.dart';
import 'package:cbmes_v1/ui/globalWidgets/dialog_progress.dart';
import 'package:cbmes_v1/ui/globalWidgets/global_scaffoldKey.dart';
import 'package:cbmes_v1/ui/pages/operational/widgets/listTasks.widget.dart';
import 'package:cbmes_v1/ui/pages/operational/widgets/show_dialog.widget.dart';
import 'package:cbmes_v1/ui/pages/operational/widgets/show_dialog.widget/input_data_pause.widget.dart';
import 'package:cbmes_v1/ui/pages/operational/widgets/show_dialog.widget/input_data_play.widget.dart';
import 'package:cbmes_v1/ui/pages/operational/widgets/show_dialog.widget/input_data_stop.widget.dart';
import 'package:cbmes_v1/ui/pages/operational/widgets/show_dialog.widget/validator.widget/acess.widget.dart';
import 'package:cbmes_v1/ui/pages/operational/widgets/show_dialog.widget/validator.widget/operacional_validator.widget.dart';
import 'package:cbmes_v1/ui/pages/operational/widgets/stageArea.widget.dart';
import 'package:cbmes_v1/ui/pages/operational/widgets/taskModule/progress/progress.widget.dart';
import 'package:cbmes_v1/ui/pages/operational/widgets/taskModule/task_throw_view.widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OperationalBloc extends ChangeNotifier {
  List<dynamic> listUsers;
  List<dynamic> listResourses;

  var operatorUser;
  var operatorImg1;

  String idSector;
  String nameSector;

  String idResource;
  String nameResource;

  String keyboardData = "";
  var textControllerID = TextEditingController();
  var textControllerPassword = TextEditingController();
  var textControllerKeyboard = TextEditingController();

  bool loginOperator = false;
  bool play = false;
  bool pause = false;
  bool stop = false;

  Map<String, String> status = {};

  bool id = false, password = false, keyboard = false;
  dynamic objView;
  OperationalModel model;

  //Play Mode
  bool playGoodItems = false;
  bool playLostItems = false;
  bool playDisapprovedItems = false;

  //Pause Mode
  bool lackOfOperator = false;
  bool burntSensor = false;
  bool lackOfEnergy = false;
  bool lackOfRawMaterial = false;
  bool unknownMachineFailure = false;
  bool others = false;

  Widget widgetStageArea = OperationalAcess();
  Widget widgetHourGlass = ListTasks();

  Widget entry;

  Map<String, Widget> progress = {
    "off": Container(),
  };
  Color progressColor = Colors.green;

  Map<String, Color> touchColor = {};

  Color backgroundColorDialog = Colors.black54;
  List<OperationalModel> modelObjList;
  var modelObj;
  final api = new API();

  List<Widget> listLinearProgressBar = [];

  Map<String, String> mapOperatorPhoto = {};
  String statusThrowView = "play";

  Widget linearProgressBar({@required double size, @required Color color}) {
    return Container(
      color: color,
      width: size,
      height: 10,
    );
  }

  getMapOperatorPhoto({@required BuildContext context, @required dynamic obj}) async {
    mapOperatorPhoto = {};

    for (int i = 0; i < obj.length; i++) {
      getOperatorPhoto(
        context: context,
        local: "users",
        stageArea: "users-${obj[i]["user_type"]}",
        key: "['_id','name','files_url']",
        id: "${obj[i]["user_id"]}",
      );
    }
    notifyListeners();
  }

  getOperatorPhoto({
    @required BuildContext context,
    @required String local,
    @required String stageArea,
    @required String key,
    @required String id,
  }) async {
    var k = await api.getApiOperatorPhoto(
      context: context,
      local: local,
      stageArea: stageArea,
      key: key,
      id: id,
    );
    mapOperatorPhoto["${k[1][0]["_id"]}"] = "${k[1][0]["files_url"]["img1"]}";
    notifyListeners();
  }

  Widget linearProgressIndicator() {
    return Row(
      children: [for (var item in listLinearProgressBar) item],
    );
  }

  playStatus({@required String sId}) {
    play = true;
    pause = false;
    stop = false;
    setAreaDataEntry();
    status[sId] = "play";
    progressColor = Colors.lightGreen;
    progress[sId] = OperationalProgress(sId: sId);
    touchColor[sId] = Colors.lightGreen;
    backgroundColorDialog = Colors.lightGreen;
    listLinearProgressBar.add(linearProgressBar(size: 25, color: Colors.lightGreen));
    notifyListeners();
  }

  pauseStatus({@required String sId}) {
    play = false;
    pause = true;
    stop = false;
    status[sId] = "pause";
    progressColor = Colors.blue;
    progress[sId] = OperationalProgress(sId: sId);
    setAreaDataEntry();
    touchColor[sId] = Colors.lightBlue;
    backgroundColorDialog = Colors.lightBlue;
    listLinearProgressBar.add(linearProgressBar(size: 25, color: Colors.lightBlue));
    notifyListeners();
  }

  stopStatus({@required String sId}) {
    play = false;
    pause = false;
    stop = true;
    setAreaDataEntry();
    progress[sId] = OperationalProgress(sId: sId);
    backgroundColorDialog = Colors.red;
    notifyListeners();
  }

  getOperationalAll({@required BuildContext context, @required String statusFilter}) async {
    modelObjList = null;
    var k = await api.getAllTasks(apiRoute: "operational/tasks", context: context, statusFilter: statusFilter);
    modelObjList = (k as List).map((w) => OperationalModel.fromJson(w)).toList();

    for (int i = 0; i < modelObjList.length; i++) {
      if (modelObjList[i].taskStatus == "play") {
        status[modelObjList[i].sId] = "play";
        touchColor[modelObjList[i].sId] = Colors.lightGreen;
        progress[modelObjList[i].sId] = OperationalProgress(sId: modelObjList[i].sId);
      } else if (modelObjList[i].taskStatus == "pause") {
        status[modelObjList[i].sId] = "pause";
        touchColor[modelObjList[i].sId] = Colors.lightBlue;
        progress[modelObjList[i].sId] = OperationalProgress(sId: modelObjList[i].sId);
      } else if (modelObjList[i].taskStatus == "stop") {
        status[modelObjList[i].sId] = "stop";
        touchColor[modelObjList[i].sId] = Colors.red;
        progress[modelObjList[i].sId] = OperationalProgress(sId: modelObjList[i].sId);
      } else {
        status[modelObjList[i].sId] = "off";
        touchColor[modelObjList[i].sId] = Colors.black26;
      }
    }
    notifyListeners();
  }

  getOperationalAllTasksByProductionOrdersByStatus({
    @required BuildContext context,
    @required String productionOrder,
    @required String taskStatus,
  }) async {
    modelObjList = null;
    var k = await api.getAllTasksByOrderProductionByStatus(
      apiRoute: "operational/tasks",
      productionOrder: productionOrder,
      taskStatus: taskStatus,
      context: context,
    );
    modelObjList = (k as List).map((w) => OperationalModel.fromJson(w)).toList();

    for (int i = 0; i < modelObjList.length; i++) {
      if (modelObjList[i].taskStatus == "play") {
        status[modelObjList[i].sId] = "play";
        touchColor[modelObjList[i].sId] = Colors.lightGreen;
        progress[modelObjList[i].sId] = OperationalProgress(sId: modelObjList[i].sId);
      } else if (modelObjList[i].taskStatus == "pause") {
        status[modelObjList[i].sId] = "pause";
        touchColor[modelObjList[i].sId] = Colors.lightBlue;
        progress[modelObjList[i].sId] = OperationalProgress(sId: modelObjList[i].sId);
      } else if (modelObjList[i].taskStatus == "stop") {
        status[modelObjList[i].sId] = "stop";
        touchColor[modelObjList[i].sId] = Colors.red;
        progress[modelObjList[i].sId] = OperationalProgress(sId: modelObjList[i].sId);
      } else {
        status[modelObjList[i].sId] = "off";
        touchColor[modelObjList[i].sId] = Colors.black26;
      }
    }
    notifyListeners();
  }

  Future editDocument({@required dynamic model, @required BuildContext context}) async {
    try {
      var api = new API();
      var res = await api.edit(
        apiRoute: "operational/tasks",
        model: model,
        context: context,
        id: '/${model.sId}',
      );
      notifyListeners();
      return res;
    } catch (ex) {
      print(ex);
      notifyListeners();
      return null;
    }
  }

  validationOperator(bool value) {
    if (value == true) {
      widgetStageArea = OperationalStageArea();
      widgetHourGlass = ListTasks();
    }
    notifyListeners();
  }

  setAreaDataEntry() {
    if (loginOperator == true) {
      entry = OperationalValidator();
      backgroundColorDialog = Colors.black54;
    }
    if (play == true && pause == false && stop == false) {
      entry = InputDataPlay();
      backgroundColorDialog = Colors.lightGreen;
    }
    if (play == false && pause == true && stop == false) {
      entry = InputDataPause();
      backgroundColorDialog = Colors.blue;
    }
    if (play == false && pause == false && stop == true) {
      entry = InputDataStop();
      backgroundColorDialog = Colors.red;
    }
    notifyListeners();
  }

  playButton({@required dynamic model, @required BuildContext context}) {
    if (model.taskStatus == "off" && model.taskStatus != "stop" || model.taskStatus == "pause") {
      model.taskStatus = "play";
      model.realStartDate = DateTime.now().toString();
      // statusDateTime = DateTime.now();
      // statusTime = "Play - ${formatterDate.format(statusDateTime)} às ${formatterTime.format(statusDateTime)}";
      var t = {
        "play": "${DateTime.now()}",
        "user_id": "${operatorUser.sId}",
        "user_name": "${operatorUser.name}",
        "user_type": "${operatorUser.userType}",
      };
      if (model.taskStatus != "off" && model.taskStatus != "stop") {
        model.timeEntry.add(t);
      } else {
        model.timeEntry = [t];
        model.realStartDate = "${DateTime.now()}".split(".")[0];
      }

      send(
        context: context,
        model: model,
        acept: () {
          playStatus(sId: model.sId);
        },
        noAcept: () {
          model.remove(t);
        },
      );
    }
    notifyListeners();
  }

  pauseButton({@required dynamic model, @required BuildContext context}) {
    if (model.taskStatus != "off" && model.taskStatus != "stop") {
      model.taskStatus = "pause";
      var t = {
        "pause": "${DateTime.now()}",
        "user_id": "${operatorUser.sId}",
        "user_name": "${operatorUser.name}",
        "user_type": "${operatorUser.userType}",
        // "img1": "${operatorUser.filesUrl['img1']}",
      };
      model.timeEntry.add(t);

      send(
        context: context,
        model: model,
        acept: () {
          pauseStatus(sId: model.sId);
        },
        noAcept: () {
          model.remove(t);
        },
      );
    }
    notifyListeners();
  }

  stopButton({@required dynamic model, @required BuildContext context}) {
    if (model.taskStatus != "off" && model.taskStatus != "stop") {
      modelObj = model;
      stopStatus(sId: model.sId);
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return OperationalShowDialog();
        },
      );
    }
    notifyListeners();
  }

  touchButton({@required dynamic model, @required BuildContext context}) {
    // if (model.taskStatus != "off" && model.taskStatus != "stop") {
    if (model.taskStatus != "off") {
      modelObj = model;

      if (model.taskStatus == "play") {
        play = true;
        pause = false;
        stop = false;
        setAreaDataEntry();
      }
      if (model.taskStatus == "pause") {
        play = false;
        pause = true;
        stop = false;
        setAreaDataEntry();
      }
      if (model.taskStatus == "stop") {
        play = true;
        pause = false;
        stop = false;
        setAreaDataEntry();
      }

      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return OperationalShowDialog();
        },
      );
    }
    notifyListeners();
  }

  infoButton({@required dynamic model}) {
    modelObj = model;
    widgetStageArea = OperationalThrowView();
    widgetHourGlass = OperationalThrowView();

    if (model.taskStatus != "off") {
      if (model.taskStatus == "play") {
        objView = model.dataEntryPlay;
        statusThrowView = "play";
      } else if (model.taskStatus == "pause") {
        objView = model.dataEntryPause;
        statusThrowView = "pause";
      } else {
        objView = model.dataEntryStop;
        statusThrowView = "stop";
      }
    }
    notifyListeners();
  }

  throwViewModeState({@required BuildContext context, @required String status}) {
    if (status == "play") {
      objView = modelObj.dataEntryPlay;
    } else if (status == "pause") {
      objView = modelObj.dataEntryPause;
    } else {
      objView = modelObj.dataEntryStop;
    }

    getMapOperatorPhoto(context: context, obj: objView);
    notifyListeners();
  }

  inputDataPlay({@required BuildContext context}) {
    if (keyboardData == "" && playGoodItems == false && playLostItems == false && playDisapprovedItems == false) {
      showError(text: "Informe um VALOR e selecione uma das opções: \n\ni) Itens Bons; \nii) Itens Perdidos; \niii) Itens Reprovados.", context: context);
    } else if (keyboardData != "" && playGoodItems == false && playLostItems == false && playDisapprovedItems == false) {
      showError(text: "Selecione uma das opções: \n\ni) Itens Bons; \nii) Itens Perdidos; \niii) Itens Reprovados.", context: context);
    } else if (keyboardData == "" && (playGoodItems == true || playLostItems == true || playDisapprovedItems == true)) {
      showError(text: "Informe um VALOR", context: context);
    } else {
      String type;
      if (playGoodItems == true) {
        type = "bons";
      }
      if (playLostItems == true) {
        type = "perdidos";
      }
      if (playDisapprovedItems == true) {
        type = "reprovados";
      }
      dynamic t = {
        "user_id": "${operatorUser.sId}",
        "user_name": "${operatorUser.name}",
        "user_type": "${operatorUser.userType}",
        "time_now": "${DateTime.now()}",
        "qty_throw": int.parse(keyboardData),
        "type_items": type,
        "data_origin": "manual-touch",
        // "img1": "${operatorUser.filesUrl['img1']}",
      };

      if (modelObj.dataEntryPlay.length < 1) {
        modelObj.dataEntryPlay = [t];
      } else {
        modelObj.dataEntryPlay.add(t);
        // print(op.modelObj.toJson());
      }

      send(
        context: context,
        model: modelObj,
        acept: () {
          keyboardData = "";
          setTextController();
          //Play Mode
          playGoodItems = false;
          playLostItems = false;
          playDisapprovedItems = false;

          throwViewModeState(context: context, status: "play");
          Navigator.of(context).pop();
        },
        noAcept: () {
          modelObj.dataEntryPlay.remove(t);
          objView = modelObj.dataEntryPlay;
        },
      );
    }

    notifyListeners();
  }

  inputDataPause({@required BuildContext context, @required int cont}) {
    if (cont < 1) {
      showError(text: "Selecione ao menos um motivo de PARADA!", context: context);
    } else {
      List<String> type = [];
      if (lackOfOperator == true) {
        type.add("Falta de Operador");
      }
      if (burntSensor == true) {
        type.add("Queima de Sensor");
      }
      if (lackOfEnergy == true) {
        type.add("Falta de Energia");
      }
      if (lackOfRawMaterial == true) {
        type.add("Falta de Matéria-prima");
      }
      if (unknownMachineFailure == true) {
        type.add("Falha Desconhecida na Máquina");
      }
      if (others == true) {
        type.add("Outros");
      }
      dynamic t = {
        "user_id": "${operatorUser.sId}",
        "user_name": "${operatorUser.name}",
        "user_type": "${operatorUser.userType}",
        // "user_img": "${op.operatorImg1}",
        "time_now": "${DateTime.now()}",
        "reason": type,
        "data_origin": "manual-touch",
        // "img1": "${operatorUser.filesUrl['img1']}",
      };

      if (modelObj.dataEntryPause.length < 1) {
        modelObj.dataEntryPause = [t];
      } else {
        modelObj.dataEntryPause.add(t);
      }
      Navigator.of(context).pop();
      send(
        context: context,
        model: modelObj,
        acept: () {
          //Pause Mode
          lackOfOperator = false;
          burntSensor = false;
          lackOfEnergy = false;
          lackOfRawMaterial = false;
          unknownMachineFailure = false;
          others = false;
          throwViewModeState(context: context, status: "pause");
        },
        noAcept: () {
          modelObj.dataEntryPause.remove(t);
          objView = modelObj.dataEntryPause;
        },
      );
    }

    notifyListeners();
  }

  inputDataStop({@required BuildContext context}) {
    final redoStatus = new Map.from(status);
    final redoTouchColor = new Map.from(touchColor);

    status[modelObj.sId] = "stop";
    touchColor[modelObj.sId] = Colors.red;
    modelObj.taskStatus = "stop";
    modelObj.realEndDate = DateTime.now().toString();
    modelObj.timeEntry.add({
      "stop": "${DateTime.now()}",
      "user_id": "${operatorUser.sId}",
      "user_name": "${operatorUser.name}",
      "user_type": "${operatorUser.userType}",
      // "img1": "${operatorUser.filesUrl['img1']}",
    });

    dynamic t = {
      "user_id": "${operatorUser.sId}",
      "user_name": "${operatorUser.name}",
      "user_type": "${operatorUser.userType}",
      // "user_img": "${op.operatorImg1}",
      "time_now": "${DateTime.now()}",
      "data_origin": "manual-touch",
      // "img1": "${operatorUser.filesUrl['img1']}",
    };
    modelObj.dataEntryStop = [t];

    send(
        context: context,
        model: modelObj,
        acept: () {
          throwViewModeState(context: context, status: "stop");
        },
        noAcept: () {
          status = new Map.from(redoStatus);
          touchColor = new Map.from(redoTouchColor);

          modelObj.dataEntryStop.remove(t);
          objView = modelObj.dataEntryStop;
        });

    notifyListeners();
  }

  send({
    @required BuildContext context,
    @required dynamic model,
    @required Function acept,
    @required Function noAcept,
  }) async {
    APIProvider api = Provider.of<APIProvider>(context, listen: false);
    var snackbar = GlobalScaffold();
    BuildContext dialogContextA = context;

    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext contextA) {
          dialogContextA = contextA;
          return DialogProgress();
        });
    api.response = "";

    await editDocument(model: model, context: context);

    Navigator.pop(dialogContextA);

    if (api.response == "ok" || api.response == "docUpdated" || api.response == "docCreated" || api.response == "docsObtained") {
      snackbar.getshowSnackbar("Tarefa ATUALIZADA com sucesso");
      api.progress = "0";
      acept();
    } else {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext contextC) {
          return Material(
            color: Colors.transparent,
            child: DialogError(),
          );
        },
      );
      noAcept();
    }
    notifyListeners();
  }

  showError({@required String text, @required BuildContext context}) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text("Operação Invalida"),
          content: Column(
            children: [
              Text(text, textAlign: TextAlign.left),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("FECHAR"),
            )
          ],
        );
      },
    );
    notifyListeners();
  }

  setTextController() {
    if (id == true && password == false && keyboard == false) {
      textControllerID.value = textControllerID.value.copyWith(
        text: keyboardData,
        selection: TextSelection.collapsed(offset: keyboardData.length),
        composing: TextRange.empty,
      );
    }
    if (id == false && password == true && keyboard == false) {
      textControllerPassword.value = textControllerPassword.value.copyWith(
        text: keyboardData,
        selection: TextSelection.collapsed(offset: keyboardData.length),
        composing: TextRange.empty,
      );
    }
    if (id == false && password == false && keyboard == true) {
      textControllerKeyboard.value = textControllerKeyboard.value.copyWith(
        text: keyboardData,
        selection: TextSelection.collapsed(offset: keyboardData.length),
        composing: TextRange.empty,
      );
    }

    notifyListeners();
  }

  addKeyboardData(String value) {
    keyboardData += value;
    // print(keyboardData);
    notifyListeners();
  }

  removeKeyboardData() {
    if (keyboardData != null && keyboardData.length > 0) {
      keyboardData = keyboardData.substring(0, keyboardData.length - 1);
    }
    notifyListeners();
  }

  clearEntryData() {
    keyboardData = "";
    textControllerID = TextEditingController();
    textControllerPassword = TextEditingController();
    id = false;
    password = false;
    keyboard = false;
    notifyListeners();
  }

  clear() {
    keyboardData = "";
    textControllerID = TextEditingController();
    textControllerPassword = TextEditingController();
    textControllerKeyboard = TextEditingController();

    loginOperator = false;
    play = false;
    pause = false;
    stop = false;

    id = false;
    password = false;
    keyboard = false;

    playGoodItems = false;
    playLostItems = false;
    playDisapprovedItems = false;

    widgetStageArea = OperationalAcess();

    entry = null;
    // notifyListeners();
  }
}
