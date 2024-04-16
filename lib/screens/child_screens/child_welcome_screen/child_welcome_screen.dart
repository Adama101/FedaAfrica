import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../../../widgets/fancy_button.dart';

class Childwelcomescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LessonScreen(),
    );
  }
}

class Lesson {
  final String title;
  final String description;
  final IconData icon;
  final String image;
  final Color backgroundColor;
  final List<Question> questions;

  Lesson({
    required this.title,
    required this.description,
    required this.icon,
    required this.image,
    required this.backgroundColor,
    required this.questions,
  });
}

class Question {
  final String text;
  final List<Option> options;
  final int correctAnswerIndex;
  final int points;

  Question({
    required this.text,
    required this.options,
    required this.correctAnswerIndex,
    required this.points,
  });
}

class Option {
  final String text;
  final String image;
  bool isSelected;

  Option({required this.text, required this.image, this.isSelected = false});
}

class LessonScreen extends StatelessWidget {
  final List<Lesson> lessons = [
    Lesson(
      title: 'Level 1',
      description: 'Earn money',
      icon: Icons.run_circle,
      image: "assets/images/hometab/money.png",
      backgroundColor: Color.fromARGB(255, 199, 17, 199),
      questions: [
        Question(
          points: 5,
          correctAnswerIndex: 1,
          text: 'Where\'s money from?',
          options: [
            Option(text: 'Bank', image: "assets/images/hometab/bank.png"),
            Option(text: 'Tree', image: "assets/images/hometab/tree.png"),
            Option(text: 'Parents', image: "assets/images/hometab/parent.png"),
            Option(text: 'Schools', image: "assets/images/hometab/school.png"),
          ],
        ),
        Question(
          points: 5,
          correctAnswerIndex: 2,
          text: 'How can you earn money ?',
          options: [
            Option(
                text: 'By asking their parents for it',
                image: "assets/images/hometab/parents.png"),
            Option(
                text: 'By doing chores or tasks for others',
                image: "assets/images/hometab/performing_task.png"),
            Option(
                text: 'By playing video games',
                image: "assets/images/hometab/playing_games.png"),
            Option(
                text: 'By spending all their allowance',
                image: "assets/images/hometab/troll.png"),
          ],
        ),
        Question(
          points: 5,
          correctAnswerIndex: 1,
          text: 'What are some chores you can do to earn money at home ?',
          options: [
            Option(
                text: 'Cleaning your room',
                image: "assets/images/hometab/cleaning_rooms.png"),
            Option(
                text: 'Playing with toys',
                image: "assets/images/hometab/playing_games.png"),
            Option(
                text: 'Watching TV', 
                image: "assets/images/hometab/watching_tv.png"),
            Option(
                text: 'Eating snacks',
                image: "assets/images/hometab/eating_snacks.png"),
          ],
        ),
        Question(
          points: 5,
          correctAnswerIndex: 2,
          text: 'Why is it important to work hard to earn money ?',
          options: [
            Option(
                text: 'So you can spend it all at once',
                image: "assets/images/hometab/goblin.png"),
            Option(
                text: 'So you can save it for the future',
                image: "assets/images/hometab/ogre.png"),
            Option(
                text: 'So you can buy more toys',
                image: "assets/images/hometab/ogre.png"),
            Option(
                text: 'So you can give it away to your friends',
                image: "assets/images/hometab/troll.png"),
          ],
        ),
        Question(
          points: 5,
          correctAnswerIndex: 2,
          text: 'Can you name some jobs people do to earn money ?',
          options: [
            Option(
                text: 'Playing with toys',
                image: "assets/images/hometab/playing_games.png"),
            Option(
                text: 'Cleaning houses',
                image: "assets/images/hometab/cleaning_rooms.png"),
            Option(
                text: 'Watching movies',
                image: "assets/images/hometab/watching_tv.png"),
            Option(
                text: 'Eating snacks',
                image: "assets/images/hometab/eating_snacks.png"),
          ],
        ),
        Question(
          points: 5,
          correctAnswerIndex: 2,
          text: 'How can you save or spend the money you earn wisely ?',
          options: [
            Option(
                text: 'By spending it all at once',
                image: "assets/images/hometab/goblin.png"),
            Option(
                text: 'By saving some for the future',
                image: "assets/images/hometab/ogre.png"),
            Option(
                text: 'By giving it away to your friends',
                image: "assets/images/hometab/ogre.png"),
            Option(
                text: 'By buying toys and games',
                image: "assets/images/hometab/troll.png"),
          ],
        )
      ],
    ),

    Lesson(
      title: 'Level 2',
      description: 'Invest Money',
      icon: Icons.run_circle,
      image: "assets/images/hometab/investNow.png",
      backgroundColor: Colors.redAccent,
      questions: [
        Question(
          points: 5,
          correctAnswerIndex: 3,
          text: 'Where m',
          options: [
            Option(text: 'Option 1', image: "assets/images/hometab/goblin.png"),
            Option(text: 'Option 2', image: "assets/images/hometab/ogre.png"),
            Option(text: 'Option 3', image: "assets/images/hometab/troll.png"),
          ],
        ),
        Question(
          points: 5,
          text: 'Where the money\'s from',
          correctAnswerIndex: 2,
          options: [
            Option(text: 'Option 4', image: 'assets/images/hometab/goblin.png'),
            Option(text: 'Option 5', image: 'assets/images/hometab/ogre.png'),
            Option(text: 'Option 6', image: 'assets/images/hometab/troll.png'),
          ],
        ),
      ],
    ),
    Lesson(
      title: 'Level 3',
      description: 'What is crypto currency',
      icon: Icons.run_circle,
      image: "assets/images/hometab/bitcoin.png",
      backgroundColor: Colors.blue,
      questions: [
        Question(
          points: 5,
          correctAnswerIndex: 4,
          text: 'What is crypto currency',
          options: [
            Option(text: 'NFT', image: "assets/images/hometab/goblin.png"),
            Option(
                text: 'Digital money', image: "assets/images/hometab/ogre.png"),
            Option(
                text: 'Digital currency',
                image: "assets/images/hometab/troll.png"),
            Option(text: 'Currency', image: "assets/images/hometab/troll.png"),
          ],
        ),
        Question(
          points: 5,
          correctAnswerIndex: 1,
          text: 'Where the money\'s from',
          options: [
            Option(text: 'Option 4', image: 'assets/images/hometab/goblin.png'),
            Option(text: 'Option 5', image: 'assets/images/hometab/ogre.png'),
            Option(text: 'Option 6', image: 'assets/images/hometab/troll.png'),
          ],
        ),
      ],
    )
    // Add more lessons as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: lessons.length,
        itemBuilder: (BuildContext context, int index) {
          
          return buildLessonCard(context, lessons[index]);
        },
      ),
    );
  }

  Widget buildLessonCard(BuildContext context, Lesson lesson) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            fullscreenDialog: true,
            builder: (context) => QuestionScreen(lesson: lesson),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.all(16.0),
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: lesson.backgroundColor,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    lesson.icon,
                    size: 48.0,
                    color: Colors.white,
                  ),
                  SizedBox(width: 16.0),
                  Text(
                    lesson.title,
                    style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    lesson.description,
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(width: 16.0),
            Image.asset(
              lesson.image,
              height: 150.0,
              width: 150.0,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}

class QuestionScreen extends StatefulWidget {
  final Lesson lesson;

  QuestionScreen({required this.lesson});

  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
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
    Question currentQuestion = widget.lesson.questions[_currentQuestionIndex];

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
  Widget buildOptionTile(Option option,Question currentQuestion) {
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
              'Sorry!...Play later again',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold,color:Colors.red),
            ),
            Text(
              'Score: $_totalScore', // Display score in modal
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(
              width: double.infinity,
              child: FloatingActionButton(
                backgroundColor: Colors.lightBlue,
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
                },
                child: Text('CONTINUE'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
