import 'package:get/get.dart';
import 'package:timasso_escalacao/app/modules/login/controllers/login_controller.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
  }
}
