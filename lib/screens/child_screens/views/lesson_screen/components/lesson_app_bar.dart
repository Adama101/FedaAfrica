import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import '../../../common/hex_color.dart';

class LessonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double percent;
  const LessonAppBar({required this.percent, Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(75);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 80,
      shadowColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      title: progressBar(context, percent),
      centerTitle: true,
      leading: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: IconButton(
          icon: const Icon(
            Icons.close,
            color: Color(0xFFAFAFAF),
            size: 35,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }

  progressBar(BuildContext context, double percent) {
    return LinearPercentIndicator(
      width: MediaQuery.of(context).size.width - 100,
      animation: true,
      lineHeight: 17.0,
      animationDuration: 100,
      percent: percent,
      barRadius: const Radius.circular(10),
      backgroundColor: const Color(0xFFE5E5E5),
      progressColor: HexColor.fromHex('#036CFF'),
    );
  }
}
