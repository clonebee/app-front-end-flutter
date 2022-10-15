// import 'dart:convert';

import 'package:cbmes_v1/provider/apiProvider.dart';
import 'package:cbmes_v1/provider/operational.provider.dart';
import 'package:cbmes_v1/provider/routes.Provider.dart';
import 'package:cbmes_v1/ui/globalWidgets/check_conection.func.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:uuid/uuid.dart';

var uuid = Uuid();
var v1 = uuid.v1();

class API {
  Future getToken({
    @required BuildContext context,
    @required String user,
    @required String password,
    @required String myUser,
  }) async {
    APIProvider api = Provider.of<APIProvider>(context, listen: false);
    var url = "https://clonebee.io/generate_token";

    api.apiPerfil = user.split("@")[1];
    user = user.split("@")[0];

    Response response;
    try {
      response = await Dio().get(
        url,
        onReceiveProgress: (int sent, int total) {
          String x = ((sent / total) * 100).toStringAsFixed(0);
          api.setProgress(x);
          // print('Get Token: $x');
        },
        options: Options(
          validateStatus: (status) {
            return status < 1000;
          },
          headers: {
            "Content-Type": "application/json",
            'accept': 'application/json',
            'Authorization': """Bearer {"user_name": "$user", "password" : "$password", "database_name": "${api.apiPerfil}", "collection_name":"$myUser"}""",
          },
        ),
      );
      // ignore: unused_catch_clause
    } on DioError catch (e) {
      await checkInternetConnection(context);
    }

    api.token = response.data["access_token"];
    api.userId = response.data["user_id"];
    // print(response.data["msg"]);

    return response.data["msg"];
  }

  Future getId({@required String apiRoute, @required String id, @required BuildContext context}) async {
    APIProvider api = Provider.of<APIProvider>(context, listen: false);
    var url = "https://clonebee.io/api/v2/$apiRoute/${api.apiPerfil}/$id";
    print(url);

    Response response;
    try {
      response = await Dio().get(
        url,
        onReceiveProgress: (int sent, int total) {
          String x = ((sent / total) * 100).toStringAsFixed(0);
          api.setProgress(x);
          // print('Get All: $x');
        },
        options: Options(
          validateStatus: (status) {
            return status < 1000;
          },
          headers: {
            "Content-Type": "application/json",
            'Authorization': 'Bearer ${api.token}',
          },
        ),
      );
      // ignore: unused_catch_clause
    } on DioError catch (e) {
      await checkInternetConnection(context);
    }

    api.response = response.data["msg"];

    print("API RESPONSE *************************");
    print(api.response);
    print("API RESPONSE *************************");

    return response.data["docs"];
  }

  Future getOne({@required String apiRoute, @required BuildContext context}) async {
    APIProvider api = Provider.of<APIProvider>(context, listen: false);
    var url = "https://clonebee.io/api/v2/$apiRoute/${api.apiPerfil}";

    Response response;
    try {
      response = await Dio().get(
        url,
        onReceiveProgress: (int sent, int total) {
          String x = ((sent / total) * 100).toStringAsFixed(0);
          api.setProgress(x);
          // print('Get All: $x');
        },
        options: Options(
          validateStatus: (status) {
            return status < 1000;
          },
          headers: {
            "Content-Type": "application/json",
            'Authorization': 'Bearer ${api.token}',
          },
        ),
      );
      // ignore: unused_catch_clause
    } on DioError catch (e) {
      await checkInternetConnection(context);
    }

    api.response = response.data["msg"];

    print("API RESPONSE *************************");
    print(api.response);
    print("API RESPONSE *************************");

    return response.data["doc"];
  }

