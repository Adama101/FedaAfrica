import 'package:flutter/material.dart';

class ProfileScreenV0 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Praise Ohua', // Replace with first name and family name
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                '@praiseohua', // Replace with username
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Icon(Icons.calendar_today),
                  SizedBox(width: 8),
                  Text(
                    'Joined: 2024-03-03', // Replace with date of joining
                    style: TextStyle(fontSize: 16, color: Colors.grey),
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
                    number: '0', // Replace with actual number
                    description: 'day streak', // Replace with description
                  ),
                  StatisticCard(
                    image: AssetImage('assets/images/profiletab/totalStreak.png'),
                    number: '2', // Replace with actual number
                    description: 'Total streak', // Replace with description
                  ),
                  StatisticCard(
                    image: AssetImage('assets/images/profiletab/achievement.png'),
                    number: 'Gold', // Replace with actual number
                    description: 'High achievement', // Replace with description
                  ),
                  StatisticCard(
                    image: AssetImage('assets/images/profiletab/perfomance.png'),
                    number: '0', // Replace with actual number
                    description: 'Top performance', // Replace with description
                  ),
                ],
              ),
            ],
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
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
