class OperationalModel {
  String sId;
  // bool goodItems;
  // bool lostItems;
  // bool disapprovedItems;
  int productionQty;
  Map<String, dynamic> barcodeTypes;
  List<dynamic> timeEntry;
  List<dynamic> dataEntryPlay;
  List<dynamic> dataEntryPause;
  List<dynamic> dataEntryStop;
  bool favorite;
  bool editMode;
  String job;
  String name;
  String orderStatus;
  String predictionEndDate;
  String predictionStartDate;
  String realEndDate;
  String realStartDate;
  String registerDate;
  String resource;
  String productionOrderName;
  String situation;
  String productOrderId;
  String taskStatus;
  Map<String, dynamic> roadmap;
  Map<String, dynamic> filesUrl;
  Map<String, dynamic> filesBase64Up;
  Map<String, dynamic> docsRelations;
  Map<String, dynamic> docsRelationsIds;

  OperationalModel({
    this.sId,
    this.productionQty,
    this.barcodeTypes,
    this.timeEntry,
    this.dataEntryPlay,
    this.dataEntryPause,
    this.dataEntryStop,
    this.favorite,
    this.editMode,
    this.job,
    this.name,
    this.orderStatus,
    this.predictionEndDate,
    this.predictionStartDate,
    this.realEndDate,
    this.realStartDate,
    this.registerDate,
    this.resource,
    this.productionOrderName,
    this.situation,
    this.productOrderId,
    this.taskStatus,
    this.roadmap,
    this.filesUrl,
    this.filesBase64Up,
    this.docsRelations,
    this.docsRelationsIds,
  });

  OperationalModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    productionQty = json['production_qty'];
    barcodeTypes = json['barcode_types'];
    timeEntry = json['time_entry'];
    dataEntryPlay = json['data_entry_play'];
    dataEntryPause = json['data_entry_pause'];
    dataEntryStop = json['data_entry_stop'];
    favorite = json['favorite'];
    editMode = json['edit_mode'];
    job = json['job'];
    name = json['name'];
    orderStatus = json['order_status'];
    predictionEndDate = json['prediction_end_date'];
    predictionStartDate = json['prediction_start_date'];
    realEndDate = json['real_end_date'];
    realStartDate = json['real_start_date'];
    registerDate = json['register_date'];
    resource = json['resource_id'];
    productionOrderName = json['production_order_name'];
    situation = json['situation'];
    productOrderId = json['production_order_id'];
    taskStatus = json['task_status'];
    roadmap = json['roadmap'];
    filesUrl = json['files_url'];
    filesBase64Up = json['files_base64_up'];
    docsRelations = json['docs_relations'];
    docsRelationsIds = json['docs_relations_ids'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['production_qty'] = this.productionQty;
    data['barcode_types'] = this.barcodeTypes;
    data['time_entry'] = this.timeEntry;
    data['data_entry_play'] = this.dataEntryPlay;
    data['data_entry_pause'] = this.dataEntryPause;
    data['data_entry_stop'] = this.dataEntryStop;
    data['favorite'] = this.favorite;
    data['edit_mode'] = this.editMode;
    data['job'] = this.job;
    data['name'] = this.name;
    data['order_status'] = this.orderStatus;
    data['prediction_end_date'] = this.predictionEndDate;
    data['prediction_start_date'] = this.predictionStartDate;
    data['real_end_date'] = this.realEndDate;
    data['real_start_date'] = this.realStartDate;
    data['register_date'] = this.registerDate;
    data['resource_id'] = this.resource;
    data['production_order_name'] = this.productionOrderName;
    data['situation'] = this.situation;
    data['production_order_id'] = this.productOrderId;
    data['task_status'] = this.taskStatus;
    data['roadmap'] = this.roadmap;
    data['files_url'] = this.filesUrl;
    data['files_base64_up'] = this.filesBase64Up;
    data['docs_relations'] = this.docsRelations;
    data['docs_relations_ids'] = this.docsRelationsIds;
    return data;
  }
}
