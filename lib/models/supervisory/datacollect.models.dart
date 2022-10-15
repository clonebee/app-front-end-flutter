class DataCollect {
  String sId;
  String serialNumber;
  Map<String, dynamic> input1NPNOrPNP;
  Map<String, dynamic> input2NPNOrPNP;
  Map<String, dynamic> input3NPNOrPNP;
  Map<String, dynamic> input4NPNOrPNP;
  Map<String, dynamic> input5NPNOrPNP;
  Map<String, dynamic> input6NPNOrPNP;
  Map<String, dynamic> input70To10v;
  Map<String, dynamic> input80To10v;
  Map<String, dynamic> input94To20Am;
  Map<String, dynamic> input10RS485;
  Map<String, dynamic> input11RS232;
  Map<String, dynamic> input12LoadCell;
  Map<String, dynamic> input13Thermocouple;
  Map<String, dynamic> input14TemperatureIR;

  DataCollect({
    this.sId,
    this.serialNumber,
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
  });

  DataCollect.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    serialNumber = json['serial_number'];
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
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['serial_number'] = this.serialNumber;
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
    return data;
  }
}