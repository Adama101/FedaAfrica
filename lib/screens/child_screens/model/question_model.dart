import 'option_model.dart';

class QuestionModel {
  final String text;
  final List<OptionModel> options;
  final int correctAnswerIndex;
  final int points;

  QuestionModel({
    required this.text,
    required this.options,
    required this.correctAnswerIndex,
    required this.points,
  });
}