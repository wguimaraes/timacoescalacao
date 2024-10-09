import 'package:get/get.dart';
import 'package:timasso_escalacao/app/modules/games/views/edit_game_view.dart';
import 'package:timasso_escalacao/app/modules/home/bindings/home_binding.dart';
import 'package:timasso_escalacao/app/modules/home/views/home_view.dart';
import 'package:timasso_escalacao/app/modules/login/bindings/login_binding.dart';
import 'package:timasso_escalacao/app/modules/login/views/login_view.dart';
import 'package:timasso_escalacao/app/modules/user/bindings/edit_user_binding.dart';
import 'package:timasso_escalacao/app/modules/user/views/edit_user_view.dart';

import '../modules/games/bindings/games_binding.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.loiginRoute;

  static final routes = [
    GetPage(
      name: _Paths.editGame,
      page: () => const EditGameView(),
      binding: GamesBinding(),
    ),
    GetPage(
      name: Routes.loiginRoute,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.homeRoute,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.editUser,
      page: () => const EditUserView(),
      binding: EditUserBinding(),
    ),
  ];
}
