import 'package:flutter/material.dart';

import '../../../common/hex_color.dart';
import '../../../model/option_model.dart';
import '../../../model/question_model.dart';

class GridQuestion extends StatelessWidget {
  final Widget checkButton;
  final QuestionModel question_lesson;

  const GridQuestion(
      {required this.checkButton, required this.question_lesson, Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        instruction('Select the correct one'),
        questionRow('${question_lesson.text}'),
        listChoices(question_lesson.options),
        checkButton,
      ],
    );
  }

  Widget listChoices(List<OptionModel> options_question) {
    List<Widget> widgets = [];
    for (var i = 0; i < options_question.length; i++) {
      widgets.add(gridChoice(options_question[i]));
    }
    return GridView.count(
      primary: false,
      shrinkWrap: true,
      padding: const EdgeInsets.only(left: 15, right: 15),
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      childAspectRatio: 0.7,
      children: widgets,
    );
  }

  gridChoice(OptionModel option) {
    return Container(
      height: 400,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          width: 2.5,
          color: const Color(0xFFE5E5E5),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
              padding: const EdgeInsets.all(0.5),
              child: Center(child: Image.asset(option.image, scale: 0.50))),
          Container(
            alignment: Alignment.bottomCenter,
            margin: const EdgeInsets.only(bottom: 2.5),
            child: Text(
              option.text,
              style: const TextStyle(color: Color(0xFF4B4B4B), fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }

  questionRow(String question) {
    return Container(
      margin: const EdgeInsets.only(left: 15, bottom: 5),
      child: Row(
        children: [
          speakButton(),
          const Padding(padding: EdgeInsets.only(right: 15)),
          Text(
            question,
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4B4B4B)),
          )
        ],
      ),
    );
  }

  speakButton() {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: HexColor.fromHex('#036CFF'),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Icon(
        Icons.volume_up,
        color: Colors.white,
        size: 35,
      ),
    );
  }

  instruction(String text) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.only(top: 10, left: 15),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Color(0xFF4B4B4B),
          ),
        ),
      ),
    );
  }
}
