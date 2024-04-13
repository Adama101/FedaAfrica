import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'model/lesson_model.dart';
import 'quizz_screen.dart';

class StartLessonScreen extends StatefulWidget {
  final LessonModel lesson;
  final VoidCallback onCompleteLesson;

  StartLessonScreen({required this.lesson, required this.onCompleteLesson});

  @override
  _StartLessonScreenState createState() => _StartLessonScreenState();
}

class _StartLessonScreenState extends State<StartLessonScreen> {
  late YoutubePlayerController _controller;
  bool _contentRead = false;

  @override
  void initState() {
    super.initState();
    // Initialize the YouTube player controller with the lesson's content URL
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(widget.lesson.urlContent)!,
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );
    // Listen for video completion
    _controller.addListener(_onVideoCompleted);
  }

  void _onVideoCompleted() {
    setState(() {
      _contentRead = true;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.lesson.title),
      ),
      body: Column(
        children: [
          Expanded(
            child: YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
              progressIndicatorColor: Colors.blueAccent,
            ),
          ),
          _contentRead
              ? ElevatedButton(
                  onPressed: () {
                    // Navigate to the quizz screen after reading the content
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QuizzScreen(
                          lesson: widget.lesson,
                          onQuizzCompleted: () {
                            // Call the callback to indicate completion of the lesson
                            widget.onCompleteLesson();
                          },
                        ),
                      ),
                    );
                  },
                  child: Text('Start Quizz'),
                )
              : SizedBox(), // Hide the button until the content is read
        ],
      ),
    );
  }
}
