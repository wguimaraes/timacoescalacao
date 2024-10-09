import 'package:get/get.dart';

import '../controllers/edit_game_controller.dart';

class GamesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EditGameController>(
      () => EditGameController(),
    );
  }
}
