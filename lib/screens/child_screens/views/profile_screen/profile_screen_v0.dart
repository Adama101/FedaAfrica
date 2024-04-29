import 'package:flutter/material.dart';

class ProfileScreenV0 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      //top: true,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/images/profile_picture.jpg'), // Add your profile picture
                    ),
                    SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Praise Ohua',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 8),
                        Text(
                          '@praiseohua',
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Icon(Icons.calendar_today),
                    SizedBox(width: 8),
                    Text(
                      'Joined: 2024-03-03', 
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Text(
                  'Statistics',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    StatisticCard(
                      image: AssetImage('assets/images/profiletab/streak.png'),
                      number: '0', 
                      description: 'day streak',
                    ),
                    StatisticCard(
                      image: AssetImage('assets/images/profiletab/totalStreak.png'),
                      number: '2', 
                      description: 'Total streak',
                    ),
                    StatisticCard(
                      image: AssetImage('assets/images/profiletab/achievement.png'),
                      number: 'Gold', 
                      description: 'High achievement', 
                    ),
                    StatisticCard(
                      image: AssetImage('assets/images/profiletab/perfomance.png'),
                      number: '0',
                      description: 'Top performance',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class StatisticCard extends StatelessWidget {
  final ImageProvider image;
  final String number;
  final String description;  

  StatisticCard({
    required this.image,
    required this.number,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: Card(
        elevation: 2,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: image,
                width: 36,
                height: 36,
              ),
              SizedBox(height: 8),
              Text(
                number,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4),
              Text(
                description,
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
