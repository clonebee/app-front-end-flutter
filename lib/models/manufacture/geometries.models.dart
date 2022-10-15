class GeometriesModel {
  String sId;
  String name;
  String code;

  double height;
  double length;
  double width;
  double diameter;

  String description;
  bool favorite;
  bool situation;
  Map<String, dynamic> filesUrl;
  Map<String, dynamic> filesBase64Up;

  GeometriesModel({
    this.sId,
    this.name,
    this.code,
    this.height,
    this.length,
    this.width,
    this.diameter,
    this.description,
    this.favorite,
    this.situation,
    this.filesUrl,
    this.filesBase64Up,
  });

  GeometriesModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    code = json['code'];

    height = json['height'];
    length = json['length'];
    width = json['width'];
    diameter = json['diameter'];

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

    data['height'] = this.height;
    data['length'] = this.length;
    data['width'] = this.width;
    data['diameter'] = this.diameter;

    data['description'] = this.description;
    data['favorite'] = this.favorite;
    data['situation'] = this.situation;
    data['files_url'] = this.filesUrl;
    data['files_base64_up'] = this.filesBase64Up;
    return data;
  }
}
