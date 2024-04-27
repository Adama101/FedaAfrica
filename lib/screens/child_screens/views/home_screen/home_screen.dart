import 'package:flutter/material.dart';
import '../course_screen/course_tree.dart';
import '../profile_screen/profile_screen_v0.dart';
import '../task_screen/task_screen.dart';
import 'components/bottom_navigation.dart';
import 'components/profile_app_bar.dart';
import 'components/shop_app_bar.dart';
import 'components/stat_app_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screens = [
      CourseTree(),

      //LeaderboardScreenV0(),
      TaskScreen(),
      ProfileScreenV0(),
      //ProfileScreen(),
      //LeaderboardScreen(),
      //ShopScreen(),
      //ExploreScreen(),
    ];

    final List<PreferredSizeWidget> appBars = [
      StatAppBar(),

      //LeaderboardAppBar(),
      ShopAppBar(),
      ProfileAppBar(),
      //ExploreAppBar(),
    ];

    return Scaffold(
      appBar: appBars[currentIndex],
      bottomNavigationBar: BottomNavigator(
          currentIndex: currentIndex, onPress: onBottomNavigatorTapped),
      body: screens[currentIndex],
    );
  }

  void onBottomNavigatorTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
