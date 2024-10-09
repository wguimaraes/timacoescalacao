import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:timasso_escalacao/app/data/model/game_model.dart';
import 'package:timasso_escalacao/mocks/game_mock.dart';

class EditGameController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<GameModel> game = GameModel.fromEmpty().obs;

  late TabController tabController;

  RxList<Tab> tabs = <Tab>[
    const Tab(
      text: "Jogadores",
    ),
    const Tab(
      text: "Chave",
    )
  ].obs;

  @override
  void onInit() {
    tabController = TabController(length: tabs.length, vsync: this);
    game.value = Get.arguments;
    getGame(game.value.id);
    super.onInit();
  }

  void getGame(int? id) {
    if (id != null && id != 0) {
      List<dynamic> json = GamesMock.getGamesMock();
      game.update((game) => game = GameModel.fromJson(
          json.firstWhere((element) => element['id'] == id)));
    }
  }

  void save(GameModel model) {
    game.update((game) => game = model);
  }
}
