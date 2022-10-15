class ProductionOrdersExecutedModel {
  Map<dynamic, dynamic> orderProduction;
  String chartGanttRealSvg;

  ProductionOrdersExecutedModel({
    this.orderProduction,
    this.chartGanttRealSvg,
  });

  ProductionOrdersExecutedModel.fromJson(Map<String, dynamic> json) {
    orderProduction = json['order_production'];
    chartGanttRealSvg = json['chart_gantt_real_svg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['order_production'] = this.orderProduction;
    data['chart_gantt_real_svg'] = this.chartGanttRealSvg;
    return data;
  }
}
