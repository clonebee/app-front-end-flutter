class RawMaterialsModel {
  String sId;
  String name;
  String code;

  String unit;
  double pricePerUnit;

  String description;
  bool favorite;
  bool situation;
  Map<String, dynamic> filesUrl;
  Map<String, dynamic> filesBase64Up;

  RawMaterialsModel({
    this.sId,
    this.name,
    this.code,
    this.unit,
    this.pricePerUnit,
    this.description,
    this.favorite,
    this.situation,
    this.filesUrl,
    this.filesBase64Up,
  });

  RawMaterialsModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    code = json['code'];

    unit = json['unit'];
    pricePerUnit = json['price_per_unit'];

    description = json['description'];
    favorite = json['favorite'];
    situation = json['situation'];
    filesUrl = json['files_url'];
    filesBase64Up = json['files_base64_up'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['code'] = this.code;

    data['unit'] = this.unit;
    data['price_per_unit'] = this.pricePerUnit;

    data['description'] = this.description;
    data['favorite'] = this.favorite;
    data['situation'] = this.situation;
    data['files_url'] = this.filesUrl;
    data['files_base64_up'] = this.filesBase64Up;
    return data;
  }
}
