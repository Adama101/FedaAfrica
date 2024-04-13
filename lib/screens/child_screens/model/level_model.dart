
import 'package:flutter/material.dart';

import 'lesson_model.dart';

class CourseLevelModel  {
  final String levelName;
  final String imagePath;
  final int lessonsCount;
  final int levelId;
  bool isCompleted;
  String description;
  IconData icon;
  Color backgroundColor;
  List<LessonModel> level_lessons;
  CourseLevelModel({
    required this.levelName,
    required this.imagePath,
    required this.lessonsCount,
    required this.levelId,
    this.isCompleted=false,
    this.description='Earn 1 FEDA',
    this.icon=Icons.start,
    this.backgroundColor=Colors.redAccent,
    this.level_lessons=const <LessonModel>[]
  });
}