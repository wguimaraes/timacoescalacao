import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:timasso_escalacao/app/data/model/user_model.dart';

class FormUser extends StatelessWidget {
  final Rx user;
  final Function(UserModel user) onSubmit;
  const FormUser({super.key, required this.user, required this.onSubmit});
  @override
  Widget build(BuildContext context) {
    return Form(
        child: ListView(
      children: [
        TextFormField(
          controller: TextEditingController(text: user.value.name),
        ),
        TextFormField(
          controller: TextEditingController(text: user.value.email),
          keyboardType: TextInputType.emailAddress,
        ),
        TextFormField(
          controller: TextEditingController(text: user.value.login),
          keyboardType: TextInputType.text,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.max,
          children: [
            Obx(() => Checkbox(
                value: user.value.admin,
                checkColor: Theme.of(context).colorScheme.onSurface,
                onChanged: (value) {
                  user.update((user) => user.admin = value!);
                  debugPrint(user.value.admin.toString());
                })),
            const Text("Administrador")
          ],
        ),
        ElevatedButton(
          onPressed: () {
            onSubmit(user.value);
            Get.defaultDialog(
                title: "Atualizado!", middleText: "Jogador atualizado");
          },
          child: const Text("Salvar"),
        )
      ],
    ));
  }
}
