import 'package:get/get.dart';

import '../../services/api_services.dart';

class PersonApi extends ApiBaseService {
  /// for get requests.
  Future<Response> getUserData() async {
    var res = await get("person_url");
    print(res);
    return res;
  }

  /// for post requests.
  Future<Response> postUserData(dynamic body) async {
    var res = await post("person_url", body);

    print(res);
    return res;
  }

  /// for put requests.
  Future<Response> putUserData(dynamic body) async {
    var res = await put("person_url", body);

    print(res);
    return res;
  }

  /// for delete requests.
  Future<Response> deleteUserData() async {
    var res = await delete("person_url");
    print(res);
    return res;
  }
}
