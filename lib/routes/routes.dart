

import 'package:easysalon_user_app/app/modules/binding/login_binding.dart';
import 'package:easysalon_user_app/app/modules/binding/register_binding.dart';
import 'package:easysalon_user_app/app/modules/page/login_page.dart';
import 'package:easysalon_user_app/app/modules/page/register_page.dart';
import 'package:easysalon_user_app/routes/pages.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppPages {
  static final pages = [
    GetPage(name: Routes.login, page: () => const LoginPage(), binding: LoginBinding()),
    GetPage(name: Routes.register, page: () =>  const RegisterPage(), binding: RegisterBinding()),
  ];
}
