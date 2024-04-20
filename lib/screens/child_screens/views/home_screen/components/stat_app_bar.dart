import 'package:fedaafrica/core/app_export.dart';
import 'package:flutter/material.dart';
import '../../../common/course_header.dart';

class StatAppBar extends StatelessWidget implements PreferredSizeWidget {
  const StatAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(65);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CourseHeader(
        score: '2',
        numberLessons_started: 1,
        progress: "2%",
        streak: 1,
      ),
    );
    /* AppBar(
      toolbarHeight: 120,
      backgroundColor: Colors.white,
      elevation: 1.5,
      leading: flag(),
      title: Row(
        children: [
          const Padding(padding: EdgeInsets.all(20)),
          crown(137),
          const Padding(padding: EdgeInsets.all(20)),
          streak(31),
        ],
      ),
      actions: [
        heart(),
      ],
    ) */
  }

  Widget heart() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: CustomImageView(
            imagePath: ImageConstant.financialImage,
            height: 10,
            width: 10,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: CustomImageView(
            imagePath: ImageConstant.moneyImage,
            height: 10,
            width: 10,
          ),
        ),
      ],
    );
  }

  Widget streak(int n) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.MoneyImage,
          height: 10,
          width: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: CustomImageView(
            imagePath: ImageConstant.streakImage,
            height: 10,
            width: 10,
          ),
        ),
        Text(
          '$n',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFFFF9600),
          ),
        )
      ],
    );
  }

  Widget crown(int n) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: CustomImageView(
            imagePath: ImageConstant.MoneyImage,
            height: 10,
            width: 10,
          ),
        ),
        Text(
          '$n',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFFFFC800),
          ),
        )
      ],
    );
  }

  Widget flag() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 15, top: 18, bottom: 18),
        child: CustomImageView(
          imagePath: ImageConstant.koreaFlagImage,
          height: 10,
          width: 10,
        ),
      ),
      // child: null /* add child content here */,
    );
  }
}
