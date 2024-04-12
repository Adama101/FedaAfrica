import 'package:flutter/material.dart';

import 'child_home_screen.dart';
import 'child_profile_screen.dart';

class ChildWelcomeScreen extends StatefulWidget {
  @override
  _ChildWelcomeScreenState createState() => _ChildWelcomeScreenState();
}

class _ChildWelcomeScreenState extends State<ChildWelcomeScreen> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    /* LeaderboardScreen(),
    TaskScreen(), */
    ChildProfileScreen(),
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
            Text('Hello, Praise'), // Text aligned to the left
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
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(Icons.account_box),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
