import 'package:get/get.dart';

class BaseService extends GetConnect {
  @override
  void onInit() {
    // add your local storage here to load for every request
    // var token = LocalStorage.readToken();


    //1.base_url 
    httpClient.baseUrl = "http://base_url here";
    //2.
    httpClient.defaultContentType = "application/json";
    httpClient.timeout = const Duration(seconds: 8);
    httpClient.addResponseModifier((request, response) async {
      print(response.body);
    });


    httpClient.addRequestModifier<void>((request) async {
     // add request here
     request.headers['apiKey'] = '12345678';
      return request;
    });


   httpClient.addAuthenticator<void>((request) async {
      final response = await get("http://yourapi/token");
      final token = response.body['token'];
      // Set the header
      request.headers['Authorization'] = "$token";
      return request;
    });

    //Authenticator will be called 3 times if HttpStatus is
    //HttpStatus.unauthorized
    httpClient.maxAuthRetries = 3;

    super.onInit();
  }

  
}