import 'package:cbmes_v1/api/api.dart';
import 'package:cbmes_v1/provider/apiProvider.dart';
import 'package:cbmes_v1/provider/global.provider.dart';
import 'package:cbmes_v1/models/listKey.dart';
import 'package:cbmes_v1/ui/globalWidgets/dialog_progress.dart';
import 'package:cbmes_v1/ui/globalWidgets/global_scaffoldKey.dart';
// import 'package:cbmes_v1/models/roadmap/roadmap.models.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class JsonX extends ChangeNotifier {
  String stageArea;
  // String apiRoute = "patterns/roadmaps-data";
  String apiRoute;
  final api = new API();
  final apiFavorite = new API();
  List<dynamic> modelObj;
  List<dynamic> modelObjFavorite;
  List<dynamic> modelObjFilter;
  List<ListKey> objListKey;

  Object objModel;
  BuildContext xcontext;

  bool edit = false;
  bool global = true;
  int qtyTask = 0;
  List<int> elementTask = [];
  List<String> allTasks = [];

  Map<String, List<String>> listKey;
  Map<String, List<String>> listKeyId;
  Map<String, String> statusDropdownButton = {"": ""};

  Map<String, String> auxTaskName = {"": ""};
  Map<String, String> auxTaskDescription = {"": ""};
  Map<String, double> auxTaskPercent = {"": 100.0};
  Map<String, double> auxTaskScaleRatio = {"": 1.0};

  Map<String, List<String>> auxListTaskPre = {
    "": [""]
  };
  Map<String, List<String>> auxListRe = {
    "": [""]
  };
  Map<String, List<String>> auxListReId = {
    "": [""]
  };
  Map<String, List<String>> auxListReQty = {
    "": [""]
  };
  Map<String, List<String>> auxListReSetup = {
    "": [""]
  };

  List<String> auxList = [];

  setStageArea({@required String value, @required String end}) {
    stageArea = value;
    apiRoute = end;
    // apiRoute = "patterns/$value-data";
    notifyListeners();
  }

  setContext(BuildContext x) {
    return xcontext = x;
  }

  setDynamicModel({@required dynamic model, int index}) {
    objModel = model;
    notifyListeners();
  }

  getDynamicModel() {
    return objModel;
  }

  getinventoryAll({
    @required dynamic id,
    @required String apiRoute,
    @required BuildContext context,
    @required String typeModel,
  }) async {
    modelObj = null;
    search = "";
    var k = await api.getAll(context: context, apiRoute: apiRoute, id: id, withToken: true);
    modelObj = await dynamicClass(stageArea, k);

    global = false;
    notifyListeners();
  }

  getinventoryFavorite({@required BuildContext context}) async {
    modelObjFavorite = null;
    search = "";
    var k = await api.getFavorites(apiRoute: apiRoute, context: context);
    modelObjFavorite = await dynamicClass(stageArea, k);

    global = false;
    notifyListeners();
  }

  getinventoryFilter({@required String text, @required BuildContext context}) async {
    modelObjFilter = null;
    var k = await api.getSearch(apiRoute: apiRoute, value: text, context: context);
    modelObjFilter = await dynamicClass(stageArea, k);
    global = false;
    notifyListeners();
  }

  dynamicClass(String typeModel, dynamic k) async {
    // if (typeModel == 'roadmap') {
    //   return (k as List).map((w) => RoadMapModel.fromJson(w)).toList();
    // }
  }

  getListKey({@required BuildContext context, @required List<String> local, @required List<String> listFields, @required List<String> key}) async {
    listKey = {
      "": [""]
    };
    listKeyId = {
      "": [""]
    };
    statusDropdownButton = {"": ""};
    listKey.clear();
    listKeyId.clear();
    statusDropdownButton.clear();

    for (int i = 0; i < listFields.length; i++) {
      listKey["${listFields[i]}"] = ["Nenhum"];
      listKeyId["${listFields[i]}"] = ["Nenhum"];
    }

    for (int i = 0; i < listFields.length; i++) {
      var k = await api.getApiListKey(context: context, local: local[i], stageArea: listFields[i], key: key);

      objListKey = (k[1] as List).map((w) => ListKey.fromJson(w)).toList();

      auxList = ["Nenhum"];
      for (int i = 0; i < objListKey.length; i++) {
        auxList.add(objListKey[i].name);
      }

      listKey["${listFields[i]}"] = auxList;
      auxList = ["Nenhum"];

      for (int i = 0; i < objListKey.length; i++) {
        auxList.add(objListKey[i].sId);
      }

      listKeyId["${listFields[i]}"] = auxList;
      auxList = [];

      statusDropdownButton["${listFields[i]}"] = k[0];
    }

    notifyListeners();
  }

  linkDownload({@required dynamic model, @required String format, @required BuildContext context}) async {
    await api.donwloadFileLink(apiRoute: apiRoute, model: model, format: format, context: context);
    notifyListeners();
  }

  String search = "";

  setSearch(String value) {
    search = value;
    global = true;
    if (search.length < 1) modelObj = null;
    notifyListeners();
  }

  Future createDocument({@required dynamic jsonx, @required BuildContext context}) async {
    try {
      var api = new API();
      var res = await api.create(apiRoute: apiRoute, model: jsonx, context: context);
      notifyListeners();
      return res;
    } catch (ex) {
      print(ex);
      notifyListeners();
      return null;
    }
  }

  Future editDocument({@required dynamic jsonx, @required BuildContext context}) async {
    try {
      var api = new API();
      var res = await api.editJson(apiRoute: apiRoute, jsonx: jsonx, context: context);
      notifyListeners();
      return res;
    } catch (ex) {
      print(ex);
      notifyListeners();
      return null;
    }
  }

  Future copyDocument({@required dynamic model, @required BuildContext context}) async {
    try {
      var api = new API();
      var res = await api.create(apiRoute: apiRoute, model: model, context: context);
      notifyListeners();
      return res;
    } catch (ex) {
      print(ex);
      notifyListeners();
      return null;
    }
  }

  Future deleteDocument({@required dynamic jsonx, @required BuildContext context}) async {
    try {
      var api = new API();
      var res = await api.deleteJson(apiRoute: apiRoute, jsonx: jsonx, context: context);
      notifyListeners();
      return res;
    } catch (ex) {
      print(ex);
      notifyListeners();
      return null;
    }
  }

  String controlSend = "";

  send({
    @required BuildContext context,
    @required dynamic jsonx,
    @required bool create,
    @required Function func,
  }) async {
    GlobalProvider bloc = Provider.of<GlobalProvider>(context, listen: false);
    APIProvider api = Provider.of<APIProvider>(context, listen: false);
    var snackbar = GlobalScaffold();

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return DialogProgress();
      },
    );

    api.response = "";
    controlSend = "";

    if (create == true) {
      await createDocument(jsonx: jsonx, context: context);
    }
    if (create == false) {
      await editDocument(jsonx: jsonx, context: context);
    }

    Navigator.of(context).pop();

    if (api.response == "ok" || api.response == "docUpdated" || api.response == "docCreated" || api.response == "docsObtained") {
      create == false ? snackbar.getshowSnackbar("Documento ATUALIZADO com sucesso; disponível em instantes.") : snackbar.getshowSnackbar("Documento CRIADO com sucesso; disponível em instantes.");
      bloc.global = true;
      bloc.edit = false;
      bloc.allDocumentsStageArea = null;
      api.progress = "0";
      controlSend = "ok";
      func();
      clearAll();
    } else {
      controlSend = "erro";
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return DialogError();
        },
      );
    }
  }

  clearAll() {
    edit = false;
    modelObj = null;

    qtyTask = 0;
    elementTask = [];

    auxTaskName = {"": ""};
    auxTaskDescription = {"": ""};
    auxTaskPercent = {"": 100};
    auxTaskScaleRatio = {"": 1};

    statusDropdownButton = {"": ""};
    auxListTaskPre = {
      "": [""]
    };
    auxListRe = {
      "": [""]
    };
    auxListReId = {
      "": [""]
    };
    auxListReQty = {
      "": [""]
    };
    auxList = [];
  }
}
