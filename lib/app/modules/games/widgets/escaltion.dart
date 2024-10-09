import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_tournament_bracket/flutter_tournament_bracket.dart';

class Escalation extends StatelessWidget {
  final Rx game;
  const Escalation({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return Scrollable(
        axisDirection: AxisDirection.values[0],
        viewportBuilder: (context, position) => TournamentBracket(
              itemsMarginVertical: 20,
              cardHeight: 80,
              cardWidth: 150,
              card: (match) => customMatchCard(context, match),
              list: [
                Tournament(matches: [
                  TournamentMatch(
                      id: "1",
                      teamA: "Real Madrid",
                      teamB: "Barcelona",
                      scoreTeamA: "3",
                      scoreTeamB: "1"),
                  TournamentMatch(
                      id: "2",
                      teamA: "Chelsea",
                      teamB: "Liverpool",
                      scoreTeamA: "0",
                      scoreTeamB: "1"),
                  TournamentMatch(
                      id: "3",
                      teamA: "Juventus",
                      teamB: "Paris Saint-Germain",
                      scoreTeamA: "0",
                      scoreTeamB: "2"),
                  TournamentMatch(
                      id: "4",
                      teamA: "Manchester City",
                      teamB: "Inter Milan",
                      scoreTeamA: "4",
                      scoreTeamB: "2"),
                ]),
                Tournament(matches: [
                  TournamentMatch(
                      id: "1",
                      teamA: "AC Milan",
                      teamB: "Atletico Madrid",
                      scoreTeamA: "4",
                      scoreTeamB: "0"),
                  TournamentMatch(
                      id: "2",
                      teamA: "Borussia Dortmund",
                      teamB: "Tottenham Hotspur",
                      scoreTeamA: "2",
                      scoreTeamB: "1"),
                ]),
                Tournament(matches: [
                  TournamentMatch(
                      id: "1",
                      teamA: "Ajax",
                      teamB: "Sevilla",
                      scoreTeamA: "4",
                      scoreTeamB: "3"),
                ]),
              ],
            ));
  }

  /// Custom widget to display match details.
  Container customMatchCard(BuildContext context, TournamentMatch item) {
    TextStyle? textStyle = Theme.of(context).textTheme.bodySmall;
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(12)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  item.teamA ?? "No Info",
                  style: textStyle,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  item.teamB ?? "No Info",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: textStyle,
                )
              ],
            ),
          ),
          const VerticalDivider(
            color: Colors.black,
          ),
          const SizedBox(
            width: 5,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                item.scoreTeamA ?? "",
                style: textStyle,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                item.scoreTeamB ?? "",
                style: textStyle,
              )
            ],
          ),
          const SizedBox(
            width: 5,
          )
        ],
      ),
    );
  }
}
