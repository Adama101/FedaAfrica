import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import 'common/button.dart';
import 'model/lesson_model.dart';
import 'model/option_model.dart';
import 'model/question_model.dart';

class QuizzScreen extends StatefulWidget {
  final LessonModel lesson;
  final VoidCallback onQuizzCompleted;
  QuizzScreen({required this.lesson, required this.onQuizzCompleted});
  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuizzScreen> {
  int _currentQuestionIndex = 0;
  bool _isCheckButtonActive = false;
  int _totalScore = 0; // Add this variable to track button activation
  // Declare an instance of AudioCache
  final player = AudioPlayer();
  // Define the audio file path
  final String _correctSoundPath = "audios/correct.wav";
  final String _incorrecSoundPath = "audios/incorrect.wav";
  @override
  Widget build(BuildContext context) {
    QuestionModel currentQuestion = widget.lesson.questions[_currentQuestionIndex];
    
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Icon(Icons.circle), // Your circle icon
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Icon(Icons.close), // Your closing button icon
                onPressed: () {
                  // Add your action here
                },
              ),
              Expanded(
                child: LinearProgressIndicator(
                  color: Colors.blue,
                  minHeight: 20,
                  backgroundColor: Colors.grey,
                  borderRadius: BorderRadius.horizontal(
                      left: Radius.elliptical(5, 5), right: Radius.circular(5)),
                  value: (_currentQuestionIndex+1) /
                      widget.lesson.questions.length, // Your progress value
                ),
              ),
              Row(
                children: [
                  Icon(Icons.favorite, color: Colors.red),
                  Text('$_totalScore'),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(widget.lesson.title), // Your title
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              currentQuestion.text,
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ), // Your question
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
              ),
              itemCount: currentQuestion.options.length, // Number of cards
              itemBuilder: (BuildContext context, int index) {
                return buildOptionTile(currentQuestion.options[index], currentQuestion);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              width: double.infinity,
              child: FloatingActionButton(
                backgroundColor: _isCheckButtonActive
                    ? Colors.blueAccent
                    : Colors
                        .grey, // Set button color based on activation status
                onPressed: _isCheckButtonActive
                    ? () {
                        // Check answer and calculate score
                        int selectedOptionIndex = currentQuestion.options
                            .indexWhere((option) => option.isSelected);
                        if (selectedOptionIndex + 1 ==
                            currentQuestion.correctAnswerIndex) {
                          _totalScore += currentQuestion.points;
                        }
                        setState(() {
                          showModalBottomSheet(
                            context: context,
                            backgroundColor: Colors.transparent,
                            builder: (context) =>
                                showConvenientBotoomSheet(context, selectedOptionIndex,currentQuestion.correctAnswerIndex)
                          );
                        });
                      }
                    : null, // Disable button if not active
                child: Text(
                  'CHECK',
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }


  Widget showConvenientBotoomSheet(BuildContext bc,int selectedOptionIndex,int correctAnswerIndex){
        if(selectedOptionIndex + 1 ==correctAnswerIndex){
            return buildCongratulationsModal(bc);
        } else{
          return buildIncorrectOptionModal(bc);
        }
  }
  Widget buildOptionTile(OptionModel option,QuestionModel currentQuestion) {
    return GestureDetector(
      onTap: () {
        setState(() {
          // Deselect all options
        for (var o in currentQuestion.options) {
          o.isSelected = false;
        }
        // Select the tapped option
          option.isSelected = true;
          //option.isSelected = !option.isSelected;
          _updateCheckButtonActivation(); // Update button activation status
        });
      },
      child: Card(
        elevation: option.isSelected ? 16.0 : 32.0,
        shadowColor: option.isSelected ? Colors.blue : Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: option.isSelected
              ? BorderSide(color: Colors.blue, width: 4.0)
              : BorderSide(
                  color: Colors.transparent,
                  width: 4.0,
                  style: BorderStyle.none),
          //side:BorderSide(color: Colors.transparent,width: 5.0,strokeAlign: 10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Image.asset(
                option.image,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                option.text,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _updateCheckButtonActivation() {
    // Check if at least one option is selected
    _isCheckButtonActive = widget
        .lesson.questions[_currentQuestionIndex].options
        .any((option) => option.isSelected);
  }

  void playSound() async {
    player.setVolume(80.0);
    await player.play(AssetSource(_correctSoundPath));
  }

  void playIncorrectSound() async {
    player.setVolume(80.0);
    await player.play(AssetSource(_incorrecSoundPath));
  }

  Widget buildCongratulationsModal(BuildContext context) {
    playSound();
    widget.lesson.completed = true;
    return Container(
      height: 200.0,
      decoration: BoxDecoration(
        color: Colors.white, // Add background color if needed
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(0),
          topRight: Radius.circular(0),
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Congratulations!',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold,color: Colors.green),
            ),
            Text(
              'Score: $_totalScore', // Display score in modal
              style: TextStyle(fontSize: 20.0),
            ),
            Center(
              child: SizedBox(
                width: double.infinity,
                child: FancyButton(
                  child: Text(
                    "CONTINUE",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Gameplay',
                    ),
                  ),
                  size: 35,
                  color: Colors.blue,
                  onPressed: () {
                    Navigator.pop(context); // Close the modal
                    setState(() {
                      _currentQuestionIndex++;
                      if (_currentQuestionIndex >=
                          widget.lesson.questions.length) {
                        // Handle end of questions
                        Navigator.pop(context); // Return to previous screen
                      }
                      _isCheckButtonActive = false;
                    });
                  }
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildIncorrectOptionModal(BuildContext context) {
   
    playIncorrectSound();
     widget.lesson.completed = true;

    return Container(
      height: 200.0,
      decoration: BoxDecoration(
        color: Colors.white, // Add background color if needed,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(0),
          topRight: Radius.circular(0),
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sorry!...try again after',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold,color:Colors.red),
            ),
            Text(
              'Score: $_totalScore', // Display score in modal
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(
              width: double.infinity,
              child: FancyButton(
                size: 35,
                color: Colors.red,
                onPressed: () {
                  Navigator.pop(context); // Close the modal
                  setState(() {
                    _currentQuestionIndex++;
                    if (_currentQuestionIndex >=
                        widget.lesson.questions.length-1) {
                      // Handle end of questions
                      Navigator.pop(context); // Return to previous screen
                    }
                    _isCheckButtonActive = false;
                  });
                },
                child: Text(
                    "Continue",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Gameplay',
                    ),
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  
}
