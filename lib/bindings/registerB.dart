import 'package:get/get.dart';
import 'package:trevu_app/controllers/RegisterController.dart';

class RegisterB implements Bindings {
  @override
  void dependencies() {
    Get.put(RegisterController());
  }
}
