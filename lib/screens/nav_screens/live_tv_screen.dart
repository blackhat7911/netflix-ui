import 'package:flutter/material.dart';
import 'package:netflix_ui_clone/utils/constants/colors.dart';

class LiveTVNavScreen extends StatefulWidget {
  const LiveTVNavScreen({ Key? key }) : super(key: key);

  @override
  _LiveTVNavScreenState createState() => _LiveTVNavScreenState();
}

class _LiveTVNavScreenState extends State<LiveTVNavScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Live TV',
          style: TextStyle(
            fontSize: 30,
            color: redColor,
          ),
        ),
      ),
    );
  }
}