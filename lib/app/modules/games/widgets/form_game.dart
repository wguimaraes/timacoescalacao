import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:timasso_escalacao/app/data/model/game_model.dart';
import 'package:timasso_escalacao/app/widgets/item_list.dart';

class FormGame extends StatelessWidget {
  final Rx game;
  final Function(GameModel game) onSubmit;
  const FormGame({super.key, required this.game, required this.onSubmit});
  @override
  Widget build(BuildContext context) {
    final DateFormat format = DateFormat.yMd().add_jm();
    return Form(
        child: Column(children: [
      Flexible(
        flex: 1,
        child: ListView(children: [
          TextFormField(
            controller: TextEditingController(text: game.value.name),
          ),
          TextFormField(
            controller:
                TextEditingController(text: format.format(game.value.dateTime)),
            keyboardType: TextInputType.datetime,
          ),
        ]),
      ),
      Text("Jogadores"),
      Flexible(
        flex: 3,
        child: ListView(
          children: List<Widget>.from(game.value.users.map((user) =>
              ItemList(tapFunction: () {}, title: "${user.name}") as Widget)),
        ),
      ),
    ]));
  }
}
