import 'package:flutter/material.dart';
import 'package:timasso_escalacao/app/data/model/user_model.dart';

class ListUsers extends StatelessWidget {
  final List<UserModel> users;
  final Function tapFunction;
  const ListUsers({
    super.key,
    required this.users,
    required this.tapFunction,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.8,
      child: Center(
        child: ListView(
          children: users
              .map(
                (user) => Container(
                  margin: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Theme.of(context).colorScheme.primaryContainer),
                  child: ListTile(
                    title: Text("${user.id} - ${user.name}"),
                    subtitle: Text(user.email),
                    onTap: () => tapFunction(),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
