import 'package:flutter/material.dart';

class BottomNavigator extends StatelessWidget {
  final Function(int) onPress;
  final int currentIndex;

  const BottomNavigator({
    required this.currentIndex,
    required this.onPress,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: true,
      showUnselectedLabels: true,
      unselectedItemColor: Colors.grey,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/hometab/home.png',
            height: 40,
          ),
          activeIcon: Image.asset(
            'assets/images/hometab/home.png',
            height: 40,
          ),
          label: 'Learn',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/hometab/task.png',
            height: 40,
          ),
          activeIcon: Image.asset(
            'assets/images/hometab/task.png',
            height: 40,
          ),
          label: 'Tasks',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/hometab/profile.png',
            height: 40,
          ),
          activeIcon: Image.asset(
            'assets/images/hometab/profile.png',
            height: 40,
          ),
          label: 'Profile',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/leaderboard.png',
            height: 40,
          ),
          activeIcon: Image.asset(
            'assets/images/leaderboard.png',
            height: 20,
          ),
          label: 'Ranking',
        ),
      ],
      currentIndex: currentIndex,
      selectedItemColor: Colors.blue,
      onTap: onPress,
    );
  }
}
