import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'hex_color.dart';

class CourseHeader extends StatefulWidget {
  CourseHeader({
    required this.progress,
    required this.score,
    required this.numberLessons_started,
    required this.streak,
  });

  final String progress;
  final String score;
  final int numberLessons_started;
  final int streak;

  @override
  _CourseHeaderState createState() => _CourseHeaderState();
}

class _CourseHeaderState extends State<CourseHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xFFF9F9F9),
        border: Border(
          bottom: BorderSide(
            color: Color(0xFFE9E9E9),
            width: 3,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(
                    Icons.book, // Replace Icons.school with your desired icon
                    color: HexColor.fromHex('#F87225'),
                    size: 32,
                  ),
                  Text(
                    '${widget.streak}',
                    style: GoogleFonts.abel(
                      color: const Color(0xFF636564),
                      fontSize: 16,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Image.asset(
                    'assets/images/streak.png',
                    width: 32,
                    height: 32,
                  ),
                  Text(
                    '${widget.streak}',
                    style: GoogleFonts.abel(
                      color: const Color(0xFF636564),
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Image.asset(
                    'assets/images/heart.png',
                    width: 32,
                  ),
                  Text(
                    '${widget.score}',
                    style: GoogleFonts.abel(
                      color: const Color(0xFF636564),
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(
                    Icons
                        .trending_up, // You can replace with any appropriate icon
                    color: HexColor.fromHex('#036CFF'),
                    size: 32,
                  ),
                  Text(
                    '${widget.progress}',
                    style: GoogleFonts.abel(
                      color: const Color(0xFF636564),
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
