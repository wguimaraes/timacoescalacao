import 'package:flutter/material.dart';
import 'package:timasso_escalacao/app/data/model/user_model.dart';
import 'package:timasso_escalacao/app/widgets/item_list.dart';

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
                (user) => ItemList(
                    title: "${user.id} - ${user.name}",
                    subtitle: user.email,
                    tapFunction: tapFunction),
              )
              .toList(),
        ),
      ),
    );
  }
}
