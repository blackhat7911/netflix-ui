import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.05,
      alignment: Alignment.center,
      child: Image(
        image: AssetImage(
          "assets/logo/Netflix_Logo_RGB.png",
        ),
      ),
    );
  }
}
