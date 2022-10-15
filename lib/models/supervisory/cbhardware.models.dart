class CBHardwareModel {
  String sId;
  String axisX;
  bool favorite;
  Map<String, dynamic> docsRelations;
  Map<String, dynamic> docsRelationsIds;
  Map<dynamic, dynamic> input1NPNOrPNP;
  Map<dynamic, dynamic> input2NPNOrPNP;
  Map<dynamic, dynamic> input3NPNOrPNP;
  Map<dynamic, dynamic> input4NPNOrPNP;
  Map<dynamic, dynamic> input5NPNOrPNP;
  Map<dynamic, dynamic> input6NPNOrPNP;
  Map<dynamic, dynamic> input70To10v;
  Map<dynamic, dynamic> input80To10v;
  Map<dynamic, dynamic> input94To20Am;
  Map<dynamic, dynamic> input10RS485;
  Map<dynamic, dynamic> input11RS232;
  Map<dynamic, dynamic> input12LoadCell;
  Map<dynamic, dynamic> input13Thermocouple;
  Map<dynamic, dynamic> input14TemperatureIR;
  Map<dynamic, dynamic> input15v;
  Map<dynamic, dynamic> input16v;
  Map<dynamic, dynamic> input17v;
  Map<dynamic, dynamic> input18v;

  String installationDate;
  String name;
  bool output1;
  bool output2;
  bool output3;
  bool output4;
  bool output5;
  String periodEnd;
  String periodStart;
  bool realTime;
  String registerDate;
  String serialNumber;
  bool situation;
  List<String> axisXpt = ["segundos", "minutos", "horas"];
  Map<String, String> axisXen = {
    "segundos": "seconds",
    "minutos": "minutes",
    "horas": "hours",
  };
  List<String> sensorsNamePt = [
    "Entrada 1: NPN ou PNP 1",
    "Entrada 2: NPN ou PNP 2",
    "Entrada 3: NPN ou PNP 3",
    "Entrada 4: NPN ou PNP 4",
    "Entrada 5: NPN ou PNP 5",
    "Entrada 6: NPN ou PNP 6",
    "Entrada 7: 0 a 10V",
    "Entrada 8: 0 a 10V",
    "Entrada 9: 4 a 20mA",
    "Entrada 10: RS485",
    "Entrada 11: RS232",
    "Entrada 12: Célula de Carga",
    "Entrada 13: Termopar",
    "Entrada 14: Temperatura IR",
    "Entrada 15: Entrada virtual",
    "Entrada 16: Entrada virtual",
    "Entrada 17: Entrada virtual",
    "Entrada 18: Entrada virtual",

  ];
  Map<String, String> sensorsNameEn = {
    "Entrada 1: NPN ou PNP 1": "input1_NPN_or_PNP",
    "Entrada 2: NPN ou PNP 2": "input2_NPN_or_PNP",
    "Entrada 3: NPN ou PNP 3": "input3_NPN_or_PNP",
    "Entrada 4: NPN ou PNP 4": "input4_NPN_or_PNP",
    "Entrada 5: NPN ou PNP 5": "input5_NPN_or_PNP",
    "Entrada 6: NPN ou PNP 6": "input6_NPN_or_PNP",
    "Entrada 7: 0 a 10V": "input7_0_to_10v",
    "Entrada 8: 0 a 10V": "input8_0_to_10v",
    "Entrada 9: 4 a 20mA": "input9_4_to_20Am",
    "Entrada 10: RS485": "input10_RS485",
    "Entrada 11: RS232": "input11_RS232",
    "Entrada 12: Célula de Carga": "input12_load_cell",
    "Entrada 13: Termopar": "input13_thermocouple",
    "Entrada 14: Temperatura IR": "input14_temperature_IR",
    "Entrada 15: Entrada virtual": "input15_v",
    "Entrada 16: Entrada virtual": "input16_v",
    "Entrada 17: Entrada virtual": "input17_v",
    "Entrada 18: Entrada virtual": "input18_v",

  };

  CBHardwareModel({
    this.sId,
    this.axisX,
    this.favorite,
    this.docsRelations,
    this.docsRelationsIds,
    this.input1NPNOrPNP,
    this.input2NPNOrPNP,
    this.input3NPNOrPNP,
    this.input4NPNOrPNP,
    this.input5NPNOrPNP,
    this.input6NPNOrPNP,
    this.input70To10v,
    this.input80To10v,
    this.input94To20Am,
    this.input10RS485,
    this.input11RS232,
    this.input12LoadCell,
    this.input13Thermocouple,
    this.input14TemperatureIR,
    this.input15v,
    this.input16v,
    this.input17v,
    this.input18v,
    this.installationDate,
    this.name,
    this.output1,
    this.output2,
    this.output3,
    this.output4,
    this.output5,
    this.periodEnd,
    this.periodStart,
    this.realTime,
    this.registerDate,
    this.serialNumber,
    this.situation,
  });

  CBHardwareModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    axisX = json['axis_x'];
    favorite = json['favorite'];
    docsRelations = json['docs_relations'];
    docsRelationsIds = json['docs_relations_ids'];
    input1NPNOrPNP = json['input1_NPN_or_PNP'];
    input2NPNOrPNP = json['input2_NPN_or_PNP'];
    input3NPNOrPNP = json['input3_NPN_or_PNP'];
    input4NPNOrPNP = json['input4_NPN_or_PNP'];
    input5NPNOrPNP = json['input5_NPN_or_PNP'];
    input6NPNOrPNP = json['input6_NPN_or_PNP'];
    input70To10v = json['input7_0_to_10v'];
    input80To10v = json['input8_0_to_10v'];
    input94To20Am = json['input9_4_to_20Am'];
    input10RS485 = json['input10_RS485'];
    input11RS232 = json['input11_RS232'];
    input12LoadCell = json['input12_load_cell'];
    input13Thermocouple = json['input13_thermocouple'];
    input14TemperatureIR = json['input14_temperature_IR'];
    input15v = json['input15_v'];
    input16v = json['input16_v'];
    input17v = json['input17_v'];
    input18v = json['input18_v'];
    installationDate = json['installation_date'];
    name = json['name'];
    output1 = json['output1'];
    output2 = json['output2'];
    output3 = json['output3'];
    output4 = json['output4'];
    output5 = json['output5'];
    periodEnd = json['period_end'];
    periodStart = json['period_start'];
    realTime = json['real_time'];
    registerDate = json['register_date'];
    serialNumber = json['serial_number'];
    situation = json['situation'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['axis_x'] = this.axisX;
    data['favorite'] = this.favorite;
    data['docs_relations'] = this.docsRelations;
    data['docs_relations_ids'] = this.docsRelationsIds;
    data['input1_NPN_or_PNP'] = this.input1NPNOrPNP;
    data['input2_NPN_or_PNP'] = this.input2NPNOrPNP;
    data['input3_NPN_or_PNP'] = this.input3NPNOrPNP;
    data['input4_NPN_or_PNP'] = this.input4NPNOrPNP;
    data['input5_NPN_or_PNP'] = this.input5NPNOrPNP;
    data['input6_NPN_or_PNP'] = this.input6NPNOrPNP;
    data['input7_0_to_10v'] = this.input70To10v;
    data['input8_0_to_10v'] = this.input80To10v;
    data['input9_4_to_20Am'] = this.input94To20Am;
    data['input10_RS485'] = this.input10RS485;
    data['input11_RS232'] = this.input11RS232;
    data['input12_load_cell'] = this.input12LoadCell;
    data['input13_thermocouple'] = this.input13Thermocouple;
    data['input14_temperature_IR'] = this.input14TemperatureIR;
    data['input15_v'] = this.input15v;
    data['input16_v'] = this.input16v;
    data['input17_v'] = this.input17v;
    data['input18_v'] = this.input18v;
    data['installation_date'] = this.installationDate;
    data['name'] = this.name;
    data['output1'] = this.output1;
    data['output2'] = this.output2;
    data['output3'] = this.output3;
    data['output4'] = this.output4;
    data['output5'] = this.output5;
    data['period_end'] = this.periodEnd;
    data['period_start'] = this.periodStart;
    data['real_time'] = this.realTime;
    data['register_date'] = this.registerDate;
    data['serial_number'] = this.serialNumber;
    data['situation'] = this.situation;
    return data;
  }
}
