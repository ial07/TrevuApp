import 'package:get/get.dart';
import 'package:trevu_app/routes/RouteName.dart';

import '../screens/Beranda.dart';
import '../screens/Login/Login.dart';
import '../screens/Register/Forgot_password.dart';
import '../screens/Register/Register.dart';

class RouteApp {
  static final pages = [
    GetPage(
      name: RouteName.beranda,
      page: () => Beranda(),
    ),
    GetPage(
      name: RouteName.login,
      page: () => LoginPage(),
    ),
    GetPage(
      name: RouteName.register,
      page: () => RegistrationPage(),
    ),
    GetPage(
      name: RouteName.forgot_pass,
      page: () => ForgotPasswordPage(),
    ),
  ];
}
