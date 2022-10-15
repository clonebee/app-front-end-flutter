class ListKey {
  String sId;
  String name;
  Map<String, dynamic> filesUrl;
  List<dynamic> scriptOrder;

  ListKey({
    this.sId,
    this.name,
    this.scriptOrder,
    this.filesUrl,
  });

  ListKey.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    filesUrl = json['files_url'];
    scriptOrder = json['script_order'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['files_url'] = this.filesUrl;
    data['script_order'] = this.scriptOrder;
    return data;
  }
}
