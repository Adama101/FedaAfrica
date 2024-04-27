import 'package:fedaafrica/core/app_export.dart';
import 'package:flutter/material.dart';

class StageTwoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          fit: StackFit.loose, //stack fit according to Screen need
          children: [
            // Background image
            Image.asset(
              'assets/images/stage_2.png', // Background image asset
              fit: BoxFit.fill,
            ),
            BouncingIcon(
              icon: Icons.star,
              title: 'Level 6',
              position: Offset(70, 150),
              onPressed: () {},
            ),
            BouncingIcon(
              icon: Icons.star,
              title: 'Level 7',
              position: Offset(200, 300),
              onPressed: () {},
            ),
            BouncingIcon(
              icon: Icons.star,
              title: 'Level 8',
              position: Offset(70, 450),
              onPressed: () {},
            ),
            BouncingIcon(
              icon: Icons.star,
              title: 'Level 9',
              position: Offset(300, 500),
              onPressed: () {},
            ),
            BouncingIcon(
              icon: Icons.star,
              title: 'Level 10',
              position: Offset(130, 660),
              onPressed: () {},
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.white,
            onPressed: () {
              // Navigate backward action
              Navigator.popAndPushNamed(context, AppRoutes.stageOneScreen);
            },
            child: Icon(Icons.arrow_back_ios_new_outlined),
          ),
          FloatingActionButton(
            backgroundColor: Colors.white,
            onPressed: () {
              // Navigate forward action
              Navigator.pushNamed(context, AppRoutes.stageThreeScreen);
            },
            child: Icon(Icons.arrow_forward_ios_outlined),
          ),
        ],
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
