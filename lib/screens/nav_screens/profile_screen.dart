import 'package:flutter/material.dart';
import 'package:netflix_ui_clone/utils/constants/colors.dart';

class ProfileNavScreen extends StatefulWidget {
  const ProfileNavScreen({Key? key}) : super(key: key);

  @override
  _ProfileNavScreenState createState() => _ProfileNavScreenState();
}

class _ProfileNavScreenState extends State<ProfileNavScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Profile',
          style: TextStyle(
            fontSize: 30,
            color: redColor,
          ),
        ),
      ),
    );
  }
}
