import 'package:get/get.dart';
import 'package:trevu_app/controllers/LoginController.dart';
import 'package:trevu_app/controllers/authController.dart';

class LoginB implements Bindings {
  @override
  void dependencies() {
    Get.put(LoginController());
    Get.put(AuthController());
  }
}
