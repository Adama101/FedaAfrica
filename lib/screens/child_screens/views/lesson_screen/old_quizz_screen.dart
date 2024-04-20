// import 'package:audioplayers/audioplayers.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:percent_indicator/linear_percent_indicator.dart';
// import '../../common/button.dart';
// import '../../common/hex_color.dart';
// import '../../model/lesson_model.dart';
// import '../../model/level_model.dart';
// import '../../model/option_model.dart';
// import '../../model/question_model.dart';
// import 'lessons_catalog_screen.dart';

// class OldQuizScreen extends StatefulWidget {
//   final LessonModel lesson;
//   final VoidCallback onQuizzCompleted;
//   final LevelModel level;
//   OldQuizScreen(
//       {required this.lesson,
//       required this.onQuizzCompleted,
//       required this.level});
//   @override
//   _QuestionScreenState createState() => _QuestionScreenState();
// }

// class _QuestionScreenState extends State<OldQuizScreen> {
//   int _currentQuestionIndex = 0;
//   bool _isCheckButtonActive = false;
//   int _totalScore = 0; // Add this variable to track button activation
//   // Declare an instance of AudioCache
//   final player = AudioPlayer();
//   // Define the audio file path
//   final String _correctSoundPath = "audios/correct.wav";
//   final String _incorrecSoundPath = "audios/incorrect.wav";
//   @override
//   Widget build(BuildContext context) {
//     QuestionModel currentQuestion =
//         widget.lesson.questions[_currentQuestionIndex];

