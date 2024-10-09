import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:timasso_escalacao/app/modules/games/widgets/edit_game_app_bar.dart';
import 'package:timasso_escalacao/app/modules/games/widgets/escaltion.dart';
import 'package:timasso_escalacao/app/modules/games/widgets/form_game.dart';

import '../controllers/edit_game_controller.dart';

class EditGameView extends GetView<EditGameController> {
  const EditGameView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: EditGameAppBar.build(
              context,
              "Jogo ${controller.game.value.id} - ${controller.game.value.name}",
              controller.tabs,
              controller.tabController),
          body: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              controller: controller.tabController,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.8,
                  child: FormGame(
                      game: controller.game, onSubmit: controller.save),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.8,
                  child: Escalation(game: controller.game),
                ),
              ])),
    );
  }
}