  Future getSerialNumberCloneBee({
    @required BuildContext context,
  }) async {
    APIProvider api = Provider.of<APIProvider>(context, listen: false);

    var url = """https://clonebee.io/api/v2/cb-info/inventory-hardwares/data-info?filter_keys_values={"parameter":{"database_name_source": "${api.apiPerfil}"},"filter_project": ["serial_number"]}""";

    print(url);

    Response response;
    try {
      response = await Dio().get(
        url,
        onReceiveProgress: (int sent, int total) {
          String x = ((sent / total) * 100).toStringAsFixed(0);
          api.setProgress(x);
          // print('Get All: $x');
        },
        options: Options(
          validateStatus: (status) {
            return status < 1000;
          },
          headers: {
            "Content-Type": "application/json",
            'Authorization': 'Bearer ${api.token}',
          },
        ),
      );
      // ignore: unused_catch_clause
    } on DioError catch (e) {
      await checkInternetConnection(context);
      return "2";
    }

    List<String> x = [];
    for (var v in response.data["docs"]) {
      x.add(v['serial_number']);
    }
    print("AAAAAAAAAAAAAA API RESPONSE *************************");
    print(response.data["msg"]);
    print(x);
    print("AAAAAAAAAAAAAA API RESPONSE *************************");

    return [response.data["msg"], x];
  }

  Future getAll({
    @required BuildContext context,
    @required String apiRoute,
    @required String id,
    @required bool withToken,
  }) async {
    APIProvider api = Provider.of<APIProvider>(context, listen: false);
    Routes routes = Provider.of<Routes>(context, listen: false);

    // if (routes.forwardRoute == "/supervisory/stageArea/view") {
    //   api.apiPerfil = "";
    // }
    var url = """https://clonebee.io/api/v2/$apiRoute/${api.apiPerfil}$id""";

    print(url);

    Response response;
    try {
      response = await Dio().get(
        url,
        onReceiveProgress: (int sent, int total) {
          String x = ((sent / total) * 100).toStringAsFixed(0);
          api.setProgress(x);
          // print('Get All: $x');
        },
        options: withToken == true
            ? Options(
                validateStatus: (status) {
                  return status < 1000;
                },
                headers: {
                  "Content-Type": "application/json",
                  'Authorization': 'Bearer ${api.token}',
                },
              )
            : Options(
                validateStatus: (status) {
                  return status < 1000;
                },
                headers: {
                  "Content-Type": "application/json",
                },
              ),
      );
      // ignore: unused_catch_clause
    } on DioError catch (e) {
      await checkInternetConnection(context);
      return "2";
    }
    print("API RESPONSE *************************");
    print(response.data["msg"]);
    print("API RESPONSE *************************");

    api.response = response.data["msg"];
    if (routes.forwardRoute != "/supervisory/stageArea/view") {
      api.qtyOfPages = response.data["pagination"]["qty_of_pages"];
      api.qtyDocsPage = response.data["pagination"]["qty_docs_page"];
      api.currentPage = response.data["pagination"]["current_page"];
    }

    return response.data["docs"];
  }

  Future getFilter({@required String apiRoute, @required BuildContext context, @required String filter}) async {
    APIProvider api = Provider.of<APIProvider>(context, listen: false);
    var url = """https://clonebee.io/api/v2/$apiRoute/${api.apiPerfil}?keys_values={$filter}&qty_docs_page=all&current_page=0&sort={'key': 'register_date', 'ascending': -1}""";

    Response response;
    try {
      response = await Dio().get(
        url,
        onReceiveProgress: (int sent, int total) {
          String x = ((sent / total) * 100).toStringAsFixed(0);
          api.setProgress(x);
          // print('Get All: $x');
        },
        options: Options(
          validateStatus: (status) {
            return status < 1000;
          },
          headers: {
            "Content-Type": "application/json",
            'Authorization': 'Bearer ${api.token}',
          },
        ),
      );
      // ignore: unused_catch_clause
    } on DioError catch (e) {
      await checkInternetConnection(context);
    }

    api.response = response.data["msg"];
    api.qtyOfPages = int.parse('${response.data["qty_of_pages"]}');

    print("API RESPONSE *************************");
    print(api.response);
    print("API RESPONSE *************************");

    return response.data["docs"];
  }

