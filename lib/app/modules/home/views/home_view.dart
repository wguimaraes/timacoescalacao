import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:timasso_escalacao/app/modules/home/controllers/home_controller.dart';
import 'package:timasso_escalacao/app/modules/home/widgets/home_app_bar.dart';
import 'package:timasso_escalacao/app/modules/home/widgets/list_games.dart';
import 'package:timasso_escalacao/app/modules/home/widgets/list_users.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: HomeAppBar(),
        body: TabBarView(
          controller: controller.tabController,
          children: [
            ListGames(
                games: controller.games, tapFunction: controller.editGame),
            ListUsers(users: controller.users, tapFunction: controller.editUser)
          ],
        ),
      ),
    );
  }
}
