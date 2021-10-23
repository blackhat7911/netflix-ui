import 'package:flutter/material.dart';
import 'package:netflix_ui_clone/screens/splash_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Netflix Clone',
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
