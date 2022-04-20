import 'package:easysalon_user_app/app/modules/controller/page%20controller/register_controller.dart';
import 'package:get/get.dart';

class RegisterBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterController>(() {
      return RegisterController();
    });
  }
}
