import 'package:flutter/material.dart';
import 'package:netflix_ui_clone/utils/constants/colors.dart';

class SearchNavScreen extends StatefulWidget {
  const SearchNavScreen({ Key? key }) : super(key: key);

  @override
  _SearchNavScreenState createState() => _SearchNavScreenState();
}

class _SearchNavScreenState extends State<SearchNavScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Search',
          style: TextStyle(
            fontSize: 30,
            color: redColor,
          ),
        ),
      ),
    );
  }
}