import 'package:fedaafrica/core/app_export.dart';
import 'package:flutter/material.dart';

class LeaderboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.popAndPushNamed(context, AppRoutes.childHomeScreen);
          },
          color: const Color.fromARGB(255, 15, 15, 15),
          style: ButtonStyle(
              backgroundColor:
                  MaterialStatePropertyAll(Color.fromARGB(255, 235, 232, 232)),
              elevation: MaterialStatePropertyAll(2.0)),
        ),
        title: Text(
          'Leaderboard',
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            _buildTopChampions(),
            SizedBox(height: 40),
            _buildLeaderboard(),
          ],
        ),
      ),
    );
  }

  Widget _buildTopChampions() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 120,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 238, 142, 198),
                const Color.fromARGB(255, 206, 255, 128)
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildChampionAvatar('assets/images/avatar6.jpg', 'Amelia',
                Icons.military_tech, Colors.amber),
            _buildChampionAvatar('assets/images/avatar3.jpg', 'Kossi',
                Icons.military_tech, Colors.grey),
            _buildChampionAvatar('assets/images/avatar1.jpg', 'Ama',
                Icons.military_tech, Colors.brown),
          ],
        ),
      ],
    );
  }

  Widget _buildChampionAvatar(
      String image, String name, IconData icon, Color iconColor) {
    return Column(
      children: [
        CircleAvatar(
          radius: 35,
          backgroundImage: AssetImage(image),
        ),
        SizedBox(height: 8),
        Row(
          children: [
            Icon(
              icon,
              color: iconColor,
              size: 18,
            ),
            SizedBox(width: 4),
            Text(
              name,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildLeaderboard() {
    return Column(
      children: [
        _buildLeaderboardItem(1, 'Ama', 'assets/images/avatar1.jpg', 300),
        _buildLeaderboardItem(2, 'Sophia', 'assets/images/avatar2.jpg', 250),
        _buildLeaderboardItem(3, 'Kossi', 'assets/images/avatar3.jpg', 200),
        _buildLeaderboardItem(4, 'Sarah', 'assets/images/avatar4.jpg', 180),
        _buildLeaderboardItem(5, 'Grace', 'assets/images/avatar5.jpg', 160),
        _buildLeaderboardItem(6, 'Amelia', 'assets/images/avatar6.jpg', 150),
        _buildLeaderboardItem(7, 'James', 'assets/images/avatar7.jpg', 140),
        _buildLeaderboardItem(8, 'Emily', 'assets/images/avatar1.jpg', 130),
        _buildLeaderboardItem(9, 'Benjamin', 'assets/images/avatar4.jpg', 120),
        _buildLeaderboardItem(10, 'Ella', 'assets/images/avatar2.jpg', 110),
      ],
    );
  }

  Widget _buildLeaderboardItem(int rank, String name, String image, int score) {
    return ListTile(
      leading: Text(
        '$rank',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      title: Row(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(image),
          ),
          SizedBox(width: 16),
          Text(
            name,
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
      trailing: Text(
        '$score pts',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}
