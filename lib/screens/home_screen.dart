import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_ui_clone/screens/nav_screens/home_screen.dart';
import 'package:netflix_ui_clone/screens/nav_screens/live_tv_screen.dart';
import 'package:netflix_ui_clone/screens/nav_screens/movie_screen.dart';
import 'package:netflix_ui_clone/screens/nav_screens/profile_screen.dart';
import 'package:netflix_ui_clone/screens/nav_screens/search_screen.dart';
import 'package:netflix_ui_clone/utils/constants/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> _navScreens = [
    HomeNavScreen(),
    MovieNavScreen(),
    LiveTVNavScreen(),
    SearchNavScreen(),
    ProfileNavScreen(),
  ];

  List<BottomNavigationBarItem> _navItems = [
    BottomNavigationBarItem(
      label: "Home",
      icon: Icon(
        EvaIcons.homeOutline,
        color: blackColor,
      ),
      activeIcon: Icon(
        EvaIcons.home,
      ),
    ),
    BottomNavigationBarItem(
      label: "Movies",
      icon: Icon(
        EvaIcons.creditCardOutline,
        color: blackColor,
      ),
      activeIcon: Icon(
        EvaIcons.creditCard,
      ),
    ),
    BottomNavigationBarItem(
      label: "TV",
      icon: Icon(
        EvaIcons.tvOutline,
        color: blackColor,
      ),
      activeIcon: Icon(
        EvaIcons.tv,
      ),
    ),
    BottomNavigationBarItem(
      label: "Search",
      icon: Icon(
        EvaIcons.searchOutline,
        color: blackColor,
      ),
      activeIcon: Icon(
        EvaIcons.search,
      ),
    ),
    BottomNavigationBarItem(
      label: "Profile",
      icon: Icon(
        EvaIcons.personOutline,
        color: blackColor,
      ),
      activeIcon: Icon(
        EvaIcons.person,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: _navScreens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: _navItems,
        elevation: 10,
        currentIndex: currentIndex,
        selectedItemColor: blackColor,
        unselectedItemColor: blackColor.withOpacity(0.6),
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    ));
  }
}
