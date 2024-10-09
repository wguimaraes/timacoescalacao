import 'package:get/get.dart';
import 'package:timasso_escalacao/app/data/model/user_model.dart';
import 'package:timasso_escalacao/app/routes/app_pages.dart';
import 'package:timasso_escalacao/mocks/user_mock.dart';

class ListUsersController extends GetxController {
  List<UserModel> users = <UserModel>[];

  void getUsers() async {
    List<dynamic> json = UsersMock.getUsersMock();
    users = UserModel.toList(json);
    update();
  }

  @override
  void onInit() {
    super.onInit();
    getUsers();
  }

  void addUser() {}

  void editUser(UserModel user) {
    Get.toNamed(Routes.editUser, arguments: user);
  }
}
