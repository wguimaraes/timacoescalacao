import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:timasso_escalacao/app/modules/user/controllers/list_users_controllers.dart';
import 'package:timasso_escalacao/app/modules/user/widgets/list_users.dart';

class ListUsersView extends GetView<ListUsersController> {
  const ListUsersView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListUsers(users: controller.users, tapFunction: controller.editUser);
  }
}
