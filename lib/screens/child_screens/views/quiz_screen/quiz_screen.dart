import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import '../../../../routes/app_routes.dart';

class KidsMoneyQuizScreen extends StatefulWidget {
  @override
  _KidsMoneyQuizScreenState createState() => _KidsMoneyQuizScreenState();
}

class _KidsMoneyQuizScreenState extends State<KidsMoneyQuizScreen> {
  AudioPlayer audioPlayer = AudioPlayer(playerId: 'assets/images/audio/');

  int _currentQuestionIndex = 0;
  int _totalScore = 0;

  final List<Map<String, dynamic>> _questions = [
    {
      'question': 'Where does Money come from?',
      'options': [
        {'text': 'Bank', 'image': 'assets/images/bank.png'},
        {'text': 'Trees', 'image': 'assets/images/tree.png'},
        {'text': 'Parents', 'image': 'assets/images/hometab/parents.png'},
        {'text': 'School', 'image': 'assets/images/school.png'}
      ],
      'correctIndex': 0,
    },
    {
      'question': 'Where can you save your money?',
      'options': [
        {'text': 'Under the pillow', 'image': 'assets/images/pillow.png'},
        {'text': 'In a bank', 'image': 'assets/images/bank.png'},
        {'text': 'In the fridge', 'image': 'assets/images/fridge.png'},
        {'text': 'On the street', 'image': 'assets/images/street.png'}
      ],
      'correctIndex': 1,
    },
    {
      'question': 'What should you do before spending your money?',
      'options': [
        {'text': 'Sleep', 'image': 'assets/images/sleep.png'},
        {'text': 'Think and plan', 'image': 'assets/images/thinking.png'},
        {'text': 'Jump', 'image': 'assets/images/jumping.png'},
        {'text': 'Eat a pizza', 'image': 'assets/images/pizza.png'}
      ],
      'correctIndex': 1,
    },
  ];

  void _checkAnswer(int selectedIndex) {
    int correctIndex = _questions[_currentQuestionIndex]['correctIndex'];
    if (selectedIndex == correctIndex) {
      audioPlayer.play('correct.wav' as Source);
      setState(() {
        _totalScore++;
      });
    } else {
      audioPlayer.play('incorrect.wav' as Source);
    }
    _nextQuestion();
  }

  void _nextQuestion() {
    setState(() {
      if (_currentQuestionIndex < _questions.length - 1) {
        _currentQuestionIndex++;
      } else {
        // Quiz completed
        // You can navigate to another screen or show the result here
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Quiz Completed!'),
            content: Text('Your score: $_totalScore'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.popAndPushNamed(context, AppRoutes.childHomeScreen);
                },
                child: Text('OK'),
              ),
            ],
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Money Management Quiz'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: LinearProgressIndicator(
              value: (_currentQuestionIndex + 1) / _questions.length,
              backgroundColor: Colors.grey[300],
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Question ${_currentQuestionIndex + 1}/${_questions.length}',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  _questions[_currentQuestionIndex]['question'],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        _checkAnswer(0);
                      },
                      child: Card(
                        elevation: 4.0,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  _questions[_currentQuestionIndex]['options'][0]['image'],
                                  width: 100,
                                  height: 100,
                                ),
                                SizedBox(height: 8.0),
                                Text(
                                  _questions[_currentQuestionIndex]['options'][0]['text'],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _checkAnswer(1);
                      },
                      child: Card(
                        elevation: 4.0,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  _questions[_currentQuestionIndex]['options'][1]['image'],
                                  width: 100,
                                  height: 100,
                                ),
                                SizedBox(height: 8.0),
                                Text(
                                  _questions[_currentQuestionIndex]['options'][1]['text'],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        _checkAnswer(2);
                      },
                      child: Card(
                        elevation: 4.0,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  _questions[_currentQuestionIndex]['options'][2]['image'],
                                  width: 100,
                                  height: 100,
                                ),
                                SizedBox(height: 8.0),
                                Text(
                                  _questions[_currentQuestionIndex]['options'][2]['text'],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        _checkAnswer(3);
                      },
                      child: Card(
                        elevation: 4.0,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  _questions[_currentQuestionIndex]['options'][3]['image'],
                                  width: 100,
                                  height: 100,
                                ),
                                SizedBox(height: 8.0),
                                Text(
                                  _questions[_currentQuestionIndex]['options'][3]['text'],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
