import 'package:flutter/material.dart';
import 'package:netflix_ui_clone/utils/constants/colors.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField({
    Key? key,
    required this.hintText,
    this.isPassword = false,
  }) : super(key: key);

  final String hintText;
  final bool? isPassword;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      padding: EdgeInsets.only(
        left: 20,
        top: 5,
        bottom: 5,
        right: 10,
      ),
      decoration: BoxDecoration(
        color: blackColor,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          width: 1,
          color: whiteColor,
        ),
      ),
      child: TextField(
        style: TextStyle(
          color: whiteColor,
        ),
        obscureText: isPassword!,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: TextStyle(
            color: whiteColor,
          ),
        ),
      ),
    );
  }
}
