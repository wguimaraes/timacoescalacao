import 'package:get/get_connect/http/src/http.dart';
import 'package:timasso_escalacao/app/data/model/game_model.dart';
import 'package:timasso_escalacao/app/data/provider/http_provider.dart';

class GameProvider extends HttpProvider {
  @override
  void onInit() {
    super.onInit();
    httpClient.defaultDecoder = GameModel.fromJson as Decoder?;
  }
}
