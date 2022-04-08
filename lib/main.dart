import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:trevu_app/screens/Beranda.dart';
import 'package:trevu_app/screens/SplashScrenn.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Trevu",
      theme: ThemeData(
        fontFamily: 'geomanistRegular',
        appBarTheme: AppBarTheme(backgroundColor: Colors.transparent),
      ),
      home: SplashScreen(),
    );
  }
}
