class UserLogin {
  String user;
  String password;

  UserLogin({
    this.user,
    this.password,
  });

  UserLogin.fromJson(Map<String, dynamic> json) {
    user = json['user'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user'] = this.user;
    data['password'] = this.password;
    return data;
  }
}
