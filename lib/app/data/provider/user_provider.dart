import 'package:get/get_connect/http/src/http.dart';
import 'package:timasso_escalacao/app/data/model/user_model.dart';
import 'package:timasso_escalacao/app/data/provider/http_provider.dart';

class UserProvider extends HttpProvider {
  @override
  void onInit() {
    super.onInit();
    httpClient.defaultDecoder = UserModel.fromJson as Decoder?;
  }
}
