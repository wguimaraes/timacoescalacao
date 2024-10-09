class LoginModel {
  String? token;

  LoginModel({this.token});

  static LoginModel fromJson(Map<String, dynamic> json) {
    return LoginModel(token: json['token']);
  }

  static Map<String, dynamic> toJson(LoginModel model) {
    return {'token': model.token};
  }
}
