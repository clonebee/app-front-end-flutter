class ProductModel {
  String sId;
  String code;
  String description;
  bool favorite;
  String img1Base64;
  String img2Base64;
  String img3Base64;
  String img4Base64;
  double measuresDiameter;
  double measuresHeight;
  double measuresLength;
  double measuresLiters;
  double measuresWeight;
  double measuresWidth;
  String name;
  // String registerDate;
  String situation;
  Map<String, dynamic> barcodeTypes;

  ProductModel(
      {this.sId,
      this.code,
      this.description,
      this.favorite,
      this.img1Base64,
      this.img2Base64,
      this.img3Base64,
      this.img4Base64,
      this.measuresDiameter,
      this.measuresHeight,
      this.measuresLength,
      this.measuresLiters,
      this.measuresWeight,
      this.measuresWidth,
      this.name,
      // this.registerDate,
      this.situation,
      this.barcodeTypes});

  ProductModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    code = json['code'];
    description = json['description'];
    favorite = json['favorite'];
    img1Base64 = json['img_1_base64'];
    img2Base64 = json['img_2_base64'];
    img3Base64 = json['img_3_base64'];
    img4Base64 = json['img_4_base64'];
    measuresDiameter = json['measures_diameter'];
    measuresHeight = json['measures_height'];
    measuresLength = json['measures_length'];
    measuresLiters = json['measures_liters'];
    measuresWeight = json['measures_weight'];
    measuresWidth = json['measures_width'];
    name = json['name'];
    // registerDate = json['register_date'];
    situation = json['situation'];
    barcodeTypes = json["barcode_types"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['code'] = this.code;
    data['description'] = this.description;
    data['favorite'] = this.favorite;
    data['img_1_base64'] = this.img1Base64;
    data['img_2_base64'] = this.img2Base64;
    data['img_3_base64'] = this.img3Base64;
    data['img_4_base64'] = this.img4Base64;
    data['measures_diameter'] = this.measuresDiameter;
    data['measures_height'] = this.measuresHeight;
    data['measures_length'] = this.measuresLength;
    data['measures_liters'] = this.measuresLiters;
    data['measures_weight'] = this.measuresWeight;
    data['measures_width'] = this.measuresWidth;
    data['name'] = this.name;
    // data['register_date'] = this.registerDate;
    data['situation'] = this.situation;
    data["barcode_types"] = this.barcodeTypes;
    return data;
  }
}
