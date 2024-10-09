import 'package:get/get.dart';
import 'package:timasso_escalacao/app/data/model/user_model.dart';
import 'package:timasso_escalacao/mocks/user_mock.dart';

class EditUserController extends GetxController {
  Rx<UserModel> user = UserModel.fromEmpty().obs;

  @override
  void onInit() {
    user.value = Get.arguments;
    getUser(user.value.id);
    super.onInit();
  }

  void getUser(int? id) {
    if (id != null && id != 0) {
      List<dynamic> json = UsersMock.getUsersMock();
      user.update((user) => user = UserModel.fromJson(
          json.firstWhere((element) => element['id'] == id)));
    }
  }

  UserModel save(UserModel user) {
    this.user.value = user;
    return this.user.value;
  }
}
