import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'package:trevu_app/controllers/authController.dart';
import 'package:trevu_app/routes/Routes.dart';
import 'package:trevu_app/screens/Beranda.dart';

import './screens/SplashScrenn.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final authC = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: authC.autoLogin(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            getPages: RouteApp.pages,
            title: "Trevu",
            theme: ThemeData(
              fontFamily: 'geomanistRegular',
              appBarTheme: AppBarTheme(backgroundColor: Colors.transparent),
            ),
            // home: authCon.isAuth.isTrue ? Beranda() : SplashScreen(),
            home: SplashScreen(),
          );
        }
        return MaterialApp(
          home: Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          ),
        );
      },
    );
  }
}
