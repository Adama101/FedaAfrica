import 'package:flutter/material.dart';
import 'components/course_node.dart';
import 'components/double_course_node.dart';

class CourseTree extends StatelessWidget {
  const CourseTree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Padding(padding: EdgeInsets.all(10)),
          CourseNode(
            'Financial literacy 101',
            image: 'assets/images/hometab/financial_literacy.png',
            crown: 4,
            percent: 1/4,
            color: Colors.redAccent,
          ),
          const Padding(padding: EdgeInsets.all(10)),
          DoubleCourseNode(
            CourseNode(
              'Saving',
              image: 'assets/images/hometab/saving.png',
              color: Colors.yellow,
              percent: 0,
              crown: 7,
            ),
            CourseNode(
              'Budgeting',
              image: 'assets/images/hometab/budgeting.png',
              color: const Color(0xFFCE82FF),
              crown: 5,
            ),
          ),
          const Padding(padding: EdgeInsets.all(10)),
          DoubleCourseNode(
            CourseNode(
              'Cryptocurrency',
              image: 'assets/images/hometab/bitcoin.png',
              color: Colors.green,
              percent: 0.0,
              crown: 4,
            ),
            CourseNode(
              'Needs vs Wants',
              image: 'assets/images/hometab/investNow.png',
              color: Colors.blue,
              crown: 10,
            ),
          ),
          const Padding(padding: EdgeInsets.all(10)),
          CourseNode(
            'Investment',
            image: 'assets/images/hometab/investNow.png',
            color: Colors.redAccent,
            crown: 8,
          ),
          const Padding(padding: EdgeInsets.all(10)),
        ],
      ),
    );
  }
}
