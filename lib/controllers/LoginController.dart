import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  var isVisible = false.obs;
  var rememberMe = false.obs;

  late TextEditingController email;
  late TextEditingController pass;

  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();
    email = TextEditingController();
    pass = TextEditingController();
    await GetStorage.init();
    final box = GetStorage();

    if (box.read("dataUser") != null) {
      final data = box.read("dataUser") as Map<String, dynamic>;
      email.text = data["email"];
      pass.text = data["pass"];
      rememberMe.value = data["rememberMe"];
    }
  }

  @override
  void onClose() {
    email.dispose();
    pass.dispose();

    super.onClose();
  }
}
