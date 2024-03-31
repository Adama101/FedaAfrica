import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidgetScreen extends StatefulWidget {
  const VideoPlayerWidgetScreen({Key? key}) : super(key: key);

  @override
  _VideoPlayerWidgetScreenState createState() =>
      _VideoPlayerWidgetScreenState();
}

class _VideoPlayerWidgetScreenState extends State<VideoPlayerWidgetScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/videos/portfolio.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Demo'),
      ),
      body: Center(
        child: _controller.value.isInitialized
            ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              )
            : CircularProgressIndicator(), // Show loading indicator while video is being initialized
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _controller.value.isPlaying ? _controller.pause() : _controller.play();
          });
        },
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose(); // Dispose the video controller when the widget is disposed
  }
}
