import 'package:flutter/material.dart';
import 'package:netflix_ui_clone/utils/constants/colors.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({
    Key? key,
    this.width = 250,
    this.height = 100,
    required this.title,
    required this.imageUrl,
    required this.timeAgo,
    required this.category,
  }) : super(key: key);

  final double width;
  final double height;
  final String imageUrl;
  final String title;
  final String timeAgo;
  final String category;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 100,
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: NetworkImage(
            imageUrl,
          ),
          fit: BoxFit.cover,
        ),
      ),
      padding: EdgeInsets.only(
        left: 20,
        top: 20,
        bottom: 20,
        right: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 4,
            ),
            child: Text(
              category,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal,
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: yellowColor,
            ),
          ),
          Spacer(),
          Text(
            title,
            style: TextStyle(
              color: whiteColor,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 10),
          Text(
            timeAgo,
            style: TextStyle(
              color: whiteColor.withOpacity(0.7),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
