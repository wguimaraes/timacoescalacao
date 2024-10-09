import 'package:get/get.dart';
import 'package:timasso_escalacao/app/modules/user/controllers/edit_user_controller.dart';

class EditUserBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EditUserController>(() => EditUserController());
  }
}
