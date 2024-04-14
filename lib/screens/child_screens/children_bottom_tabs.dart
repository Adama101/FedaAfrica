import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';


import 'kid_home_learning_screen.dart';
import 'leaderboard_screen.dart';
import 'profile_screen.dart';
import 'task_screen.dart';

class ChildrenBottomTabs extends StatefulWidget {
  @override
  _ChildrenBottomTabsState createState() => _ChildrenBottomTabsState();
}

class _ChildrenBottomTabsState extends State<ChildrenBottomTabs> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    KidHomeLearningScreen(),
    //HomeScreen(),
    //CustomizedLearningPathScreen(),
    LeaderboardScreen(),
    TaskScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text('Hello Praise!'), // Text aligned to the left
            Spacer(), // Spacer to push the icon to the right
            Container(
              margin: EdgeInsets.only(right: 5.0),
              child: CircleAvatar(
                backgroundColor: Colors.blue,
                child: IconButton(
                  icon: Icon(Icons.person),
                  onPressed: () {
                    // Add your onPressed logic here
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.lightBlue,
        items: [
          CurvedNavigationBarItem(
            child: Image.asset('assets/images/hometab/home.png',width: 48,height:48),
            label: 'Learn',
          ),
          CurvedNavigationBarItem(
            child: Image.asset('assets/images/hometab/badge.png',width: 48,height:48),
            label: 'Leaderboard'
          ),
          CurvedNavigationBarItem(
            child: Image.asset('assets/images/hometab/task.png',width: 48,height:48),
            label: 'Task',
          ),
          CurvedNavigationBarItem(
            child: Image.asset('assets/images/hometab/profile.png',width: 48,height:48),
            label: 'Profile',
          ),
        ],
        index: _selectedIndex,
        onTap: _onItemTapped,
        //color: Colors.lightBlue,
        buttonBackgroundColor: Colors.white,
      ),
    );
  }
}