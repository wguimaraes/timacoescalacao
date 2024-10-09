import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:timasso_escalacao/app/data/model/game_model.dart';
import 'package:timasso_escalacao/app/data/model/user_model.dart';
import 'package:timasso_escalacao/app/routes/app_pages.dart';
import 'package:timasso_escalacao/mocks/game_mock.dart';
import 'package:timasso_escalacao/mocks/user_mock.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController tabController;

  RxList<Tab> tabs = <Tab>[
    const Tab(
      icon: Icon(Icons.sports_volleyball),
      text: "Partidas",
    ),
    const Tab(
      icon: Icon(Icons.sports_handball),
      text: "Jogadores",
    )
  ].obs;

  List<UserModel> users = <UserModel>[];
  List<GameModel> games = <GameModel>[];

  void getUsers() async {
    List<dynamic> json = UsersMock.getUsersMock();
    users = UserModel.toList(json);
    update();
  }

  void getGames() async {
    List<dynamic> json = GamesMock.getGamesMock();
    games = GameModel.toList(json);
    update();
  }

  @override
  void onInit() {
    tabController = TabController(length: tabs.length, vsync: this);
    getGames();
    super.onInit();
  }

  void addUser() {}

  void editUser(UserModel user) {
    Get.toNamed(Routes.editUser, arguments: user);
  }

  void editGame(GameModel game) {
    Get.toNamed(Routes.editGame, arguments: game);
  }
}
