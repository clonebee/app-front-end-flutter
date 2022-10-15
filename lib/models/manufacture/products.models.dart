class ProductsModel {
  String sId;
  String name;
  String code;
  String description;
  bool favorite;
  bool situation;
  Map<String, dynamic> filesUrl;
  Map<String, dynamic> filesBase64Up;
  Map<String, dynamic> docsRelations;
  Map<String, dynamic> docsRelationsIds;

  ProductsModel({
    this.sId,
    this.code,
    this.description,
    this.favorite,
    this.name,
    this.situation,
    this.filesUrl,
    this.filesBase64Up,
    this.docsRelations,
    this.docsRelationsIds,
  });

  ProductsModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    code = json['code'];
    description = json['description'];
    favorite = json['favorite'];
    situation = json['situation'];
    filesUrl = json['files_url'];
    filesBase64Up = json['files_base64_up'];
    docsRelations = json['docs_relations'];
    docsRelationsIds = json['docs_relations_ids'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['code'] = this.code;
    data['description'] = this.description;
    data['favorite'] = this.favorite;
    data['situation'] = this.situation;
    data['files_url'] = this.filesUrl;
    data['files_base64_up'] = this.filesBase64Up;
    data['docs_relations'] = this.docsRelations;
    data['docs_relations_ids'] = this.docsRelationsIds;
    return data;
  }
}
