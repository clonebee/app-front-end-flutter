class ResourcesModel {
  String sId;
  String name;
  String code;
  String description;
  bool favorite;
  bool situation;
  Map<String, dynamic> docsRelations;
  Map<String, dynamic> docsRelationsIds;
  Map<String, dynamic> operatorActivities;

  ResourcesModel({
    this.sId,
    this.name,
    this.favorite,
    this.description,
    this.situation,
    this.docsRelations,
    this.docsRelationsIds,
    this.operatorActivities,
  });

  ResourcesModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    description = json['description'];
    favorite = json['favorite'];
    situation = json['situation'];
    docsRelations = json['docs_relations'];
    docsRelationsIds = json['docs_relations_ids'];
    operatorActivities = json['operator_activities'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['description'] = this.description;
    data['favorite'] = this.favorite;
    data['situation'] = this.situation;
    data['docs_relations'] = this.docsRelations;
    data['docs_relations_ids'] = this.docsRelationsIds;
    data['operator_activities'] = this.operatorActivities;
    return data;
  }
}
