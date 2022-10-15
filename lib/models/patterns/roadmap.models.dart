class RoadMapModel {
//complete json {
  String sId;
  String name;
  bool favorite;
  String product;
  String productId;
  List<dynamic> scriptOrder;
  bool situation;
  Map<String, dynamic> filesUrl;
  Map<String, dynamic> filesBase64Up;
  Map<String, dynamic> docsRelations;
  Map<String, dynamic> docsRelationsIds;

  Map<String, dynamic> roadMap;
  //json roadmap
  List<String> taskName;
  int stage;
  List<String> description;
  // List<String> percentageOfCompletionForDispatch;
  List<String> predecessorTask;
  Map<String, int> quantityPerHour;

//}complete json

  RoadMapModel({
    this.sId,
    this.product,
    this.name,
    this.situation,
    this.favorite,
    this.scriptOrder,
    this.description,
    this.predecessorTask,
    this.quantityPerHour,
    this.stage,
    this.taskName,
    this.roadMap,
    this.filesUrl,
    this.filesBase64Up,
    this.docsRelations,
    this.docsRelationsIds,
  });

  RoadMapModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    favorite = json['favorite'];
    name = json['name'];
    situation = json['situation'];
    scriptOrder = json['script_order'];
    roadMap = json['roadmap'];
    filesUrl = json['files_url'];
    filesBase64Up = json['files_base64_up'];
    docsRelations = json['docs_relations'];
    docsRelationsIds = json['docs_relations_ids'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['favorite'] = this.favorite;
    data['name'] = this.name;
    data['situation'] = this.situation;
    data['script_order'] = this.scriptOrder;
    data['roadmap'] = this.roadMap;
    data['files_url'] = this.filesUrl;
    data['files_base64_up'] = this.filesBase64Up;
    data['docs_relations'] = this.docsRelations;
    data['docs_relations_ids'] = this.docsRelationsIds;
    return data;
  }

  // roadMapToJson(String sId, String product, String name, bool favorite, String svg, List<String> scriptOrder, String etapa, String description, String percentageOfCompletionForDispatch,
  //     List<String> predecessorTask, Map<String, int> quantityPerHour, int stage, String taskName) {
  //   //
  //   roadMapStage = {
  //     "description": description,
  //     "percentage_of_completion_for_dispatch": percentageOfCompletionForDispatch,
  //     "predecessor_task": predecessorTask,
  //     "quantity_per_hour": quantityPerHour,
  //     "stage": stage,
  //     "task_name": taskName
  //   };

  //   roadMapJson = {
  //     "_id": sId,
  //     "favorite": favorite,
  //     "product": product,
  //     "roadmap": {roadMapStage},
  //     "roadmap_name": name,
  //     "roadmap_svg": svg,
  //     "script_order": scriptOrder
  //   };
  // }
}
