import 'package:flutter/material.dart';
import '../lesson_screen/lesson_one_screen.dart';
import '../lesson_screen/lesson_two_screen.dart';

class StageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          fit: StackFit.loose, //stack fit according to Screen need
          children: [
            // Background image
            Image.asset(
              'assets/images/stage.png', // Background image asset
              fit: BoxFit.fill,
              width: MediaQuery.of(context).size.width,
              //height: MediaQuery.of(context).size.height,
            ),
            BouncingIcon(
              icon: Icons.star,
              title: 'Level 1',
              position: Offset(330, 200),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => childVideoPlayer(
                            videoPath: 'assets/videos/kids_video.mp4',
                          )),
                );
              },
            ),
            BouncingIcon(
              icon: Icons.star,
              title: 'Level 2',
              position: Offset(150, 300),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => childVideoPlayerTwo(
                            videoPath: 'assets/videos/kids_video2.mp4',
                          )),
                );
              },
            ),
            BouncingIcon(
              icon: Icons.star,
              title: 'Level 3',
              position: Offset(20, 400),
              onPressed: () {},
            ),
            BouncingIcon(
              icon: Icons.star,
              title: 'Level 4',
              position: Offset(300, 450),
              onPressed: () {},
            ),
            BouncingIcon(
              icon: Icons.star,
              title: 'Level 5',
              position: Offset(80, 560),
              onPressed: () {},
            ),
            BouncingIcon(
              icon: Icons.star,
              title: 'Level 6',
              position: Offset(10, 680),
              onPressed: () {},
            ),
            BouncingIcon(
              icon: Icons.star,
              title: 'Level 7',
              position: Offset(170, 650),
              onPressed: () {},
            ),
            BouncingIcon(
              icon: Icons.star,
              title: 'Level 8',
              position: Offset(300, 750),
              onPressed: () {},
            ),
            BouncingIcon(
              icon: Icons.star,
              title: 'Level 9',
              position: Offset(100, 720),
              onPressed: () {},
            ),
    
            BouncingIcon(
              icon: Icons.star,
              title: 'Level 10',
              position: Offset(390, 800),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class BouncingIcon extends StatefulWidget {
  final IconData icon;
  final String title;
  final Offset position;
  final VoidCallback onPressed;

  const BouncingIcon({
    required this.icon,
    required this.title,
    required this.position,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  _BouncingIconState createState() => _BouncingIconState();
}

class _BouncingIconState extends State<BouncingIcon>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
      reverseDuration: Duration(milliseconds: 1000),
    );
    _animation = Tween<double>(begin: 0, end: 20).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    )..addListener(() {
        setState(() {}); // Redraw the widget when animation value changes
      });
    _controller.repeat(reverse: true); // Repeat the animation
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: widget.position.dy + _animation.value,
      left: widget.position.dx,
      child: GestureDetector(
        onTapDown: (_) {
          _controller.stop();
        },
        onTapUp: (_) {
          _controller.repeat(reverse: true);
          widget.onPressed();
        },
        onTapCancel: () {
          _controller.repeat(reverse: true);
        },
        child: Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                widget.icon,
                color: Colors.white,
              ),
              SizedBox(height: 4),
              Text(
                widget.title,
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
