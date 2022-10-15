class ProductionOrdersModel {
  String sId;
  String name;
  Map<String, dynamic> mapPriority;
  // Map<String, dynamic> docsRelations;
  bool favorite;
  String startDate;
  String endDate;
  Map<String, dynamic> legendJob;
  Map<String, dynamic> legendResource;
  // double makespan;
  // Map<String, dynamic> makespans;
  // Map<String, dynamic> matrix;
  // Map<String, dynamic> numberOfUnits;
  double productionTime;
  String registerDate;
  bool schedulingOptimize;
  String schedulingSvg;
  bool sent;
  bool started;
  Map<String, dynamic> information;
  Map<String, dynamic> legendNames;
  Map<String, dynamic> summary;
  String orderStatus;
  bool situation;
  Map<String, dynamic> filesUrl;
  Map<String, dynamic> filesBase64Up;
  Map<String, dynamic> docsRelations;
  Map<String, dynamic> docsRelationsIds;

  ProductionOrdersModel({
    this.sId,
    this.name,
    this.mapPriority,
    // this.docsRelations,
    this.favorite,
    this.startDate,
    this.endDate,
    this.legendJob,
    this.legendResource,
    // this.makespan,
    // this.makespans,
    // this.matrix,
    // this.numberOfUnits,
    this.productionTime,
    this.registerDate,
    this.schedulingOptimize,
    this.schedulingSvg,
    this.sent,
    this.situation,
    this.started,
    this.information,
    this.legendNames,
    this.summary,
    this.orderStatus,
    this.filesUrl,
    this.filesBase64Up,
    this.docsRelations,
    this.docsRelationsIds,
  });

  ProductionOrdersModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    mapPriority = json['map_priority'];
    // docsRelations = json['docs_relations'];
    favorite = json['favorite'];
    startDate = json['start_date'];
    endDate = json['end_date'];
    legendJob = json['legend_job'];
    legendResource = json['legend_resource'];
    // makespan = json['makespan'];
    // makespans = json['makespans'];
    // matrix = json['matrix'];
    // numberOfUnits = json['number_of_units'];
    productionTime = json['production_time'];
    registerDate = json['register_date'];
    schedulingOptimize = json['scheduling_optimize'];
    schedulingSvg = json['chart_gantt_scheduling_svg'];
    sent = json['sent'];
    situation = json['situation'];
    started = json['started'];
    information = json['information'];
    legendNames = json['legend_names'];
    summary = json['summary'];
    orderStatus = json['order_status'];
    filesUrl = json['files_url'];
    filesBase64Up = json['files_base64_up'];
    docsRelations = json['docs_relations'];
    docsRelationsIds = json['docs_relations_ids'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['map_priority'] = this.mapPriority;
    // data['docs_relations'] = this.docsRelations;
    data['favorite'] = this.favorite;
    data['start_date'] = this.startDate;
    data['end_date'] = this.endDate;
    data['legend_job'] = this.legendJob;
    data['legend_resource'] = this.legendResource;
    // data['makespan'] = this.makespan;
    // data['makespans'] = this.makespans;
    // data['matrix'] = this.matrix;
    // data['number_of_units'] = this.numberOfUnits;
    data['production_time'] = this.productionTime;
    data['register_date'] = this.registerDate;
    data['scheduling_optimize'] = this.schedulingOptimize;
    data['chart_gantt_scheduling_svg'] = this.schedulingSvg;
    data['sent'] = this.sent;
    data['situation'] = this.situation;
    data['started'] = this.started;
    data['information'] = this.information;
    data['legend_names'] = this.legendNames;
    data['summary'] = this.summary;
    data['order_status'] = this.orderStatus;
    data['files_url'] = this.filesUrl;
    data['files_base64_up'] = this.filesBase64Up;
    data['docs_relations'] = this.docsRelations;
    data['docs_relations_ids'] = this.docsRelationsIds;
    return data;
  }
}
