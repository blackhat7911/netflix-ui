import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:netflix_ui_clone/utils/constants/colors.dart';
import 'package:netflix_ui_clone/widgets/custom_header.dart';
import 'package:netflix_ui_clone/widgets/section_header.dart';
import 'package:netflix_ui_clone/widgets/trailer_card.dart';

class HomeNavScreen extends StatefulWidget {
  const HomeNavScreen({Key? key}) : super(key: key);

  @override
  _HomeNavScreenState createState() => _HomeNavScreenState();
}

class _HomeNavScreenState extends State<HomeNavScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Text(
          'Home',
          style: TextStyle(
            fontSize: 30,
            color: redColor,
          ),
        ),
      ),
    );
  }
}
