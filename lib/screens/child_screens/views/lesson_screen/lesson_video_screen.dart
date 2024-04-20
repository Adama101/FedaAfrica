// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';
// import '../../common/hex_color.dart';
// import '../../model/lesson_model.dart';
// import '../../model/level_model.dart';
// import 'old_quizz_screen.dart';

// class LessonVideoScreen extends StatefulWidget {
//   final LessonModel lesson;
//   final LevelModel level;
//   LessonVideoScreen({required this.lesson,required this.level});

//   @override
//   _LessonVideoScreenState createState() => _LessonVideoScreenState();
// }

// class _LessonVideoScreenState extends State<LessonVideoScreen> {
//   late YoutubePlayerController _controller;
//   bool isVideoPlaying = false; // Track if the video is playing

//   @override
//   void initState() {
//     super.initState();
//     _controller = YoutubePlayerController(
//       initialVideoId: widget.lesson.urlContent,
//       flags: YoutubePlayerFlags(
//         autoPlay: true,
//       ),
//     )..addListener(_videoListener);
//   }

//   void _videoListener() {
//     if (_controller.value.isPlaying != isVideoPlaying) {
//       setState(() {
//         isVideoPlaying = _controller.value.isPlaying;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('${widget.lesson.title}'),
//       ),
//       body: Center(
//         child: YoutubePlayer(
//           controller: _controller,
//           showVideoProgressIndicator: true,
//           progressIndicatorColor: Colors.blueAccent,
//         ),
//       ),
//       floatingActionButton: FloatingActionButton.extended(
//         backgroundColor: HexColor.fromHex('#036CFF'),
//         onPressed: isVideoPlaying
//             ? () {
//                 _controller.pause(); // Pause video before navigating to quiz
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => OldQuizScreen(
//                       lesson: widget.lesson,
//                       level: widget.level,
//                       onQuizzCompleted: (){
//                           print("Quizz done");
//                       },
//                     ),
//                   ),
//                 );
//               }
//             : null, // Disable button if video is not playing
//         label: Text('Let\'s play a quiz',  style: GoogleFonts.abel(
//           fontSize: 20,
//           fontWeight: FontWeight.bold,
//           color:Colors.white
//         )),
//         icon: Icon(Icons.arrow_forward),
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     _controller.removeListener(_videoListener);
//     _controller.dispose();
//     super.dispose();
//   }
// }

