import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  var checkedValue = false.obs;
  var checkboxValue = false.obs;

  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController confirmPass = TextEditingController();

  void changeChecked() {
    checkedValue.value = !checkedValue.value;
  }

  void changeCheckbox() {
    checkboxValue.value = !checkboxValue.value;
  }
}
