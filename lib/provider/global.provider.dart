import 'package:cbmes_v1/api/api.dart';
import 'package:cbmes_v1/models/inventory/actuators.models.dart';
import 'package:cbmes_v1/models/inventory/devices.models.dart';
import 'package:cbmes_v1/models/inventory/equipments.models.dart';
import 'package:cbmes_v1/models/manufacture/geometries.models.dart';
import 'package:cbmes_v1/models/manufacture/products.models.dart';
import 'package:cbmes_v1/models/inventory/sensors.models.dart';
import 'package:cbmes_v1/models/inventory/transports.models.dart';
import 'package:cbmes_v1/models/manufacture/raw-materials.models.dart';
import 'package:cbmes_v1/models/manufacture/recipes.models.dart';
import 'package:cbmes_v1/models/supervisory/datacollect.models.dart';
import 'package:cbmes_v1/models/users/users.models.dart';
import 'package:cbmes_v1/models/indicators/oee.models.dart';
import 'package:cbmes_v1/models/listKey.dart';
import 'package:cbmes_v1/models/patterns/resources.models.dart';
import 'package:cbmes_v1/models/patterns/roadmap.models.dart';
import 'package:cbmes_v1/models/schedule/production_orders.models.dart';
import 'package:cbmes_v1/models/schedule/production_orders_execution.models.dart';
import 'package:cbmes_v1/models/supervisory/cbhardware.models.dart';
import 'package:cbmes_v1/provider/apiProvider.dart';
import 'package:cbmes_v1/ui/globalWidgets/dialog_progress.dart';
import 'package:cbmes_v1/ui/globalWidgets/global_scaffoldKey.dart';
import 'package:flutter/material.dart';
import 'package:cbmes_v1/models/inventory/sector.models.dart';
import 'package:provider/provider.dart';
// import 'dart:mirrors';

class GlobalProvider extends ChangeNotifier {
  bool lostNetworkPage = false;
  int contNetworkPage = 0;
  bool showDialogProgress = false;

  String stageArea;
  String apiRoute;
  final api = new API();
  final apiFavorite = new API();
  dynamic userIdObj;
  List<dynamic> allDocumentsStageArea = ["1"];
  List<dynamic> allDocuments = ["1"];

  List<dynamic> oneDocument;
  List<dynamic> modelObjFavorite;
  List<dynamic> modelObjFilter;
  List<ListKey> objListKey;
  Map<String, dynamic> objIdKey;
  Map<String, dynamic> objMapKey;

  Map<String, List<String>> listKeyName;
  Map<String, List<String>> listKeyId;
  Map<String, List<String>> listKeyFilesUrl;

  Map<String, List<String>> listKeyScriptOrder;
  Map<String, String> statusDropdownButton = {"": ""};
  Map<String, List<String>> auxListAdd = {
    "": [""]
  };
  Map<String, List<String>> auxListAddId = {
    "": [""]
  };
  Map<String, List<String>> auxListAddFilesUrl = {
    "": [""]
  };
  List<String> auxList = [];

  bool global = true;
  bool globalFilter = false;
  bool favorite = false;
  bool edit = false;
  bool filter = false;

  Object objModel;
  BuildContext xcontext;

  dynamic objSerialNumberCB = [
    '1',
    ['Nenhum']
  ];
  String selectSerialNumber = 'Nenhum';
  getListSerialNumberCB({@required BuildContext context, @required Function func}) async {
    objSerialNumberCB = [
      '1',
      ['Nenhum']
    ];
    selectSerialNumber = 'Nenhum';
    objSerialNumberCB = await api.getSerialNumberCloneBee(
      context: context,
    );
    if (objSerialNumberCB[1].length < 1 && objSerialNumberCB[0] == 'ok') {
      objSerialNumberCB = [
        'ok',
        ['Nenhum']
      ];
    }
    selectSerialNumber = objSerialNumberCB[1][0];
    func();
    notifyListeners();
  }

