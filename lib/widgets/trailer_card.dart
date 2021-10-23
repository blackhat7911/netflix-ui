import 'package:flutter/material.dart';
import 'package:netflix_ui_clone/utils/constants/colors.dart';

class TrailerCard extends StatelessWidget {
  const TrailerCard({Key? key, required this.imageUrl,required this.length}) : super(key: key);

  final String imageUrl;
  final String length;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: 240,
      height: size.height * 0.15,
      decoration: BoxDecoration(
        color: blackColor,
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            imageUrl,
          ),
        ),
      ),
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: whiteColor.withOpacity(0.6),
                      // color: blackColor,
                    ),
                    child: Icon(
                      Icons.play_arrow,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10, bottom: 10),
                    child: Text(
                      length,
                      style: TextStyle(
                        color: whiteColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
