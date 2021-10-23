import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:netflix_ui_clone/utils/constants/colors.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    Key? key,
    required this.title,
    this.titleColor = Colors.white,
  }) : super(key: key);
  final String title;
  final Color? titleColor;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: titleColor,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Row(
              children: [
                Text(
                  "See all",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: yellowColor,
                  ),
                ),
                Icon(
                  EvaIcons.arrowIosForwardOutline,
                  color: yellowColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
