import 'package:fedaafrica/routes/app_routes.dart';
import 'package:fedaafrica/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoThreePlayer extends StatefulWidget {
  final String videoPath;

  const VideoThreePlayer({Key? key, required this.videoPath})
      : super(key: key);

  @override
  _VideoThreePlayerState createState() =>
      _VideoThreePlayerState();
}

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

class _VideoThreePlayerState extends State<VideoThreePlayer> {
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
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.popAndPushNamed(context, AppRoutes.parentLearningScreen);
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
      bottomNavigationBar: _buildBottomBar(context),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homeScreenOneScreen;
      case BottomBarEnum.Task:
        return AppRoutes.taskScreen;
      case BottomBarEnum.Analytics:
        return "/";
      case BottomBarEnum.Learn:
        return AppRoutes.parentLearningScreen;
      default:
        return AppRoutes.homeScreenOneScreen;
    }
  }
}
