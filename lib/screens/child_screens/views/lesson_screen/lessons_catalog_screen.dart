// import 'package:flutter/material.dart';
// import '../../model/lesson_model.dart';
// import '../../model/level_model.dart';
// import 'lesson_video_screen.dart';

// class LessonsCatalogScreen extends StatelessWidget {
//   final List<LessonModel> lessons;
//   final LevelModel current_level;

//   LessonsCatalogScreen({required this.lessons, required this.current_level});

//   @override
//   Widget build(BuildContext context) {
//     int nextLessonIndex = _getNextLessonIndex();
//     if (nextLessonIndex < lessons.length) {
//       print('Previous index: ${nextLessonIndex-1}');
//       return StartLessonScreen(lesson: lessons[nextLessonIndex],current_level: current_level,);
//     } else {
//       return Center(
//         child: const Text('All lessons in this level are completed.'),
//       );
//     }
//   }

//   int _getNextLessonIndex() {
//     for (int i = 0; i < lessons.length; i++) {
//       if (!lessons[i].completed) {
//         return i;
//       }
//     }
//     // If all lessons are completed, return the length of lessons
//     return lessons.length;
//   }
// }

// class StartLessonScreen extends StatelessWidget {
//   final LessonModel lesson;
//   final LevelModel current_level;
//   StartLessonScreen({required this.lesson,required this.current_level});

//   @override
//   Widget build(BuildContext context) {
//     return LessonVideoScreen(lesson: lesson,level: current_level,);
//   }
// }
