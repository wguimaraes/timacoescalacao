import 'package:get/get.dart';
import 'package:get/get_connect/http/src/request/request.dart';

class HttpProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = 'http//localhost:3000';
    httpClient.addAuthenticator((Request request) async {
      final response = await get("/token");
      final token = response.body['token'];
      request.headers['Authorization'] = "$token";
      return request;
    });
  }
}
