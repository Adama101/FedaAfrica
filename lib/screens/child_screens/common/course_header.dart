import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CourseHeader extends StatelessWidget {
  const CourseHeader({
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
  Widget build(BuildContext context) {
    return Container(
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
        padding: const EdgeInsets.all(10),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(
                    Icons.book, // Replace Icons.school with your desired icon
                    color: const Color(0xFFA2A2A2),
                    size: 32,
                  ),
                  Text(
                    '$streak',
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
                  Icon(
                    Icons
                        .trending_up, // You can replace with any appropriate icon
                    color: const Color(0xFFA2A2A2),
                    size: 32,
                  ),
                  Text(
                    '$streak',
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
                    Icons.heart_broken, // You can replace with any appropriate icon
                    color: const Color(0xFFA2A2A2),
                    size: 32,
                  ),
                  Text(
                    '$score',
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
                    color: const Color(0xFFA2A2A2),
                    size: 32,
                  ),
                  Text(
                    '$progress',
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
