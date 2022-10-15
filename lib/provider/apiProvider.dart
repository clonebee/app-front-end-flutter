import 'package:cbmes_v1/api/api.dart';
import 'package:cbmes_v1/models/users/users.models.dart';
import 'package:flutter/widgets.dart';

class APIProvider extends ChangeNotifier {
  final api = new API();
  dynamic cepObj = {};
  String apiPerfil = "";
  String userId = "";
  String userType = "";
  dynamic userIdObj = "";
  String response = "0";
  String progress = "0";
  int qtyDocsPage = 10;
  int qtyOfPages = 0;
  int currentPage = 0;
  int qtyTotalDocs;
  bool apiChangePage = true;
  String msgError = "Para mais informações contate-nos em www.clonebee.io";
  String token;
  Map<String, dynamic> objResponse = {};

  setApiChangePage() {
    apiChangePage = true;
    notifyListeners();
    return apiChangePage;
  }

  setMsgError(String value) {
    msgError = value;
    notifyListeners();
    return msgError;
  }

  setProgress(String value) {
    progress = value;
    notifyListeners();
    return progress;
  }

  getId(
      {@required BuildContext context,
      @required String id,
      @required String apiRoute}) async {
    var k = [await api.getId(apiRoute: apiRoute, id: id, context: context)];
    userIdObj = k[0].map((w) => UsersModel.fromJson(w)).toList();
    userIdObj = userIdObj[0];
    if (userIdObj.filesUrl.length < 1) {
      userIdObj.filesUrl["img1"] = "";
    }

    notifyListeners();
  }
}
