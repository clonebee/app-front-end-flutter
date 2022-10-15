class SensorsModel {
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
  String outputType;
  String registerDate;
  bool situation;
  Map<String, dynamic> barcodeTypes;
  Map<String, dynamic> filesUrl;
  Map<String, dynamic> filesBase64Up;

  SensorsModel({
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
    this.outputType,
    this.registerDate,
    this.situation,
    this.barcodeTypes,
    this.filesUrl,
    this.filesBase64Up,
  });

  SensorsModel.fromJson(Map<String, dynamic> json) {
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
    outputType = json['output_type'];
    registerDate = json['register_date'];
    situation = json['situation'];
    barcodeTypes = json["barcode_types"];
    filesUrl = json['files_url'];
    filesBase64Up = json['files_base64_up'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['code'] = this.code;
    data['brand'] = this.brand;
    data['model'] = this.model;
    data['date_of_installation'] = this.dateOfInstallation;
    data['date_of_manufacture'] = this.dateOfManufacture;
    data['date_purchase'] = this.datePurchase;
    data['description'] = this.description;
    data['favorite'] = this.favorite;
    data['output_type'] = this.outputType;
    data['register_date'] = this.registerDate;
    data['situation'] = this.situation;
    data["barcode_types"] = this.barcodeTypes;
    data['files_url'] = this.filesUrl;
    data['files_base64_up'] = this.filesBase64Up;
    return data;
  }
}
