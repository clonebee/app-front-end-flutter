class SectorModel {
  String sId;
  String name;
  String code;
  String description;
  bool favorite;
  bool situation;
  Map<String, dynamic> barcodeTypes;
  Map<String, dynamic> filesUrl;
  Map<String, dynamic> filesBase64Up;

  SectorModel({
    this.sId,
    this.name,
    this.code,
    this.description,
    this.favorite,
    this.situation,
    this.barcodeTypes,
    this.filesUrl,
    this.filesBase64Up,
  });

  SectorModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    code = json['code'];
    description = json['description'];
    favorite = json['favorite'];
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
    data['description'] = this.description;
    data['favorite'] = this.favorite;
    data['situation'] = this.situation;
    data["barcode_types"] = this.barcodeTypes;
    data['files_url'] = filesUrl;
    data['files_base64_up'] = filesBase64Up;
    return data;
  }
}
