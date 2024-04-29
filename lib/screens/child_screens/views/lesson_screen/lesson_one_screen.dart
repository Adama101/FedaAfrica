import 'package:fedaafrica/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import '../../../../widgets/custom_elevated_button.dart';

class childVideoPlayer extends StatefulWidget {
  final String videoPath;

  const childVideoPlayer({Key? key, required this.videoPath}) : super(key: key);

  @override
  _childVideoPlayerState createState() => _childVideoPlayerState();
}

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

class _childVideoPlayerState extends State<childVideoPlayer> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/videos/kids_video.mp4')
      ..initialize().then((_) {
        setState(() {});
      })
      ..addListener(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.popAndPushNamed(context, AppRoutes.stageOneScreen);
          },
        ),
      ),
      body: Stack(
        children: [
          Center(
            child: _controller.value.isInitialized
                ? AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  )
                : CircularProgressIndicator(),
          ),
          Positioned(
            bottom: 20, 
            left: 0,
            right: 0,
            child: Center(
              child: CustomElevatedButton(
                width: 200,
                text: 'Play Quiz',
                onPressed: () {
                  // Navigates to the Child Lesson Two Screen
                  Navigator.pushNamed(context, AppRoutes.quizScreen);
                },
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
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

}
