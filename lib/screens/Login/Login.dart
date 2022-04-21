import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:get/get.dart';

import 'package:trevu_app/controllers/authController.dart';
import '../../routes/RouteName.dart';
import '../../common/myColors.dart';
import '../../common/theme_helper.dart';
import '../../screens/Header_Widget.dart';
import '../../controllers/LoginController.dart';

class LoginPage extends StatelessWidget {
  Key _formKey = GlobalKey<FormState>();
  final LoginC = Get.find<LoginController>();
  final authC = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    double _headerHeight = MediaQuery.of(context).size.height * 0.25;
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            height: _headerHeight,
            child: HeaderWidget(_headerHeight, true, Icons.login_sharp),
          ),
          SafeArea(
              child: Container(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Column(
              children: [
                Text(
                  "Trevu",
                  style: TextStyle(fontSize: 50, fontFamily: 'geomanistBold'),
                ),
                Text(
                  "Signin into your account",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 30,
                ),
                Form(
                    key: _formKey,
                    child: Padding(
                      padding: const EdgeInsets.all(4),
                      child: Column(
                        children: [
                          TextField(
                            controller: LoginC.email,
                            decoration: ThemeHelper().textInputDecoration(
                              'E-mail',
                              'Enter your email',
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Flexible(
                                flex: 7,
                                child: Obx(
                                  () => TextField(
                                    controller: LoginC.pass,
                                    obscureText: !LoginC.isVisible.value,
                                    decoration:
                                        ThemeHelper().textInputDecoration(
                                      'Password',
                                      'Enter your password',
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                child: Obx(
                                  () => IconButton(
                                      onPressed: () {
                                        LoginC.isVisible.toggle();
                                      },
                                      icon: LoginC.isVisible.value
                                          ? Icon(Icons.visibility)
                                          : Icon(Icons.visibility_off)),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Obx(
                                () => Checkbox(
                                    value: LoginC.rememberMe.value,
                                    onChanged: (_) {
                                      LoginC.rememberMe.toggle();
                                    }),
                              ),
                              Text(
                                "Remember Me.",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                          // SizedBox(height: 5),
                          Container(
                              margin: EdgeInsets.fromLTRB(10, 0, 10, 20),
                              alignment: Alignment.topRight,
                              child: GestureDetector(
                                onTap: () {
                                  Get.toNamed(RouteName.forgot_pass);
                                },
                                child: Text(
                                  "Forgot your password?",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              )),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            decoration:
                                ThemeHelper().buttonBoxDecoration(context),
                            child: ElevatedButton(
                              style: ThemeHelper().buttonStyle(),
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                                child: Text(
                                  "Sign In".toUpperCase(),
                                  style: TextStyle(
                                      // fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                              onPressed: () {
                                authC.login(LoginC.email.text, LoginC.pass.text,
                                    LoginC.rememberMe.value);
                              },
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
                            // child: Text('Don\'t have an account? Create first'),
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(text: "Don\'t have an account? "),
                                  TextSpan(
                                      text: "Create",
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          Get.toNamed(RouteName.register);
                                        },
                                      style: TextStyle(
                                          color: MyColors.blueAccent,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 20.0),
                          Text(
                            "Or Sign in using social media",
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(height: 25.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                child: FaIcon(
                                  FontAwesomeIcons.google,
                                  size: 35,
                                  color: HexColor("#EC2D2F"),
                                ),
                                onTap: () {
                                  // setState(() {
                                  //   showDialog(
                                  //     context: context,
                                  //     builder: (BuildContext context) {
                                  //       return ThemeHelper().alartDialog(
                                  //           "Google Plus",
                                  //           "You tap on GooglePlus social icon.",
                                  //           context);
                                  //     },
                                  //   );
                                  // });
                                },
                              ),
                              SizedBox(
                                width: 30.0,
                              ),
                              GestureDetector(
                                child: Container(
                                  padding: EdgeInsets.all(0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    border: Border.all(
                                        width: 5, color: HexColor("#40ABF0")),
                                    color: HexColor("#40ABF0"),
                                  ),
                                  child: FaIcon(
                                    FontAwesomeIcons.twitter,
                                    size: 23,
                                    color: HexColor("#FFFFFF"),
                                  ),
                                ),
                                onTap: () {
                                  // setState(() {
                                  //   showDialog(
                                  //     context: context,
                                  //     builder: (BuildContext context) {
                                  //       return ThemeHelper().alartDialog(
                                  //           "Twitter",
                                  //           "You tap on Twitter social icon.",
                                  //           context);
                                  //     },
                                  //   );
                                  // });
                                },
                              ),
                              SizedBox(
                                width: 30.0,
                              ),
                              GestureDetector(
                                child: FaIcon(
                                  FontAwesomeIcons.facebook,
                                  size: 35,
                                  color: HexColor("#3E529C"),
                                ),
                                onTap: () {
                                  // setState(() {
                                  //   showDialog(
                                  //     context: context,
                                  //     builder: (BuildContext context) {
                                  //       return ThemeHelper().alartDialog(
                                  //           "Facebook",
                                  //           "You tap on Facebook social icon.",
                                  //           context);
                                  //     },
                                  //   );
                                  // });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ))
              ],
            ),
          ))
        ],
      )),
    );
  }
}
