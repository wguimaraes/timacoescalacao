import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:timasso_escalacao/app/modules/home/controllers/home_controller.dart';

class HomeAppBar extends AppBar {
  HomeAppBar({super.key});
  final HomeController homeController = Get.find();

  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      title: const Text("Timasso Escalação"),
      bottom: TabBar(
        controller: homeController.tabController,
        tabs: homeController.tabs,
      ),
    );
  }
}