  Future getAllDataBase({@required String apiRoute, @required BuildContext context}) async {
    APIProvider api = Provider.of<APIProvider>(context, listen: false);
    var url = "https://clonebee.io/api/v2/$apiRoute/${api.apiPerfil}?qty_docs_page=all&current_page=0&sort={'key': 'register_date', 'ascending': -1}";

    Response response;
    try {
      response = await Dio().get(
        url,
        onReceiveProgress: (int sent, int total) {
          String x = ((sent / total) * 100).toStringAsFixed(0);
          api.setProgress(x);
          // print('Get All: $x');
        },
        options: Options(
          validateStatus: (status) {
            return status < 1000;
          },
          headers: {
            "Content-Type": "application/json",
            'Authorization': 'Bearer ${api.token}',
          },
        ),
      );
      // ignore: unused_catch_clause
    } on DioError catch (e) {
      await checkInternetConnection(context);
    }

    api.response = response.data["msg"];
    api.qtyOfPages = int.parse('${response.data["qty_of_pages"]}');

    print("API RESPONSE *************************");
    print(api.response);
    print("API RESPONSE *************************");

    return response.data["docs"];
  }

  Future getAllTasksByOrderProductionByStatus({@required String apiRoute, @required String productionOrder, @required String taskStatus, @required BuildContext context}) async {
    APIProvider api = Provider.of<APIProvider>(context, listen: false);

    var url = """https://clonebee.io/api/v2/$apiRoute/${api.apiPerfil}?filter_keys_values={"current_page": 0,"parameter": {"production_order_id": "$productionOrder"$taskStatus},"qty_docs_page": 10000,"sort": {"prediction_start_date": 1}}""";

    print(url);
    Response response;
    try {
      response = await Dio().get(
        url,
        onReceiveProgress: (int sent, int total) {
          String x = ((sent / total) * 100).toStringAsFixed(0);
          api.setProgress(x);
          // print('Get All: $x');
        },
        options: Options(
          validateStatus: (status) {
            return status < 1000;
          },
          headers: {
            "Content-Type": "application/json",
            'Authorization': 'Bearer ${api.token}',
          },
        ),
      );
      // ignore: unused_catch_clause
    } on DioError catch (e) {
      await checkInternetConnection(context);
    }

    api.response = response.data["msg"];
    api.qtyOfPages = response.data["qty_of_pages"];

    print("API RESPONSE *************************");
    print(api.response);
    print("API RESPONSE *************************");
    return response.data["docs"];
  }

  Future getAllTasks({@required String apiRoute, @required statusFilter, @required BuildContext context}) async {
    APIProvider api = Provider.of<APIProvider>(context, listen: false);
    OperationalBloc op = Provider.of<OperationalBloc>(context, listen: false);

    var url = """https://clonebee.io/api/v2/$apiRoute/${api.apiPerfil}?filter_keys_values={"parameter": {"sector_id": "${op.idSector}","resource_id":  "${op.idResource}"$statusFilter},"qty_docs_page": 10000, "current_page": 0,"sort": {"name": 1}}""";
    print(url);
    Response response;
    try {
      response = await Dio().get(
        url,
        onReceiveProgress: (int sent, int total) {
          String x = ((sent / total) * 100).toStringAsFixed(0);
          api.setProgress(x);
          // print('Get All: $x');
        },
        options: Options(
          validateStatus: (status) {
            return status < 1000;
          },
          headers: {
            "Content-Type": "application/json",
            'Authorization': 'Bearer ${api.token}',
          },
        ),
      );
      // ignore: unused_catch_clause
    } on DioError catch (e) {
      await checkInternetConnection(context);
    }

    api.response = response.data["msg"];
    api.qtyOfPages = response.data["qty_of_pages"];

    print("API RESPONSE *************************");
    print(api.response);
    print("API RESPONSE *************************");
    return response.data["docs"];
  }