  setStageArea({@required String value, @required String setRoute}) {
    stageArea = value;
    apiRoute = setRoute;
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

  getId({@required BuildContext context, @required String id}) async {
    var k = await api.getId(apiRoute: apiRoute, id: id, context: context);
    oneDocument = null;
    oneDocument = await dynamicClass(stageArea, k);

    global = false;
    notifyListeners();
  }

  dynamic modelScheduleExecution;
  dynamic modelExecution;
  getGlobalExecution({@required BuildContext context, @required String filter}) async {
    stageArea = "production-orders";
    apiRoute = "schedule/$stageArea";
    allDocumentsStageArea = null;
    search = "";
    var k = await api.getAll(
      context: context,
      apiRoute: apiRoute,
      id: '?filter_keys_values={"current_page": 0,"parameter": {$filter},"qty_docs_page": 10000,"sort": {"prediction_start_date": 1}}',
      withToken: true,
    );
    allDocumentsStageArea = await dynamicClass("production-orders", k);
    modelScheduleExecution = allDocumentsStageArea;
    global = false;

    // stageArea = "production-orders-executed";
    // apiRoute = "schedule/$stageArea";
    // var e = await api.getAll(apiRoute: apiRoute, context: context);
    // modelExecution = e;

    notifyListeners();
  }

  getDocumentsStageArea({
    @required dynamic id,
    @required String apiRoute,
    @required String typeClass,
    @required BuildContext context,
    @required Function func,
  }) async {
    allDocumentsStageArea = ["1"];
    search = "";
    var k = await api.getAll(context: context, apiRoute: apiRoute, id: id, withToken: true);
    if (k.length > 0 && k != "2") {
      allDocumentsStageArea = await dynamicClass(typeClass, k);
      func();
    } else {
      allDocumentsStageArea = ["2"];
    }

    global = false;
    notifyListeners();
  }

  getGlobalAll({
    @required dynamic id,
    @required String apiRoute,
    @required String typeClass,
    @required BuildContext context,
    @required Function func,
  }) async {
    allDocuments = ["1"];
    search = "";
    var k = await api.getAll(context: context, apiRoute: apiRoute, id: id, withToken: true);
    if (k.length > 0 && k != "2") {
      allDocuments = await dynamicClass(typeClass, k);
      func();
    } else {
      allDocuments = ["2"];
    }

    global = false;
    notifyListeners();
  }

  dynamic dataCollect;
  List<double> dataCollectValue = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
  List<DateTime> dataCollectDateTime;
  getDataCollectSupervisory({
    @required dynamic id,
    @required String sensorName,
    @required String apiRoute,
    @required BuildContext context,
  }) async {
    dataCollect = ["1"];
    dataCollect = "";
    var k = await api.getAll(
      context: context,
      apiRoute: apiRoute,
      id: id,
      withToken: true,
    );
    if (k.length > 0 && k != "2") {
      // dataCollectMap = await dynamicClass('data-collect', k);
      dataCollectValue = [];
      dataCollectDateTime = [];

      for (int j = 0; j < k.length; j++) {
        dataCollectValue.add(k[j][sensorName]);
        dataCollectDateTime.add(DateTime.parse(k[j]["register_date_recorded"]));
      }
      dataCollect = ["3"];
    } else {
      dataCollect = ["2"];
    }
    notifyListeners();
  }

  Map<String, dynamic> objMultiDrop = {};
  getGlobalKey({@required Map<int, List<String>> l, @required BuildContext context}) {
    for (var i in l.values) {
      getDocumentsStageArea(
        id: "?filter_project=['_id', 'name']",
        apiRoute: '${i[0]}/${i[1]}',
        typeClass: stageArea,
        func: () {},
        context: context,
      );
      objMultiDrop[i[1]] = allDocumentsStageArea;
    }
  }

  getGlobalAllDataBase({@required BuildContext context}) async {
    allDocumentsStageArea = null;
    search = "";
    var k = await api.getAllDataBase(apiRoute: apiRoute, context: context);
    allDocumentsStageArea = await dynamicClass(stageArea, k);

    global = false;
    notifyListeners();
  }

  dynamicClass(String typeModel, dynamic k) async {
    //inventory
    if (typeModel == 'sectors') {
      return (k as List).map((w) => SectorModel.fromJson(w)).toList();
    }
    if (typeModel == 'equipments') {
      return (k as List).map((w) => EquipmentsModel.fromJson(w)).toList();
    }
    if (typeModel == 'devices') {
      return (k as List).map((w) => DevicesModel.fromJson(w)).toList();
    }
    if (typeModel == 'sensors') {
      return (k as List).map((w) => SensorsModel.fromJson(w)).toList();
    }
    if (typeModel == 'actuators') {
      return (k as List).map((w) => ActuatorsModel.fromJson(w)).toList();
    }
    if (typeModel == 'transports') {
      return (k as List).map((w) => TransportsModel.fromJson(w)).toList();
    }
    if (typeModel == 'users-admin' || typeModel == 'users-client' || typeModel == 'users-operator' || typeModel == 'usersId') {
      return (k as List).map((w) => UsersModel.fromJson(w)).toList();
    }

    //Manufacture
    if (typeModel == 'products') {
      return (k as List).map((w) => ProductsModel.fromJson(w)).toList();
    }
    if (typeModel == 'geometries') {
      return (k as List).map((w) => GeometriesModel.fromJson(w)).toList();
    }
    if (typeModel == 'recipes') {
      return (k as List).map((w) => RecipesModel.fromJson(w)).toList();
    }
    if (typeModel == 'raw-materials') {
      return (k as List).map((w) => RawMaterialsModel.fromJson(w)).toList();
    }

    //Patterns
    if (typeModel == 'roadmaps') {
      return (k as List).map((w) => RoadMapModel.fromJson(w)).toList();
    }
    if (typeModel == 'resources') {
      return (k as List).map((w) => ResourcesModel.fromJson(w)).toList();
    }

    //Schedule
    if (typeModel == 'production-orders') {
      return (k as List).map((w) => ProductionOrdersModel.fromJson(w)).toList();
    }
    if (typeModel == 'production-orders-executed') {
      return (k as List).map((w) => ProductionOrdersExecutedModel.fromJson(w)).toList();
    }

    //Indicators
    if (typeModel == 'oees') {
      return (k as List).map((w) => OeeModel.fromJson(w)).toList();
    }

    //Supervisory
    if (typeModel == 'cb-hardwares') {
      return (k as List).map((w) => CBHardwareModel.fromJson(w)).toList();
    }
    if (typeModel == 'data-collect') {
      return (k as List).map((w) => DataCollect.fromJson(w)).toList();
    }
  }

  getMapKey({@required BuildContext context, @required String local, @required List<String> listFields, @required List<String> key}) async {
    objMapKey = {
      "Nenhum": ["Nehum"]
    };
    for (int i = 0; i < listFields.length; i++) {
      var k = await api.getApiListKey(
        context: context,
        local: local,
        stageArea: listFields[i],
        key: key,
      );
      objMapKey["${listFields[i]}"] = k[1];
    }

    notifyListeners();
  }

  getListKey({
    @required BuildContext context,
    @required List<String> local,
    @required List<String> listFields,
    @required List<String> key,
    @required Function func,
  }) async {
    listKeyName = {
      "": [""]
    };
    listKeyId = {
      "": [""]
    };
    listKeyFilesUrl = {
      "": [""]
    };
    listKeyScriptOrder = {
      "": [""]
    };
    statusDropdownButton = {"": ""};
    listKeyName.clear();
    listKeyId.clear();
    statusDropdownButton.clear();

    for (int i = 0; i < listFields.length; i++) {
      listKeyName["${listFields[i]}"] = ["Nenhum"];
      listKeyId["${listFields[i]}"] = ["Nenhum"];
      listKeyFilesUrl["${listFields[i]}"] = [""];
    }

    for (int i = 0; i < listFields.length; i++) {
      var k = await api.getApiListKey(
        context: context,
        local: local[i],
        stageArea: listFields[i],
        key: key,
      );

      if (k[1].length < 1) {
        objListKey = null;
      } else {
        objListKey = (k[1] as List).map((w) => ListKey.fromJson(w)).toList();
      }

      //arrumar depois
      // objIdKey = {};
      // for (var j in objListKey) {
      //   objIdKey["${listFields[i]}"] = {
      //     j.sId: {
      //       "name": j.name,
      //       "files_url": j.filesUrl,
      //     }
      //   };
      // }
      // arrumar depois

      for (int i = 0; i < listFields.length; i++) {
        statusDropdownButton["${listFields[i]}"] = k[0];
      }

      if (objListKey != null) {
        auxList = ["Nenhum"];
        for (int i = 0; i < objListKey.length; i++) {
          auxList.add(objListKey[i].name);
        }
        listKeyName["${listFields[i]}"] = auxList;

        auxList = ["Nenhum"];
        for (int i = 0; i < objListKey.length; i++) {
          auxList.add(objListKey[i].sId);
        }
        listKeyId["${listFields[i]}"] = auxList;

        auxList = [];
        if ("${listFields[i]}" == 'users-operator') {
          for (int i = 0; i < objListKey.length; i++) {
            auxList.add(objListKey[i].filesUrl["img1"].toString());
          }
          listKeyFilesUrl["${listFields[i]}"] = auxList;
        }

        auxList = [];
        for (int i = 0; i < objListKey.length; i++) {
          auxList.add(objListKey[i].scriptOrder.toString());
        }
        listKeyScriptOrder["${listFields[i]}"] = auxList;

        auxList = ["Nenhum"];

        statusDropdownButton["${listFields[i]}"] = k[0];
      }
    }
    func();
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
    if (search.length < 1) allDocumentsStageArea = null;
    notifyListeners();
  }

  send({
    @required dynamic id,
    @required dynamic model,
    @required BuildContext context,
    @required bool create,
    @required String apiRoute,
    @required bool withToken,
    @required Function() funcAcept,
    @required Function() funcNoAcept,
    @required String message,
  }) async {
    APIProvider apiProvider = Provider.of<APIProvider>(context, listen: false);
    BuildContext dialogContextA = context;

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext contextA) {
        dialogContextA = contextA;
        return DialogProgress();
      },
    );

