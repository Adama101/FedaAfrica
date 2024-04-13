import 'package:flutter/material.dart';
import 'model/level_model.dart';
import 'start_lesson_screen.dart';
// Assuming you have StartLessonsScreen implemented

class StartLevelLessons extends StatefulWidget {
  final CourseLevelModel level;

  StartLevelLessons({required this.level});

  @override
  _StartLevelLessonsState createState() => _StartLevelLessonsState();
}

class _StartLevelLessonsState extends State<StartLevelLessons> {
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.level.levelName),
      ),
      body: PageView.builder(
        itemCount: widget.level.level_lessons.length,
        itemBuilder: (context, index) {
          final currentLesson = widget.level.level_lessons[index];
          return StartLessonScreen(
            lesson: currentLesson,
            onCompleteLesson: () {
              // Check if we are on the last lesson
              if (index < widget.level.level_lessons.length-1) {
                _pageController.nextPage(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.ease);
              } else {
                // Handle when all lessons are completed
                // For now, you can navigate back or show a completion message
              }
            },
          );
        },
      ),
    );
  }
}
