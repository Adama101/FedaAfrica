import 'package:flutter/material.dart';
import '../../../common/hex_color.dart';
import '../../../model/lesson_model.dart';
import '../../../model/level_model.dart';
import '../lesson_screen.dart';

class BottomButton extends StatelessWidget {
  final BuildContext context;
  final String title;
  final LessonModel current_lesson;
  final LevelModel current_level;
  const BottomButton(this.context, {required this.title,required this.current_level,required this.current_lesson, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        height: 50,
        margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => LessonScreen(current_lesson: current_lesson,current_level: current_level),
              ),
            );
          },
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: HexColor.fromHex('#036CFF'),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
    );
  }
  List<LessonModel> getLessonsForLevel(LevelModel currentLevel) {
    // Assuming each level has a list of lessons associated with it
    return currentLevel.level_lessons;
  }
  LessonModel? getNextLesson(LevelModel current_level, LessonModel? currentLesson) {
    List<LessonModel> lessons = getLessonsForLevel(current_level);
    if (currentLesson == null) {
      // If current lesson is null, return the first lesson
      return lessons.isNotEmpty ? lessons.first : null;
    } else {
      // Find the index of the current lesson
      int currentIndex =
          lessons.indexWhere((lesson) => lesson == currentLesson);

      if (currentIndex == -1) {
        // If current lesson is not found in the list, return null
        return null;
      } else if (currentIndex == lessons.length - 1) {
        // If the current lesson is the last one, return null as there's no next lesson
        return null;
      } else {
        // Return the next lesson
        return lessons[currentIndex + 1];
      }
    }
  }
}
