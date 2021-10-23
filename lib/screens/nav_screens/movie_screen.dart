import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:netflix_ui_clone/model/cinema_model.dart';
import 'package:netflix_ui_clone/model/news_model.dart';
import 'package:netflix_ui_clone/model/popular_movie_model.dart';
import 'package:netflix_ui_clone/utils/constants/colors.dart';
import 'package:netflix_ui_clone/widgets/custom_header.dart';
import 'package:netflix_ui_clone/widgets/news_card.dart';
import 'package:netflix_ui_clone/widgets/popular_section.dart';
import 'package:netflix_ui_clone/widgets/section_header.dart';
import 'package:netflix_ui_clone/widgets/trailer_card.dart';

class MovieNavScreen extends StatefulWidget {
  const MovieNavScreen({Key? key}) : super(key: key);

  @override
  _MovieNavScreenState createState() => _MovieNavScreenState();
}

class _MovieNavScreenState extends State<MovieNavScreen> {
  final newsList = News.fetchAll();
  final popularVideoList = PopularMovie.fetchAll();
  final cinemaList = Cinema.fetchAll();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            ClipRRect(
              child: ImageFiltered(
                imageFilter: ImageFilter.blur(sigmaX: 7, sigmaY: 7),
                child: Image.network(
                  "https://images.hdqwalls.com/wallpapers/spiderman-2002-q0.jpg",
                  fit: BoxFit.cover,
                  height: size.height,
                ),
              ),
            ),
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  CustomHeader(),
                  SizedBox(
                    height: 10,
                  ),
                  SectionHeader(title: "Popular videos"),
                  SizedBox(height: 10),
                  Container(
                    height: 150,
                    child: ListView.builder(
                      itemCount: popularVideoList.length,
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(
                            left: (index == 0) ? 20 : 10,
                            right:
                                (popularVideoList.length - 1 == index) ? 20 : 0,
                          ),
                          child: TrailerCard(
                            imageUrl: popularVideoList[index].imageUrl,
                            length: popularVideoList[index].length,
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 24),
                  Container(
                    width: size.width,
                    height: 1200,
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: SectionHeader(
                            title: "Hot News",
                            titleColor: blackColor,
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          height: 350,
                          width: size.width,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: newsList.length,
                            shrinkWrap: true,
                            physics: BouncingScrollPhysics(),
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.only(
                                  left: (index == 0) ? 20 : 0,
                                  right:
                                      (newsList.length - 1 == index) ? 20 : 0,
                                ),
                                child: (index % 2 == 0)
                                    ? NewsCard(
                                        title: newsList[index].title,
                                        imageUrl: newsList[index].imageUrl,
                                        category: newsList[index].category,
                                        timeAgo: newsList[index].timeAgo,
                                      )
                                    : Column(
                                        children: [
                                          Expanded(
                                            child: NewsCard(
                                              width: 125,
                                              height: 50,
                                              title: newsList[index].title,
                                              imageUrl:
                                                  newsList[index].imageUrl,
                                              category:
                                                  newsList[index].category,
                                              timeAgo: newsList[index].timeAgo,
                                            ),
                                          ),
                                          Expanded(
                                            child: NewsCard(
                                              width: 125,
                                              height: 50,
                                              title: newsList[index].title,
                                              imageUrl:
                                                  newsList[index].imageUrl,
                                              category:
                                                  newsList[index].category,
                                              timeAgo: newsList[index].timeAgo,
                                            ),
                                          ),
                                        ],
                                      ),
                              );
                            },
                          ),
                        ),
                        SizedBox(height: 20),
                        PopularSection(),
                        SizedBox(height: 20),
                        SectionHeader(
                          title: "Today in Cinemas",
                          titleColor: blackColor,
                        ),
                        SizedBox(height: 10),
                        Container(
                          height: 300,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            physics: BouncingScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: cinemaList.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.only(
                                  left: (index == 0) ? 20 : 0,
                                  right:
                                      (cinemaList.length - 1 == index) ? 20 : 0,
                                ),
                                child: Container(
                                  width: 300,
                                  height: 300,
                                  margin: EdgeInsets.only(right: 10),
                                  padding: EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        cinemaList[index].imageUrl,
                                      ),
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Spacer(),
                                      Text(
                                        cinemaList[index].title,
                                        style: TextStyle(
                                          color: whiteColor,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Container(
                                        height: 30,
                                        child: ListView.builder(
                                            scrollDirection: Axis.horizontal,
                                            itemCount:
                                                cinemaList[index].time.length,
                                            itemBuilder: (context, index) {
                                              return Container(
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: 8,
                                                  vertical: 4,
                                                ),
                                                margin:
                                                    EdgeInsets.only(right: 10),
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  color: whiteColor
                                                      .withOpacity(0.7),
                                                ),
                                                child: Text(
                                                  cinemaList[index].time[index],
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle: FontStyle.normal,
                                                  ),
                                                ),
                                              );
                                            }),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
