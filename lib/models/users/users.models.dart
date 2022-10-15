class UsersModel {
  String sId;
  String userName;
  String password;
  bool changePassword;
  String collectionName;
  String email;
  bool favorite;
  bool situation;
  String name;
  String positionCompany;
  int positionCompanyId;
  int positionCompanyPassword;
  String registerDate;
  String userType;
  List<dynamic> theme = ['Moderna', 'Light', 'Outline'];
  Map<String, dynamic> personalData;
  Map<String, dynamic> barcodeTypes;
  Map<String, dynamic> filesUrl;
  Map<String, dynamic> filesBase64Up;

  // address
  String cep;
  String number;
  String complement;
  String street;
  String district;
  String city;
  String state;
  String country;

  UsersModel({
    this.sId,
    this.userName,
    this.password,
    this.changePassword,
    this.collectionName,
    this.email,
    this.favorite,
    this.situation,
    this.name,
    this.positionCompany,
    this.positionCompanyId,
    this.positionCompanyPassword,
    this.registerDate,
    this.userType,
    this.theme,
    this.barcodeTypes,
    this.personalData,
    this.filesUrl,
    this.filesBase64Up,
  });

  UsersModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    userName = json['user_name'];
    password = json['password'];
    changePassword = json['change_password'];
    collectionName = json['collection_name'];
    email = json['email'];
    favorite = json['favorite'];
    situation = json['situation'];
    name = json['name'];
    positionCompany = json['position_company'];
    positionCompanyId = json['position_company_id'];
    positionCompanyPassword = json['position_company_password'];
    registerDate = json['register_date'];
    userType = json['user_type'];
    theme = json['theme'];
    personalData = json['personal_data'];
    barcodeTypes = json['barcode_types'];
    filesUrl = json['files_url'];
    filesBase64Up = json['files_base64_up'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['user_name'] = this.userName;
    data['password'] = this.password;
    data['change_password'] = this.changePassword;
    data['collection_name'] = this.collectionName;
    data['email'] = this.email;
    data['favorite'] = this.favorite;
    data['situation'] = this.situation;
    data['name'] = this.name;
    data['position_company'] = this.positionCompany;
    data['position_company_id'] = this.positionCompanyId;
    data['position_company_password'] = this.positionCompanyPassword;
    data['register_date'] = this.registerDate;
    data['user_type'] = this.userType;
    data['theme'] = this.theme;
    data['personal_data'] = personalData;
    data['barcode_types'] = this.barcodeTypes;
    data['files_url'] = this.filesUrl;
    data['files_base64_up'] = this.filesBase64Up;
    return data;
  }
}

Map x = {
  'access': {
    'menus_pt': ['Dependências', 'Padrões', 'Agendamentos', 'Supervisório', 'Controle Estatístico', 'Indicadores', 'Operacional', 'Execução'],
    'menus_en': ['inventory', 'patterns', 'schedule', 'supervisory', 'statisticalControl', 'indicators', 'operational', 'execution'],
    'apps_control': {
      'inventory': {
        'access': true,
        'apps_en': ['sectors', 'products', 'resources', 'equipments', 'devices', 'sensors', 'actuators', 'transports', 'users'],
        'apps_pt': ['sectors', 'products', 'resources', 'equipments', 'devices', 'sensors', 'actuators', 'transports', 'users'],
        'sectors': {
          'access': true,
          'add': true,
          'edit': true,
          'download': true,
          'delete': true,
        },
        'products': {
          'access': true,
          'add': true,
          'edit': true,
          'download': true,
          'delete': true,
        },
        'resources': {
          'access': true,
          'add': true,
          'edit': true,
          'download': true,
          'delete': true,
        },
        'equipments': {
          'access': true,
          'add': true,
          'edit': true,
          'download': true,
          'delete': true,
        },
        'devices': {
          'access': true,
          'add': true,
          'edit': true,
          'download': true,
          'delete': true,
        },
        'sensors': {
          'access': true,
          'add': true,
          'edit': true,
          'download': true,
          'delete': true,
        },
        'actuators': {
          'access': true,
          'add': true,
          'edit': true,
          'download': true,
          'delete': true,
        },
        'transports': {
          'access': true,
          'add': true,
          'edit': true,
          'download': true,
          'delete': true,
        },
        'users': {
          'access': true,
          'add': true,
          'edit': true,
          'download': true,
          'delete': true,
        }
      },
      'patterns': {},
      'schedule': {},
      'supervisory': {},
      'statisticalControl': {},
      'indicators': {},
      'operational': {},
      'execution': {},
    }
  }
};
