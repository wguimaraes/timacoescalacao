import 'package:timasso_escalacao/app/data/model/user_model.dart';

class GameModel {
  int id;
  String name;
  DateTime? dateTime;
  List<UserModel> users = [];

  GameModel({
    required this.id,
    required this.name,
    required this.dateTime,
    required this.users,
  });

  static fromJson(Map<String, dynamic> json) {
    return GameModel(
      id: json['id'],
      name: json['name'],
      dateTime: DateTime.tryParse(json['dateTime']),
      users: UserModel.toList(json['users']),
    );
  }

  static toJson(GameModel model) {
    return {
      'id': model.id,
      'name': model.name,
      'dateTime': model.dateTime,
      'users': UserModel.toJsonList(model.users),
    };
  }

  static List<GameModel> toList(List<dynamic> json) {
    List<GameModel> list = [];
    for (var item in json) {
      list.add(GameModel.fromJson(item));
    }
    return list;
  }

  static GameModel fromEmpty() {
    return GameModel(
      id: 0,
      name: '',
      dateTime: null,
      users: [],
    );
  }
}
