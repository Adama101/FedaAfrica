import 'package:flutter/material.dart';
import 'common/course_header.dart';
import 'model/course_model.dart';
import 'model/level_model.dart';
import 'start_level.dart';

class CourseLevelScreen extends StatelessWidget {
  final CourseModel user_course;
  final List<CourseLevelModel> list_levels;
  CourseLevelScreen({required this.user_course, required this.list_levels});
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(user_course.courseName),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.of(context).pop(); // Navigate back when back button is pressed
          },
        ),
      ),
      body: Column(
        children: <Widget>[
          CourseHeader(
            score: '0',
            numberLessons_started: 0,
            progress: "0%",
            streak: 0,
          ),
          Expanded(
            child: LevelScreen(
              course_levels: list_levels,
            ),
          ),
        ],
      ),
    );
  }
}

class LevelScreen extends StatelessWidget {
  final List<CourseLevelModel> course_levels;
  LevelScreen({
    required this.course_levels,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: course_levels.length,
      itemBuilder: (BuildContext context, int index) {
        if (index == 0 || course_levels[index - 1].isCompleted) {
          return buildLevelCard(context, course_levels[index]);
        } else {
          return buildLockedLevelCard(context, course_levels[index]);
        }
      },
    );
  }

  Widget buildLockedLevelCard(BuildContext context, CourseLevelModel level) {
    return Container(
      margin: EdgeInsets.all(16.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.grey[300], // Adjust the color as needed
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  level.icon,
                  size: 48.0,
                  color: Colors.grey[600], // Adjust the color as needed
                ),
                SizedBox(width: 16.0),
                Text(
                  level.levelName,
                  style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[600]), // Adjust the color as needed
                ),
                SizedBox(height: 8.0),
                Text(
                  level.description,
                  style: TextStyle(
                      color: Colors.grey[600]), // Adjust the color as needed
                ),
              ],
            ),
          ),
          SizedBox(width: 16.0),
          Image.asset(
            level.imagePath,
            height: 150.0,
            width: 150.0,
            fit: BoxFit.cover,
            color: Colors.grey[600], // Adjust the color as needed
            //colorBlendMode: BlendMode.saturation,
          ),
        ],
      ),
    );
  }

  Widget buildLevelCard(BuildContext context, CourseLevelModel level) {

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => StartLevelLessons(level: level),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.all(16.0),
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: level.backgroundColor,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    level.icon,
                    size: 48.0,
                    color: Colors.white,
                  ),
                  SizedBox(width: 16.0),
                  Text(
                    level.levelName,
                    style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    level.description,
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(width: 16.0),
            Image.asset(
              level.imagePath,
              height: 150.0,
              width: 150.0,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
