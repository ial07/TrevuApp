import 'package:get/get.dart';

class RegisterController extends GetxController {
  var checkedValue = false.obs;
  var checkboxValue = false.obs;

  void changeChecked() {
    checkedValue.value = !checkedValue.value;
  }

  void changeCheckbox() {
    checkboxValue.value = !checkboxValue.value;
  }
}
