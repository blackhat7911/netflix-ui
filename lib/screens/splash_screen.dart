import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netflix_ui_clone/screens/auth_screens/login_screen.dart';
import 'package:netflix_ui_clone/utils/constants/colors.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () => Get.to(LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: blackColor,
        body: Container(
          width: size.width,
          height: size.height,
          alignment: Alignment.center,
          child: Container(
            width: size.width * 0.5,
            height: size.width * 0.4,
            child: Column(
              children: [
                Container(
                  width: size.width * 0.8,
                  child: Image(
                    image: AssetImage(
                      "assets/logo/Netflix_Logo_RGB.png",
                    ),
                  ),
                ),
                SizedBox(height: 32),
                CircularProgressIndicator(
                  color: redColor,
                  strokeWidth: 1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
