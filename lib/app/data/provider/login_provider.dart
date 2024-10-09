import 'package:get/get.dart';
import 'package:timasso_escalacao/app/data/model/login_model.dart';

class LoginProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = LoginModel.fromJson as Decoder?;
    httpClient.baseUrl = 'http//localhost:3000';
  }

  Future<Response<LoginModel>> getToken(String username, String password) {
    return get("/token?username=$username&password=$password");
  }
}
