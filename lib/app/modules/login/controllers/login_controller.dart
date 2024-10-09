import 'package:get/get.dart';
import 'package:timasso_escalacao/app/routes/app_pages.dart';

class LoginController extends GetxController {
  String? login;
  String? password;
  Rx<bool> viewPassword = false.obs;

  void makeLogin() {
    Get.toNamed(Routes.homeRoute);
  }
}