    apiProvider.response = "";
    var validate = "";

    if (create == true) {
      await createDocument(
        id: id,
        model: model,
        context: context,
        apiRoute: apiRoute,
        withToken: withToken,
      );
      validate = "docCreated";
    } else {
      await editDocument(
        id: id,
        model: model,
        context: context,
        apiRoute: apiRoute,
      );
      validate = "docUpdated";
    }

    Navigator.pop(dialogContextA);

    if (apiProvider.response != validate) {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext contextB) {
          return DialogError();
        },
      );
      funcNoAcept();
    } else {
      var snackbar = GlobalScaffold();
      snackbar.getshowSnackbar('$message');
      apiProvider.progress = "0";
      funcAcept();
    }
    return apiProvider.response;
  }

  delete({
    @required dynamic id,
    @required dynamic model,
    @required BuildContext context,
    @required String apiRoute,
    @required Function() func,
    @required String message,
    bool noNessage,
  }) async {
    APIProvider api = Provider.of<APIProvider>(context, listen: false);

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return DialogProgress();
      },
    );

    api.response = "";

    await deleteDocument(
      id: id,
      model: model,
      context: context,
      apiRoute: apiRoute,
    );

    Navigator.of(context).pop();

    if (api.response != "docDeleted") {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return DialogError();
        },
      );
    } else {
      var snackbar = GlobalScaffold();
      if (noNessage == true) {
      } else {
        snackbar.getshowSnackbar('$message');
      }
      api.progress = "0";
      func();
    }
    return api.response;
  }

  Future createDocument({
    @required dynamic id,
    @required dynamic model,
    @required BuildContext context,
    @required String apiRoute,
    @required bool withToken,
  }) async {
    try {
      var api = new API();
      var res = await api.create(id: id, apiRoute: apiRoute, model: model, context: context, withToken: withToken);
      notifyListeners();
      return res;
    } catch (ex) {
      print(ex);
      notifyListeners();
      return null;
    }
  }

  Future editDocument({
    @required dynamic id,
    @required dynamic model,
    @required BuildContext context,
    @required String apiRoute,
  }) async {
    try {
      var api = new API();
      var res = await api.edit(id: id, apiRoute: apiRoute, model: model, context: context);
      notifyListeners();
      return res;
    } catch (ex) {
      print(ex);
      notifyListeners();
      return null;
    }
  }

  Future deleteDocument({
    @required dynamic id,
    @required dynamic model,
    @required BuildContext context,
    @required String apiRoute,
  }) async {
    try {
      var api = new API();
      var res = await api.delete(apiRoute: apiRoute, model: model, context: context, id: id);
      notifyListeners();
      return res;
    } catch (ex) {
      print(ex);
      notifyListeners();
      return null;
    }
  }
}
