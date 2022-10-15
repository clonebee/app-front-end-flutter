class TransportsModel {
  String sId;
  String name;
  String code;
  String brand;
  String model;
  String dateOfInstallation;
  String dateOfManufacture;
  String datePurchase;
  String description;
  bool favorite;
  String registerDate;
  bool situation;
  Map<String, dynamic> barcodeTypes;
  Map<String, dynamic> filesUrl;
  Map<String, dynamic> filesBase64Up;

  TransportsModel({
    this.sId,
    this.name,
    this.code,
    this.brand,
    this.model,
    this.dateOfInstallation,
    this.dateOfManufacture,
    this.datePurchase,
    this.description,
    this.favorite,
    this.registerDate,
    this.situation,
    this.barcodeTypes,
    this.filesUrl,
    this.filesBase64Up,
  });

  TransportsModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    code = json['code'];
    brand = json['brand'];
    model = json['model'];
    dateOfInstallation = json['date_of_installation'];
    dateOfManufacture = json['date_of_manufacture'];
    datePurchase = json['date_purchase'];
    description = json['description'];
    favorite = json['favorite'];
    registerDate = json['register_date'];
    situation = json['situation'];
    barcodeTypes = json["barcode_types"];
    filesUrl = json['files_url'];
    filesBase64Up = json['files_base64_up'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['brand'] = this.brand;
    data['code'] = this.code;
    data['date_of_installation'] = this.dateOfInstallation;
    data['date_of_manufacture'] = this.dateOfManufacture;
    data['date_purchase'] = this.datePurchase;
    data['description'] = this.description;
    data['favorite'] = this.favorite;
    data['model'] = this.model;
    data['name'] = this.name;
    data['register_date'] = this.registerDate;
    data['situation'] = this.situation;
    data["barcode_types"] = this.barcodeTypes;
    data['files_url'] = this.filesUrl;
    data['files_base64_up'] = this.filesBase64Up;
    return data;
  }
}
