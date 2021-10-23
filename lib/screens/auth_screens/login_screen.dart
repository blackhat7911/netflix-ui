import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netflix_ui_clone/screens/home_screen.dart';
import 'package:netflix_ui_clone/utils/constants/colors.dart';
import 'package:netflix_ui_clone/widgets/custom_button.dart';
import 'package:netflix_ui_clone/widgets/custom_inputfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: blackColor,
        body: Container(
          width: size.width,
          height: size.height,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: size.width * 0.6,
                  height: size.height * 0.4,
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "assets/logo/Netflix_Symbol_RGB.png",
                    ),
                  ),
                ),
                // SizedBox(height: 20),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: "Welcome\n",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.6,
                      ),
                      children: [
                        TextSpan(
                          text: "Ready to Watch",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0,
                          ),
                        ),
                      ]),
                ),
                SizedBox(height: 30),
                CustomInputField(hintText: "Email address"),
                SizedBox(height: 10),
                CustomInputField(
                  hintText: "Password",
                  isPassword: true,
                ),
                SizedBox(height: 20),
                CustomChildButton(
                  child: Text(
                    "Forgot password?",
                    style: TextStyle(
                      color: Color(0xffbfbfbf),
                      fontSize: 16,
                    ),
                  ),
                  onPressed: () {},
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Get.to(HomeScreen());
                  },
                  child: Container(
                    width: size.width * 0.8,
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: redColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                CustomChildButton(
                  child: RichText(
                    text: TextSpan(
                        text: "Don't have an account? ",
                        style: TextStyle(
                          color: Color(0xffbfbfbf),
                          fontSize: 16,
                        ),
                        children: [
                          TextSpan(
                            text: "Sign Up",
                            style: TextStyle(
                              color: redColor,
                              fontSize: 16,
                            ),
                          ),
                        ]),
                  ),
                  onPressed: () {},
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
