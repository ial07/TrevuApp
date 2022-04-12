import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  var checkedValue = false.obs;
  var checkboxValue = false.obs;
  final TextEditingController _pass = TextEditingController();
  final TextEditingController _confirmPass = TextEditingController();

  void changeChecked() {
    checkedValue.value = !checkedValue.value;
  }

  void changeCheckbox() {
    checkboxValue.value = !checkboxValue.value;
  }
}
