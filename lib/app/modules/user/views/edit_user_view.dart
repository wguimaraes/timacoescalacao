import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:timasso_escalacao/app/modules/user/controllers/edit_user_controller.dart';
import 'package:timasso_escalacao/app/modules/user/widgets/form_user.dart';
import 'package:timasso_escalacao/app/widgets/app_bar.dart';

class EditUserView extends GetView<EditUserController> {
  const EditUserView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(customTitle: "Editar jogador"),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FormUser(
            user: controller.user,
            onSubmit: controller.save,
          ),
        ),
      ),
    );
  }
}
