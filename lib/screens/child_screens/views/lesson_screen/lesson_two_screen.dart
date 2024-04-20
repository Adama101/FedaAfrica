import 'package:fedaafrica/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../../../widgets/custom_elevated_button.dart';

class childVideoPlayerTwo extends StatefulWidget {
  final String videoPath;

  const childVideoPlayerTwo({Key? key, required this.videoPath})
      : super(key: key);

  @override
  _childVideoPlayerTwoState createState() => _childVideoPlayerTwoState();
}

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

class _childVideoPlayerTwoState extends State<childVideoPlayerTwo> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/videos/kids_video2.mp4')
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
            Navigator.popAndPushNamed(context, AppRoutes.childHomeScreen);
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
                  // Navigates to the Upgrade Screen
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