  Future getApiOperatorPhoto({
    @required BuildContext context,
    @required String local,
    @required String stageArea,
    @required String key,
    @required String id,
  }) async {
    APIProvider api = Provider.of<APIProvider>(context, listen: false);

    var url = '''https://clonebee.io/api/v2/$local/$stageArea/${api.apiPerfil}/$id?filter_project=$key''';
    // list_key=$key&keys_values={"_id":"$value"}""";
    print(url);
    print("GET photos");

    Response response;
    try {
      response = await Dio().get(
        url,
        options: Options(
          validateStatus: (status) {
            return status < 1000;
          },
          headers: {
            "Content-Type": "application/json",
            'Authorization': 'Bearer ${api.token}',
          },
        ),
      );
      // ignore: unused_catch_clause
    } on DioError catch (e) {
      await checkInternetConnection(context);
    }

    api.response = response.data["msg"];

    print("API RESPONSE *************************");
    print(api.response);
    print("API RESPONSE *************************");

    return [response.data["msg"], response.data["docs"]];
  }

  Future getApiListKey({
    @required BuildContext context,
    @required String local,
    @required String stageArea,
    @required List<String> key,
  }) async {
    APIProvider api = Provider.of<APIProvider>(context, listen: false);

    var url = """https://clonebee.io/api/v2/$local/$stageArea/${api.apiPerfil}?filter_project=$key&sort={"name": 1}&qty_docs_page=1000""";
    print(url);
    Response response;
    try {
      response = await Dio().get(
        url,
        options: Options(
          validateStatus: (status) {
            return status < 1000;
          },
          headers: {
            "Content-Type": "application/json",
            'Authorization': 'Bearer ${api.token}',
          },
        ),
      );
      // ignore: unused_catch_clause
    } on DioError catch (e) {
      await checkInternetConnection(context);
    }

    api.response = response.data["msg"];

    print("API RESPONSE *************************");
    print(api.response);
    print("API RESPONSE *************************");

    return [response.data["msg"], response.data["docs"]];
  }

  Future getFavorites({@required String apiRoute, @required BuildContext context}) async {
    APIProvider api = Provider.of<APIProvider>(context, listen: false);
    var url = """https://clonebee.io/api/v2/$apiRoute/${api.apiPerfil}?keys_values={"favorite":true}&qty_docs_page=${api.qtyDocsPage}&current_page=${api.currentPage}&sort={'key': 'register_date', 'ascending': -1}""";

    Response response;
    try {
      response = await Dio().get(
        url,
        onReceiveProgress: (int sent, int total) {
          String x = ((sent / total) * 100).toStringAsFixed(0);
          api.setProgress(x);
          print('Get Favorite: $x');
        },
        options: Options(
          validateStatus: (status) {
            return status < 1000;
          },
          headers: {
            "Content-Type": "application/json",
            'Authorization': 'Bearer ${api.token}',
          },
        ),
      );
      // ignore: unused_catch_clause
    } on DioError catch (e) {
      await checkInternetConnection(context);
    }
    api.response = response.data["msg"];
    api.qtyOfPages = response.data["qty_of_pages"];

    print("API RESPONSE *************************");
    print(api.response);
    print("API RESPONSE *************************");

    return response.data["docs"];
  }

  Future getSearch({@required String apiRoute, @required String value, @required BuildContext context}) async {
    APIProvider api = Provider.of<APIProvider>(context, listen: false);
    var url = """https://clonebee.io/api/v2/$apiRoute/${api.apiPerfil}?search_value=$value&qty_docs_page=${api.qtyDocsPage}&current_page=${api.currentPage}""";

    Response response;
    try {
      response = await Dio().get(
        url,
        onReceiveProgress: (int sent, int total) {
          String x = ((sent / total) * 100).toStringAsFixed(0);
          api.setProgress(x);
          print('Get Filter: $x');
        },
        options: Options(
          validateStatus: (status) {
            return status < 1000;
          },
          headers: {
            "Content-Type": "application/json",
            'Authorization': 'Bearer ${api.token}',
          },
        ),
      );
      // ignore: unused_catch_clause
    } on DioError catch (e) {
      await checkInternetConnection(context);
    }

    api.response = response.data["msg"];
    api.qtyOfPages = response.data["qty_of_pages"];

    print("API RESPONSE *************************");
    print(api.response);
    print("API RESPONSE *************************");

    return response.data["docs"];
  }

