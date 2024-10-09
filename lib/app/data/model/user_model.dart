class UserModel {
  int id;
  String name, email, login;
  bool admin;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.login,
    required this.admin,
  });

  static fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      name: json['name'],
      email: json.containsKey("email") ? json['email'] : "",
      login: json.containsKey("login") ? json['login'] : "",
      admin: json.containsKey("admin") ? json['admin'] : false,
    );
  }

  static toJson(UserModel model) {
    return {
      'id': model.id,
      'name': model.name,
      'email': model.email,
      'login': model.login,
      'admin': model.admin,
    };
  }

  static toJsonList(List<UserModel> list) {
    List<Map<String, dynamic>> jsonList = [];
    for (var item in list) {
      jsonList.add(toJson(item));
    }
    return jsonList;
  }

  static List<UserModel> toList(List<dynamic> json) {
    List<UserModel> list = [];
    for (var item in json) {
      list.add(UserModel.fromJson(item));
    }
    return list;
  }

  static UserModel fromEmpty() {
    return UserModel(
      id: 0,
      name: '',
      email: '',
      login: '',
      admin: false,
    );
  }
}