//     return Scaffold(
//       body: SafeArea(
//         top: true,
//         bottom: false,
//         child: Container(
//           color: Colors.white,
//           padding: EdgeInsets.all(8.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   IconButton(
//                     icon: Icon(Icons.close),
//                     // Your closing button icon
//                     onPressed: () {
//                       Navigator.pop(context);
//                     },
//                   ),
//                   LinearPercentIndicator(
//                     width: MediaQuery.of(context).size.width - 100,
//                     animation: true,
//                     lineHeight: 17.0,
//                     animationDuration: 100,
//                     percent: (_currentQuestionIndex + 1) /
//                         widget.lesson.questions.length,
//                     barRadius: const Radius.circular(10),
//                     backgroundColor: const Color(0xFFE5E5E5),
//                     progressColor: HexColor.fromHex('#036CFF'),
//                   ) /* LinearProgressIndicator(
//                         borderRadius: BorderRadius.,
//                         color: Colors.blue,
//                         minHeight: 20,
//                         backgroundColor: Colors.grey,
//                         value: (_currentQuestionIndex + 1) /
//                             widget.lesson.questions.length, // Your progress value
//                       ) */
//                   ,
//                   /* Row(
//                     children: [
//                       Icon(
//                         Icons.favorite,
//                         color: Colors.red,
//                       ),
//                       Text('$_totalScore'),
//                     ],
//                   ), */
//                 ],
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text(
//                   widget.lesson.title,
//                   style: GoogleFonts.abel(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ), // Your title
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text(
//                   currentQuestion.text,
//                   style: GoogleFonts.abel(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ), // Your question
//               ),
//               Expanded(
//                 child: GridView.builder(
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2,
//                     crossAxisSpacing: 8.0,
//                     mainAxisSpacing: 8.0,
//                   ),
//                   itemCount: currentQuestion.options.length, // Number of cards
//                   itemBuilder: (BuildContext context, int index) {
//                     return buildOptionTile(
//                         currentQuestion.options[index], currentQuestion);
//                   },
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: SizedBox(
//                   width: double.infinity,
//                   child: FloatingActionButton(
//                     backgroundColor: _isCheckButtonActive
//                         ? Colors.blueAccent
//                         : Colors
//                             .grey, // Set button color based on activation status
//                     onPressed: _isCheckButtonActive
//                         ? () {
//                             // Check answer and calculate score
//                             int selectedOptionIndex = currentQuestion.options
//                                 .indexWhere((option) => option.isSelected);
//                             if (selectedOptionIndex + 1 ==
//                                 currentQuestion.correctAnswerIndex) {
//                               _totalScore += currentQuestion.points;
//                             }
//                             setState(() {
//                               showModalBottomSheet(
//                                 context: context,
//                                 backgroundColor: Colors.transparent,
//                                 builder: (context) => showConvenientBotoomSheet(
//                                     context,
//                                     selectedOptionIndex,
//                                     currentQuestion.correctAnswerIndex),
//                               );
//                             });
//                           }
//                         : null, // Disable button if not active
//                     child: Text(
//                       'CHECK',
//                       style: TextStyle(
//                         fontSize: 18.0,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget showConvenientBotoomSheet(
//       BuildContext bc, int selectedOptionIndex, int correctAnswerIndex) {
//     if (selectedOptionIndex + 1 == correctAnswerIndex) {
//       return buildCongratulationsModal(bc);
//     } else {
//       return buildIncorrectOptionModal(bc);
//     }
//   }

//   Widget buildOptionTile(OptionModel option, QuestionModel currentQuestion) {
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           // Deselect all options
//           for (var o in currentQuestion.options) {
//             o.isSelected = false;
//           }
//           // Select the tapped option
//           option.isSelected = true;
//           //option.isSelected = !option.isSelected;
//           _updateCheckButtonActivation(); // Update button activation status
//         });
//       },
//       child: Card(
//         elevation: option.isSelected ? 16.0 : 32.0,
//         shadowColor: option.isSelected ? Colors.blue : Colors.transparent,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(16),
//           side: option.isSelected
//               ? BorderSide(color: Colors.blue, width: 4.0)
//               : BorderSide(
//                   color: Colors.transparent,
//                   width: 4.0,
//                   style: BorderStyle.none),
//           //side:BorderSide(color: Colors.transparent,width: 5.0,strokeAlign: 10.0),
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Expanded(
//               child: Image.asset(
//                 option.image,
//                 fit: BoxFit.cover,
//               ),
//             ),
//             SizedBox(height: 8),
//             Padding(
//               padding: EdgeInsets.all(16.0),
//               child: Text(
//                 option.text,
//                 textAlign: TextAlign.center,
//                 style: GoogleFonts.abel(
//                   fontSize: 16,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   void _updateCheckButtonActivation() {
//     // Check if at least one option is selected
//     _isCheckButtonActive = widget
//         .lesson.questions[_currentQuestionIndex].options
//         .any((option) => option.isSelected);
//   }

//   void playSound() async {
//     player.setVolume(80.0);
//     await player.play(AssetSource(_correctSoundPath));
//   }

//   void playIncorrectSound() async {
//     player.setVolume(80.0);
//     await player.play(AssetSource(_incorrecSoundPath));
//   }

//   Widget buildCongratulationsModal(BuildContext context) {
//     playSound();
//     widget.lesson.completed = true;
//     return Container(
//       height: 200.0,
//       decoration: BoxDecoration(
//         color: Colors.white, // Add background color if needed
//         borderRadius: BorderRadius.only(
//           topLeft: Radius.circular(0),
//           topRight: Radius.circular(0),
//         ),
//       ),
//       child: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'Congratulations!',
//               style: TextStyle(
//                   fontSize: 24.0,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.green),
//             ),
//             Text(
//               'Score: $_totalScore', // Display score in modal
//               style: TextStyle(fontSize: 20.0),
//             ),
//             Padding(
//               padding:
//                   const EdgeInsets.all(8.0), // Add padding around FancyButton
//               child: Center(
//                 child: SizedBox(
//                   width: double.infinity,
//                   child: FancyButton(
//                     child: Text(
//                       "CONTINUE",
//                       textAlign: TextAlign.center, // Center the text
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 18,
//                         fontFamily: 'Gameplay',
//                       ),
//                     ),
//                     size: 35,
//                     color: Colors.blue,
//                     onPressed: () {
//                       Navigator.pop(context); // Close the modal
//                       setState(() {
//                         _currentQuestionIndex++;
//                         if (_currentQuestionIndex ==
//                             widget.lesson.questions.length) {
//                           LessonModel? nextLesson= getNextLesson(widget.level,widget.lesson);
//                           // Handle end of questions by navigating to a new lesson screen
//                           Navigator.pushReplacement(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => StartLessonScreen(
//                                 lesson: nextLesson!,
//                                 current_level: widget.level,
//                               ), // Replace NewLessonScreen with your actual new lesson screen
//                             ),
//                           );
//                         }
//                         _isCheckButtonActive = false;
//                       });
//                     },
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//   LessonModel? getNextLesson(LevelModel currentLevel, LessonModel currentLesson) {
//   // Find the index of the current lesson within the level's list of lessons
//   int currentLessonIndex = currentLevel.level_lessons.indexOf(currentLesson);

//   // Check if there are more lessons available after the current lesson
//   if (currentLessonIndex < currentLevel.level_lessons.length - 1) {
//     // If yes, return the next lesson
//     return currentLevel.level_lessons[currentLessonIndex + 1];
//   }else {
//       // If no more levels, return null to indicate there are no more lessons
//       return null;
//     } /* else {
//     // If no more lessons in the current level
//     // Check if there are more levels available
//     int currentLevelIndex = levels.indexOf(currentLevel);
//     if (currentLevelIndex < levels.length - 1) {
//       // If yes, return the first lesson of the next level
//       return levels[currentLevelIndex + 1].lessons.first;
//     } else {
//       // If no more levels, return null to indicate there are no more lessons
//       return null;
//     }
//   } */
// }
//   Widget buildIncorrectOptionModal(BuildContext context) {
//     playIncorrectSound();
//     widget.lesson.completed = true;

//     return Container(
//       height: 200.0,
//       decoration: BoxDecoration(
//         color: Colors.white, // Add background color if needed,
//         borderRadius: BorderRadius.only(
//           topLeft: Radius.circular(0),
//           topRight: Radius.circular(0),
//         ),
//       ),
//       child: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'Sorry!...try again after',
//               style: TextStyle(
//                   fontSize: 24.0,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.red),
//             ),
//             Text(
//               'Score: $_totalScore', // Display score in modal
//               style: TextStyle(fontSize: 20.0),
//             ),
//             Padding(
//               padding:
//                   const EdgeInsets.all(8.0), // Add padding around FancyButton
//               child: Center(
//                 child: SizedBox(
//                   width: double.infinity,
//                   child: FancyButton(
//                     size: 35,
//                     color: Colors.red,
//                     onPressed: () {
//                       Navigator.pop(context); // Close the modal
//                       setState(() {
//                         _currentQuestionIndex++;
//                         if (_currentQuestionIndex ==
//                             widget.lesson.questions.length) {
//                           LessonModel? nextLesson= getNextLesson(widget.level,widget.lesson);
//                           // Handle end of questions by navigating to a new lesson screen
//                           Navigator.pushReplacement(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => StartLessonScreen(
//                                 lesson: nextLesson!,
//                                 current_level: widget.level,
//                               ), // Replace NewLessonScreen with your actual new lesson screen
//                             ),
//                           );
//                         }
//                         _isCheckButtonActive = false;
//                       });
//                     },
//                     child: Text(
//                       "CONTINUE",
//                       textAlign: TextAlign.center, // Center the text
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 18,
//                         fontFamily: 'Gameplay',
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
