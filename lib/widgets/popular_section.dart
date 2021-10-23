import 'package:flutter/material.dart';
import 'package:netflix_ui_clone/model/popular_movie_model.dart';
import 'package:netflix_ui_clone/utils/constants/colors.dart';
import 'package:netflix_ui_clone/widgets/popular_card.dart';

class PopularSection extends StatefulWidget {
  @override
  _PopularSectionState createState() => _PopularSectionState();
}

class _PopularSectionState extends State<PopularSection>
    with SingleTickerProviderStateMixin {
  final popularTodayList = PopularMovie.fetchAll();
  TabController? _tabController;
  late int _currentTabIndex;
  @override
  void initState() {
    super.initState();
    _currentTabIndex = 0;
    _tabController = TabController(length: 2, vsync: this);
    _tabController!.addListener(() {
      setState(() {
        _currentTabIndex = _tabController!.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  "Popular Today",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: blackColor,
                  ),
                ),
                Spacer(),
                Text(
                  "Movie",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: blackColor,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  "TV Series",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: blackColor.withOpacity(0.5),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: popularTodayList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(
                    left: (index == 0) ? 20 : 0,
                    right: (popularTodayList.length - 1 == index) ? 20 : 0,
                  ),
                  child: PopularCard(
                    imageUrl: popularTodayList[index].imageUrl,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
