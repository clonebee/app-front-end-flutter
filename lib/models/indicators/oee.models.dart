class OeeModel {
  String sId;
  String name;
  bool favorite;
  String startDate;
  String endDate;

  Map<String, dynamic> oee;
  Map<String, dynamic> plotsOee;

  Map<String, dynamic> filesUrl;
  Map<String, dynamic> filesBase64Up;
  Map<String, dynamic> docsRelations;
  Map<String, dynamic> docsRelationsIds;

  OeeModel({
    this.sId,
    this.name,
    this.favorite,
    this.startDate,
    this.endDate,
    this.oee,
    this.plotsOee,
    this.filesUrl,
    this.filesBase64Up,
    this.docsRelations,
    this.docsRelationsIds,
  });

  OeeModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    favorite = json['favorite'];
    startDate = json['start_date'];
    endDate = json['end_date'];

    oee = json['oee'];
    plotsOee = json['plots_oee'];

    filesUrl = json['files_url'];
    filesBase64Up = json['files_base64_up'];
    docsRelations = json['docs_relations'];
    docsRelationsIds = json['docs_relations_ids'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['favorite'] = this.favorite;
    data['start_date'] = this.startDate;
    data['end_date'] = this.endDate;
    data['oee'] = this.oee;
    data['plots_oee'] = this.plotsOee;
    data['files_url'] = this.filesUrl;
    data['files_base64_up'] = this.filesBase64Up;
    data['docs_relations'] = this.docsRelations;
    data['docs_relations_ids'] = this.docsRelationsIds;
    return data;
  }
}
