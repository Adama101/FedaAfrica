import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskScreen extends StatelessWidget {
  final List<Task> ongoingTasks = [
    Task(
      color: Colors.green,
      taskName: 'Wash the plates',
      hourOfAchieving: '09:00 AM',
      dateOfAchieving: '2024-03-20',
      illustrationImage: 'assets/images/tasktab/Wash_your_hands.png',
      rewardAmount: 50, // Example reward amount
    ),
    Task(
      color: Colors.blue,
      taskName: 'Read social studies',
      hourOfAchieving: '10:30 AM',
      dateOfAchieving: '2024-03-21',
      illustrationImage: 'assets/images/tasktab/reading.png',
      rewardAmount: 75, // Example reward amount
    ),
    // Add more ongoing tasks as needed
  ];

  final List<Task> achievedTasks = [
    Task(
      color: Colors.orange,
      taskName: 'Gardening the flowers',
      hourOfAchieving: '11:45 AM',
      dateOfAchieving: '2024-03-22',
      illustrationImage: 'assets/images/tasktab/sprayer_water.png',
      rewardAmount: 100, // Example reward amount
    ),
    // Add more achieved tasks as needed
  ];

  @override
  Widget build(BuildContext context) {
  return DefaultTabController(
    length: 2, // Number of tabs
    child: Scaffold(
      body: Column(
        children: [
          TabBar(
            tabs: [
              Tab(text: 'Ongoing'),
              Tab(text: 'Achieved'),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                // Ongoing tasks tab
                ListView.builder(
                  itemCount: ongoingTasks.length,
                  itemBuilder: (context, index) {
                    return buildTaskCard(context, ongoingTasks[index]);
                  },
                ),
                // Achieved tasks tab
                ListView.builder(
                  itemCount: achievedTasks.length,
                  itemBuilder: (context, index) {
                    return buildTaskCard(context, achievedTasks[index]);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}


  Widget buildTaskCard(BuildContext context, Task task) {
    return Container(
      margin: EdgeInsets.all(16.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: task.color,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            task.illustrationImage,
            height: 150.0,
            width: 150.0,
            fit: BoxFit.cover,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  task.taskName,
                  style: GoogleFonts.abel(
          fontSize: 20,
          fontWeight: FontWeight.bold,

        ),
                ),
                SizedBox(width: 16.0),
                Row(
                  children: [
                    Icon(
                      Icons.watch_later_sharp,
                      size: 18.0,
                      color: Colors.white,
                    ),
                    SizedBox(width: 4.0),
                    Text(
                      task.hourOfAchieving,
                      style: TextStyle(fontSize: 12.0, color: Colors.white),
                    ),
                  ],
                ),
                Text(
                  task.dateOfAchieving,
                  style: TextStyle(fontSize: 12.0, color: Colors.white),
                ),
                SizedBox(width: 16.0),
                // Display reward amount
                Text(
                  'Reward: ${task.rewardAmount} NGN',
                  style: TextStyle(fontSize: 16.0, color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Task {
  final Color color;
  final String taskName;
  final String hourOfAchieving;
  final String dateOfAchieving;
  final String illustrationImage;
  final int rewardAmount;

  Task({
    required this.color,
    required this.taskName,
    required this.hourOfAchieving,
    required this.dateOfAchieving,
    required this.illustrationImage,
    required this.rewardAmount,
  });
}