  Future donwloadFileLink({@required String apiRoute, @required dynamic model, @required String format, @required BuildContext context}) async {
    APIProvider api = Provider.of<APIProvider>(context, listen: false);
    var url = "https://clonebee.io/api/v2/$apiRoute/report-$format/${api.apiPerfil}/${model.sId}";

    Response response = await Dio().get(
      url,
      options: Options(
        headers: {
          "Content-Type": "application/json",
          'Authorization': 'Bearer ${api.token}',
        },
      ),
    );
    print(response.data.toString());

    Uri fileUrl = Uri.parse('${response.data}');

    void _launchUrl() async {
      if (!await launchUrl(fileUrl)) throw 'Could not launch $fileUrl';
    }

    _launchUrl();
  }

  Future delete({
    @required dynamic id,
    @required String apiRoute,
    @required dynamic model,
    @required BuildContext context,
  }) async {
    APIProvider api = Provider.of<APIProvider>(context, listen: false);
    var url = """https://clonebee.io/api/v2/$apiRoute/${api.apiPerfil}$id""";

    print(url);

    try {
      Response response = await Dio().delete(
        url,
        data: [model],
        options: Options(
          validateStatus: (status) {
            return status < 1000;
          },
          headers: {
            "Content-Type": "application/json",
            'Authorization': 'Bearer ${api.token}',
          },
        ),
      );

      api.response = response.data["msg"];
      print("API RESPONSE *************************");
      print(api.response);
      print("API RESPONSE *************************");

      api.objResponse = response.data["doc"];

      return api.response;
    } on DioError catch (e) {
      print(e);
      await checkInternetConnection(context);
    }
  }

  Future create({
    @required dynamic id,
    @required String apiRoute,
    @required dynamic model,
    @required BuildContext context,
    @required bool withToken,
  }) async {
    APIProvider api = Provider.of<APIProvider>(context, listen: false);
    var url = """https://clonebee.io/api/v2/$apiRoute/${api.apiPerfil}$id""";

    print(url);
    print(model);
    try {
      Response response = await Dio().post(
        url,
        data: [model],
        onSendProgress: (int sent, int total) {
          String x = ((sent / total) * 100).toStringAsFixed(0);
          api.setProgress(x);
        },
        options: withToken == true
            ? Options(
                validateStatus: (status) {
                  return status < 1000;
                },
                headers: {
                  "Content-Type": "application/json",
                  'Authorization': 'Bearer ${api.token}',
                },
              )
            : Options(
                validateStatus: (status) {
                  return status < 1000;
                },
                headers: {
                  "Content-Type": "application/json",
                },
              ),
      );

      api.response = response.data["msg"];
      print("API RESPONSE *************************");
      print(api.response);
      print("API RESPONSE *************************");

      api.objResponse = response.data["docs"][0];

      return api.response;
    } on DioError catch (e) {
      print(e);
      await checkInternetConnection(context);
    }
  }

  Future edit({
    @required dynamic id,
    @required String apiRoute,
    @required dynamic model,
    @required BuildContext context,
  }) async {
    APIProvider api = Provider.of<APIProvider>(context, listen: false);
    var url = """https://clonebee.io/api/v2/$apiRoute/${api.apiPerfil}$id""";
    print(url);
    print(model);
    try {
      Response response = await Dio().put(
        url,
        data: [model],
        onSendProgress: (int sent, int total) {
          String x = ((sent / total) * 100).toStringAsFixed(0);
          api.setProgress(x);
        },
        options: Options(
          validateStatus: (status) {
            return status < 1000;
          },
          headers: {
            "Content-Type": "application/json",
            'Authorization': 'Bearer ${api.token}',
          },
        ),
      );

      api.response = response.data["msg"];
      api.objResponse = response.data["doc"][0];

      print("API RESPONSE *************************");
      print(api.response);
      print("API RESPONSE *************************");

      return api.response;
    } on DioError catch (e) {
      print(e);
      await checkInternetConnection(context);
    }
  }

