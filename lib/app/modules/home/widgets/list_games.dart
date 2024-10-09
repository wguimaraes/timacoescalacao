import 'package:flutter/material.dart';
import 'package:timasso_escalacao/app/data/model/game_model.dart';

class ListGames extends StatelessWidget {
  final List games;

  final Function(GameModel game) tapFunction;

  const ListGames({super.key, required this.games, required this.tapFunction});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.8,
      child: Center(
        child: ListView(
          children: games
              .map(
                (game) => Container(
                  margin: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Theme.of(context).colorScheme.primaryContainer),
                  child: ListTile(
                    title: Text("${game.id} - ${game.name}"),
                    onTap: () => tapFunction(game),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
