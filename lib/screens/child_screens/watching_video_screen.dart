import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'model/lesson_model.dart';
import 'quizz_screen.dart';

class WatchingVideoScreen extends StatefulWidget {
  final LessonModel lesson;

  WatchingVideoScreen({required this.lesson});

  @override
  _WatchingVideoScreenState createState() => _WatchingVideoScreenState();
}

class _WatchingVideoScreenState extends State<WatchingVideoScreen> {
  late YoutubePlayerController _controller;
  int currentLessonIndex = 0;
  int currentQuestionIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: widget.lesson.urlContent,
      flags: YoutubePlayerFlags(
        autoPlay: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.lesson.title}'),
      ),
      body: Center(
        child: YoutubePlayer(
          controller: _controller,
          showVideoProgressIndicator: true,
          progressIndicatorColor: Colors.blueAccent,
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          _controller.pause(); // Pause video before navigating to quiz
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => QuizzScreen(
                lesson: widget.lesson,
                onQuizzCompleted: () {
                  // Update the state to navigate to the next lesson
                  
                },
              ),
            ),
          );
        },
        label: Text('Let\'s play a quiz'),
        icon: Icon(Icons.arrow_forward),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
