

import 'package:easysalon_user_app/app/modules/controller/page%20controller/login_controller.dart';
import 'package:get/get.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() {
      return LoginController();
    });

  }
}