  Future getCEP({
    @required BuildContext context,
    @required String cep,
  }) async {
    APIProvider api = Provider.of<APIProvider>(context, listen: false);
    var url = "https://viacep.com.br/ws/$cep/json/";
    print(url);

    Response response;
    try {
      response = await Dio().get(
        url,
        onReceiveProgress: (int sent, int total) {
          String x = ((sent / total) * 100).toStringAsFixed(0);
          api.setProgress(x);
          // print('Get All: $x');
        },
        options: Options(
          validateStatus: (status) {
            return status < 1000;
          },
          headers: {
            "Content-Type": "application/json",
          },
        ),
      );
      // ignore: unused_catch_clause
    } on DioError catch (e) {
      await checkInternetConnection(context);
      return "2";
    }

    print("API RESPONSE *************************");
    print(response.statusMessage);
    print(response.data);
    print("API RESPONSE *************************");

    if (response.data != null && response.statusMessage == "OK") {
      api.cepObj = response.data;
    } else {
      api.cepObj["logradouro"] = "";
      api.cepObj["complemento"] = "";
      api.cepObj["bairro"] = "";
      api.cepObj["localidade"] = "";
      api.cepObj["uf"] = "";
    }
  }

  //////////////////////////////////////////////////////////////////////////////

  Future editJson({@required String apiRoute, @required dynamic jsonx, @required BuildContext context}) async {
    APIProvider api = Provider.of<APIProvider>(context, listen: false);

    var url = "https://clonebee.io/api/v2/$apiRoute/${api.apiPerfil}/${jsonx["_id"]}";

    // print("**************************************");
    // print(url);
    // print(jsonx);
    // print("**************************************");

    Response response;
    try {
      response = await Dio().put(
        url,
        data: jsonx,
        onSendProgress: (int sent, int total) {
          String x = ((sent / total) * 100).toStringAsFixed(0);
          api.setProgress(x);
        },
        options: Options(
          validateStatus: (status) {
            return status < 1000;
          },
          headers: {
            "Content-Type": "application/json",
            'Authorization': 'Bearer ${api.token}',
          },
        ),
      );
      // ignore: unused_catch_clause
    } on DioError catch (e) {
      await checkInternetConnection(context);
    }
    api.response = response.data["msg"];
    api.objResponse = response.data["doc"];

    print("API RESPONSE *************************");
    print(api.response);
    print("API RESPONSE *************************");

    return api.response;
  }

  Future deleteJson({@required String apiRoute, @required dynamic jsonx, @required BuildContext context}) async {
    APIProvider api = Provider.of<APIProvider>(context, listen: false);
    var url = "https://clonebee.io/api/v2/$apiRoute/${api.apiPerfil}/${jsonx["_id"]}";

    Response response;
    try {
      response = await Dio().delete(
        url,
        data: jsonx,
        options: Options(
          validateStatus: (status) {
            return status < 1000;
          },
          headers: {
            "Content-Type": "application/json",
            'Authorization': 'Bearer ${api.token}',
          },
        ),
      );
      // ignore: unused_catch_clause
    } on DioError catch (e) {
      await checkInternetConnection(context);
    }
    api.response = response.data["msg"];

    print("API RESPONSE *************************");
    print(api.response);
    print("API RESPONSE *************************");

    return api.response;
  }
}

// "Access-Control-Allow-Origin":
//     "*", // Required for CORS support to work
// "Access-Control-Allow-Credentials":
//     true, // Required for cookies, authorization headers with HTTPS
// "Access-Control-Allow-Headers":
//     "Origin,Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,locale",
// "Access-Control-Allow-Methods": "GET, OPTIONS"
