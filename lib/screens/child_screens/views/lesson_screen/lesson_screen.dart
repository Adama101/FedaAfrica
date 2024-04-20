import 'package:flutter/material.dart';
import '../../common/hex_color.dart';
import '../../model/lesson_model.dart';
import '../../model/level_model.dart';
import '../../model/question_model.dart';
import 'components/bottom_button.dart';
import 'components/grid_question.dart';
import 'components/lesson_app_bar.dart';

class LessonScreen extends StatefulWidget {
  final LessonModel current_lesson;
  final LevelModel current_level;
  //final int lesson_index;
  LessonScreen({required this.current_lesson, required this.current_level});

  @override
  State<StatefulWidget> createState() {
    return LessonScreenState();
  }
}

class LessonScreenState extends State<LessonScreen> {
  double percent = 0.0;
  int index = 0;
  //final LessonModel next_lesson=LessonModel(title: title, description: description, icon: icon, image: image, backgroundColor: backgroundColor, questions: questions);
  @override
  Widget build(BuildContext context) {
    var lessons_questions =
        create_lesson_Questions(widget.current_lesson.questions,widget.current_level,widget.current_lesson);
    percent =
        calculateQuizzProgress(index, widget.current_lesson.questions.length);
    return Scaffold(
      appBar: LessonAppBar(percent: percent),
      body: lessons_questions[index],
    );
  }

  List<Widget> create_lesson_Questions(List<QuestionModel> questions_lesson,LevelModel current_level,LessonModel current_lesson) {
    List<Widget> widgets = [];
    for (var i = 0; i < questions_lesson.length; i++) {
      widgets.add(
        GridQuestion(
          checkButton: bottomButton(context, 'CHECK',current_lesson,current_level),
          question_lesson:
              questions_lesson[i], // Use index 'i' instead of fixed index '2'
        ),
      );
    }
    return widgets;
  }

  double calculateQuizzProgress(int index, int total_quizz) {
    return (index + 1) / total_quizz;
  }

  bottomButton(BuildContext context, String title, LessonModel current_lesson,LevelModel current_level) {
    return Center(
      child: Container(
        width: double.infinity,
        height: 50,
        margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              if (percent < 1) {
                percent += 0.2;
                index++;
              } else {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return dialog('Great job',current_lesson,current_level);
                  },
                );
              }
            });
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

  dialog(String title, LessonModel current_lesson,LevelModel current_level) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 150,
        width: double.infinity,
        decoration: const BoxDecoration(color: Color(0xFFd7ffb8)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            dialogTitle(title),
            BottomButton(
              context,
              title: 'CONTINUE',
              current_lesson: current_lesson,
              current_level: current_level,
            ),
          ],
        ),
      ),
    );
  }

  dialogTitle(String text) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.only(top: 15),
        padding: const EdgeInsets.only(left: 15),
        child: DefaultTextStyle(
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Color(0xFF43C000),
          ),
          child: Text(text),
        ),
      ),
    );
  }
}
