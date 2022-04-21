import 'package:get/get.dart';
import 'package:trevu_app/routes/RouteName.dart';
import 'package:get_storage/get_storage.dart';

class AuthController extends GetxController {
  var isAuth = false.obs;

  Map<String, String> _dataUser = {
    'email': 'admin@gmail.com',
    'pass': 'admin',
  };

  void dialogError(String title, String msg) {
    Get.defaultDialog(title: title, middleText: msg);
  }

  Future<void> autoLogin() async {
    final box = GetStorage();
    if (box.read('dataUser') != null) {
      final data = box.read("dataUser") as Map<String, dynamic>;
      login(data["email"], data["pass"], data["rememberMe"]);
    }
    ;
  }

  void login(String email, String pass, bool rememberMe) {
    if (email != "" && pass != "") {
      if (GetUtils.isEmail(email)) {
        if (email == _dataUser['email'] && pass == _dataUser['pass']) {
          if (rememberMe) {
            //simpan data ke storage
            final box = GetStorage();
            box.write(
              "dataUser",
              {
                "email": email,
                "pass": pass,
                "rememberMe": rememberMe,
              },
            );
          } else {
            //hapus data dari storage
            final box = GetStorage();
            if (box.read("dataUser") != null) {
              box.erase();
            }
          }

          // isAuth.value = true;
          Get.offNamed(RouteName.beranda);
        } else {
          dialogError(
              "Authentication Error", "Please check your email & password");
        }
      } else {
        dialogError("Error", "email not valid");
      }
    } else {
      dialogError("Login Failed", "Please insert your email & password");
    }
  }

  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();
    await GetStorage.init();
  }

  void logout(bool rememberMe) {
    final box = GetStorage();
    if (box.read("dataUser") != null) {
      box.erase();
    }
    isAuth.value = false;
  }
}
