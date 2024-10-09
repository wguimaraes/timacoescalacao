import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:timasso_escalacao/app/modules/login/controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
                flex: 1,
                child: Image.asset(
                  "assets/images/logo.png",
                  width: 250,
                )),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(50),
                child: Form(
                  child: ListView(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                            label: Text("Login"),
                            hintText: "Digite seu login ou e-mail"),
                        textInputAction: TextInputAction.next,
                      ),
                      Obx(
                        () => TextFormField(
                          decoration: InputDecoration(
                            label: const Text("Senha"),
                            hintText: "Digite sua senha",
                            suffixIcon: IconButton(
                              onPressed: () {
                                controller.viewPassword.value =
                                    !controller.viewPassword.value;
                                debugPrint(
                                    controller.viewPassword.value.toString());
                              },
                              icon: const Icon(Icons.visibility),
                            ),
                          ),
                          obscureText: !controller.viewPassword.value,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                        child: ElevatedButton(
                            onPressed: controller.makeLogin,
                            child: const Text("Login")),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
