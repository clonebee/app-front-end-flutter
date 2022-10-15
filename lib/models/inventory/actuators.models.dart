class ActuatorsModel {
  String sId;
  String brand;
  String code;
  String dateOfInstallation;
  String dateOfManufacture;
  String datePurchase;
  String description;
  bool favorite;
  String model;
  String name;
  String powerSupply;
  String powerSupplyType;
  bool situation;
  Map<String, dynamic> filesUrl;
  Map<String, dynamic> filesBase64Up;

  ActuatorsModel({
    this.sId,
    this.brand,
    this.code,
    this.name,
    this.model,
    this.dateOfInstallation,
    this.dateOfManufacture,
    this.datePurchase,
    this.description,
    this.favorite,
    this.powerSupply,
    this.powerSupplyType,
    this.situation,
    this.filesUrl,
    this.filesBase64Up,
  });

  ActuatorsModel.fromJson(Map<String, dynamic> json) {
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
    powerSupply = json['power_supply'];
    powerSupplyType = json['power_supply_type'];
    situation = json['situation'];
    filesUrl = json['files_url'];
    filesBase64Up = json['files_base64_up'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['code'] = this.code;
    data['model'] = this.model;
    data['brand'] = this.brand;
    data['date_of_installation'] = this.dateOfInstallation;
    data['date_of_manufacture'] = this.dateOfManufacture;
    data['date_purchase'] = this.datePurchase;
    data['description'] = this.description;
    data['favorite'] = this.favorite;
    data['power_supply'] = this.powerSupply;
    data['power_supply_type'] = this.powerSupplyType;
    data['situation'] = this.situation;
    data['files_url'] = this.filesUrl;
    data['files_base64_up'] = this.filesBase64Up;
    return data;
  }
}
