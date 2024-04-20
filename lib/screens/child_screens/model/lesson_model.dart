import 'package:flutter/material.dart';

import 'question_model.dart';

class LessonModel {
  final String title;
  final String description;
  final IconData icon;
  final String image;
  final Color backgroundColor;
  String urlContent;
  final List<QuestionModel> questions;
  bool completed;

  LessonModel({
    required this.title,
    required this.description,
    required this.icon,
    required this.image,
    this.urlContent='',
    required this.backgroundColor,
    required this.questions,
    this.completed = false,
  });
}