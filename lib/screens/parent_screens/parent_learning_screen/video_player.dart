import 'package:fedaafrica/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidgetScreen extends StatefulWidget {
  final String videoPath;

  const VideoPlayerWidgetScreen({Key? key, required this.videoPath})
      : super(key: key);

  @override
  _VideoPlayerWidgetScreenState createState() =>
      _VideoPlayerWidgetScreenState();
}

class _VideoPlayerWidgetScreenState extends State<VideoPlayerWidgetScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.videoPath)
      ..initialize().then((_) {
        setState(() {});
      })
      ..addListener(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Player'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Center(
        child: _controller.value.isInitialized
            ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              )
            : CircularProgressIndicator(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          onTapBackArrow(context);
          setState(() {
            _controller.value.isPlaying
                ? _controller.pause()
                : _controller.play();
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
    _controller.dispose();
  }

  /// Navigates back to the previous screen.
  onTapBackArrow(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.parentLearningScreen);
  }
}
