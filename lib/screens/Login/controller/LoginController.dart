import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var isVisible = false.obs;

  void ChangeVisible() {
    isVisible.value = !isVisible.value;
  }
}
